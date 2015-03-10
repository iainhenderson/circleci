<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * ExpressionEngine - by EllisLab
 *
 * @package		ExpressionEngine
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2003 - 2011, EllisLab, Inc.
 * @license		http://expressionengine.com/user_guide/license.html
 * @link		http://expressionengine.com
 * @since		Version 2.0
 * @filesource
 */

// ------------------------------------------------------------------------

/**
 * GitHub Addon Installer Module Control Panel File
 *
 * @package		ExpressionEngine
 * @subpackage	Addons
 * @category	Module
 * @author		Rob Sanchez
 * @link		http://github.com/rsanchez
 */

use eecli\GithubAddonInstaller\Application;
use eecli\GithubAddonInstaller\Api;
use eecli\GithubAddonInstaller\Repo;
use eecli\GithubAddonInstaller\Installer\Installer;

/**
 * @property CI_Controller $EE
 */
class Github_addon_installer_mcp
{
	private $base;

	private $manifest;

	private $temp_path;

	/**
	 * Constructor
	 */
	public function __construct()
	{
        if (ee()->config->item('github_addon_installer_disabled'))
        {
            show_error(lang('unauthorized_access'));
        }

		$this->base = BASE.AMP.'C=addons_modules'.AMP.'M=show_module_cp'.AMP.'module=github_addon_installer';

		// no autoloader
		if (version_compare(APP_VER, '2.9', '<'))
		{
			require_once PATH_THIRD.'github_addon_installer/src/Application.php';
			require_once PATH_THIRD.'github_addon_installer/src/Api.php';
			require_once PATH_THIRD.'github_addon_installer/src/Repo.php';
			require_once PATH_THIRD.'github_addon_installer/src/Installer/Installer.php';
			require_once PATH_THIRD.'github_addon_installer/src/Installer/AbstractZipInstaller.php';
			require_once PATH_THIRD.'github_addon_installer/src/Installer/FileInstaller.php';
			require_once PATH_THIRD.'github_addon_installer/src/Installer/SystemUnzipInstaller.php';
			require_once PATH_THIRD.'github_addon_installer/src/Installer/ZipArchiveInstaller.php';
		}
		else
		{
			if ( ! class_exists('Autoloader')) {
				require_once APPPATH.'../EllisLab/ExpressionEngine/Core/Autoloader.php';
			}

			Autoloader::getInstance()->addPrefix('eecli\\GithubAddonInstaller', PATH_THIRD.'github_addon_installer/src/');
		}

		$temp_path = APPPATH.'cache/github_addon_installer/';

		if (! is_dir($temp_path)) {
			mkdir($temp_path);
		}

		$this->application = new Application(PATH_THIRD, PATH_THIRD_THEMES, $temp_path);

		$this->manifest = $this->application->getManifest();
	}

	public function index()
	{
		ee()->view->cp_page_title = ee()->lang->line('github_addon_installer_module_name');

		ee()->load->library('addons');

		$vars = array();
		$vars['addons'] = array();

		foreach ($this->manifest as $addon => $params)
		{
			$name = (isset($params['name'])) ? $params['name'] : $addon;
			$description = (isset($params['description'])) ? br().$params['description'] : '';
			//$status = (in_array($addon, $current_addons)) ? lang('addon_installed') : lang('addon_not_installed');
			$status = (ee()->addons->is_package($addon)) ? lang('addon_installed') : lang('addon_not_installed');

			//$install = (in_array($addon, $current_addons)) ? lang('addon_install') : lang('addon_reinstall');

			$url = 'https://github.com/'.$params['user'].'/'.$params['repo'];

			if (isset($params['branch']))
			{
				$url .= '/tree/'.$params['branch'];
			}

			$branch = isset($params['branch']) ? $params['branch'] : 'master';

			$vars['addons'][] = array(
				'name' => $name,//.$description,
				'github_url' => anchor($url, $url, 'rel="external"'),
				'branch' => form_input("", $branch, 'class="branch '.$addon.'-branch"'),
				'author' => $params['user'],
				'stars' => empty($params['stars']) ? '0' : (string) $params['stars'],
				'status' => $status,
				'install' => anchor($this->base.AMP.'method=install'.AMP.'addon='.$addon, lang('addon_install'), 'data-addon="'.$addon.'"')
			);
		}

		ee()->load->library('javascript');

		ee()->javascript->output('
			$("table#addons").tablesorter({
				headers: {1: {sorter: false}, 6: {sorter: false}},
				widgets: ["zebra"]
			});
			$("table#addons tr td.addon_install a").click(function(){
				var a = $(this);
				var tds = a.parents("tr").children("td");
				var statusTd = a.parents("td").siblings("td.addon_status");
				var originalColor = tds.css("backgroundColor");
				var originalText = a.text();
				tds.animate({backgroundColor:"#d0d0d0"});
				a.html("'.lang('addon_installing').'");
				$.get(
					$(this).attr("href"),
					{branch: $("."+$(this).data("addon")+"-branch").val()},
					function(data){
						tds.animate({backgroundColor:originalColor});
						a.html(originalText);
						if (data.message_success) {
							if (data.redirect) {
								window.location.href = data.redirect;
								return;
							}
							statusTd.html("'.lang('addon_installed').'");
							$.ee_notice(data.message_success, {"type":"success"});
						} else {
							$.ee_notice(data.message_failure, {"type":"error"});
							//td.animate({backgroundColor:"red"});
						}
					},
					"json"
				);
				return false;
			});
			$("select#addonFilter").change(function(){
				var filter = $(this).val();
				$("#addonKeyword").hide();
				$("table#addons tbody tr").show();
				if (filter == "") {
					$("table#addons tbody tr").show();
				} else if (filter == "keyword") {
					$("#addonKeyword").val("").show().focus();
				} else {
					$("td."+$(this.options[this.selectedIndex]).parents("optgroup").data("filter")).filter(function(){
						return $(this).text() != filter;
					}).parents("tr").hide();
				}
			});
			//add all values from the table to filter
			$("select#addonFilter optgroup").each(function(index, element){
				var values = [];
				$("td."+$(this).data("filter")).each(function(){
					if ($.inArray($(this).text(), values) === -1) {
						values.push($(this).text());
					}
				});
				//case insensitive sort
				values.sort(function(a, b){
					a = a.toLowerCase();
					b = b.toLowerCase();
					if (a > b) {
						return 1;
					}
					if (a < b) {
						return -1;
					}
					return 0;
				});
				for (i in values) {
					$(element).append($("<option>", {value: values[i], text: values[i]}));
				};
			});
			//case insensitive :contains
			$.extend($.expr[":"], {
				containsi: function(el, i, match, array) {
					return (el.textContent || el.innerText || "").toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
				}
			});
			$("input#addonKeyword").keyup(function(){
				if (this.value == "") {
					$("table#addons tbody tr").show();
				} else {
					$("table#addons tbody tr").hide().find("td:containsi(\'"+this.value.toLowerCase()+"\')").parents("tr").show();
				}
			}).trigger("focus");
		');

		ee()->load->helper('array');

		return ee()->load->view('index', $vars, TRUE);
	}

	public function validate_manifest()
	{
		$count = count($this->manifest);

		ee()->load->library('javascript');

		ee()->javascript->output('(function(addons) {
			var index = 0,
				$username = $("#github-username"),
				$password = $("#github-password"),
				$count = $("#manifest-count"),
				$button = $("#validate-manifest"),
				$loading = $("#manifest-loading-message"),
				base = '.json_encode(str_replace('&amp;', '&', $this->base)).',
				$messages = $("#manifest-validation-messages");

			function validate() {
				var addon;

				if (addons[index] === undefined) {
					return;
				}

				addon = addons[index];

				$loading.html("Checking "+addon+"...");

				$.get(
					base,
					{
						addon: addon,
						method: "validate",
						username: $username.val(),
						password: $password.val()
					},
					function(data) {
						if ( ! data.message_success) {
							$messages.append("<p class=\"notice\">"+data.message_failure+"</p>");
						}

						index++;

						$count.html(index);

						$loading.html("");

						validate();
					},
					"json"
				);
			}

			$button.on("click", function(event) {
				event.preventDefault();

				$button.prop("disabled", true);

				validate();
			});
		})('.json_encode(array_keys($this->manifest)).');');

		return '<p><input type="text" placeholder="Github Username" id="github-username" /><br /><br /><input type="password" placeholder="Github Password" id="github-password" /><br /><br /><input class="submit" type="submit" id="validate-manifest" value="Validate Manifest" /></p><div id="manifest-loading-message"></div><div id="manifest-validation-messages"></div><p><span id="manifest-count">0</span> / '.$count.' checked.</p>';
	}

	public function validate()
	{
		$addon = ee()->input->get_post('addon');
		$username = ee()->input->get_post('username');
		$password = ee()->input->get_post('password');

		if ($username && $password)
		{
			$this->application->getApi()->setBasicAuth($username, $password);
		}

		if ( ! isset($this->manifest[$addon]))
		{
			ee()->session->set_flashdata('message_success', FALSE);

			ee()->session->set_flashdata('message_failure', sprintf(lang('invalid_addon'), $addon));
		}
		else
		{
			$branch = isset($this->manifest[$addon]['branch']) ? $this->manifest[$addon]['branch'] : 'master';

			try
			{
				$repo = $this->application->getRepo($addon, $branch);

				ee()->session->set_flashdata('message_success', TRUE);

				ee()->session->set_flashdata('message_failure', '');
			}
			catch(Exception $e)
			{
				ee()->session->set_flashdata('message_success', FALSE);

				ee()->session->set_flashdata('message_failure', $e->getMessage());
			}
		}

		ee()->functions->redirect($this->base);
	}

	public function install()
	{
		$addon = ee()->input->get_post('addon');

		if ( ! isset($this->manifest[$addon]))
		{
			ee()->session->set_flashdata('message_success', FALSE);

			ee()->session->set_flashdata('message_failure', sprintf(lang('invalid_addon'), $addon));
		}
		else
		{
			$params = $this->manifest[$addon];

			$params['name'] = $addon;

			$branch = ee()->input->get('branch') ?: 'master';

			ee()->session->set_flashdata('addon', $addon);

			$error = '';
			$success = FALSE;

			try
			{
				$this->application->installAddon($addon, $branch);

				$success = sprintf(lang('successfully_installed'), $addon);

			}
			catch(Exception $e)
			{
				$error = $e->getMessage();
			}

			ee()->session->set_flashdata('message_success', $success);

			ee()->session->set_flashdata('message_failure', '<p>'.$error.'</p>');

			//reset the addons lib if already loaded, so it knows about our new install
			unset(ee()->addons);

			ee()->load->library('addons');

			if ( ! isset(ee()->addons))
			{
				ee()->addons = new EE_Addons;
			}

			$redirect = FALSE;//str_replace('&amp;', '&', $this->base).'&installed='.$addon;

			//we're checking to see if this addon is more than just a plugin
			//if so, we'll redirect to the package installer page
			if (ee()->addons->is_package($addon))
			{
				$components = ee()->addons->_packages[$addon];

				$needs_package_installer = array_intersect(array('module', 'accessory', 'extension'), array_keys($components));
				$has_fieldtype = array_key_exists('fieldtype', $components);

				if ($needs_package_installer)
				{
					//go to the package installer
					//a double-url encoded return param
					$redirect = str_replace('&amp;', '&', BASE).'&C=addons&M=package_settings&package='.$addon.'&return=addons_modules%2526M%253Dshow_module_cp%2526module%253Dgithub_addon_installer';
				}
				elseif ($has_fieldtype)
				{
					//go to the fieldtype installer
					//a double-url encoded return param
					$redirect = str_replace('&amp;', '&', BASE).'&C=addons_fieldtypes&return=addons_modules%2526M%253Dshow_module_cp%2526module%253Dgithub_addon_installer';
				}
			}

			ee()->session->set_flashdata('redirect', $redirect);
		}

		ee()->functions->redirect(empty($redirect) ? $this->base : $redirect);
	}
}
/* End of file mcp.github_addon_installer.php */
/* Location: /system/expressionengine/third_party/github_addon_installer/mcp.github_addon_installer.php */