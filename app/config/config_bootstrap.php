<?php

/**
 * Config Bootstrap
 */

// Path to the install directory
$basePath = realpath(__DIR__ . "/../../");

// Path to the public directory
$webPath = realpath(__DIR__ . "/../../web/");

// Path to the app directory
$appPath = realpath(__DIR__ . "/../");

// Install specific parameters
$parameters = json_decode(file_get_contents(__DIR__ . '/parameters.json'), true);

$isDebug = (isset($_GET['debug'])) ? (bool)$_GET['debug'] : $parameters['environment']['debug'];
$isCli = (PHP_SAPI == 'cli');
$isAjax = (isset($_SERVER['HTTP_X_REQUESTED_WITH']) && 'XMLHttpRequest' === $_SERVER['HTTP_X_REQUESTED_WITH']);

$srcOrProd = ($isDebug) ? "src" : "prod";

if (false === defined('ENV')) {
    define('ENV', $parameters['environment']['env']);
    define('ENV_FULL', $parameters['environment']['env']);
    define('ENV_DEBUG', $isDebug);
}

if (!empty($_SERVER['HTTP_X_FORWARDED_PROTO'])) {
    $scheme = $_SERVER['HTTP_X_FORWARDED_PROTO'];
} else {
    $scheme = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') ? 'https' : 'http';
}

$host = $_SERVER['HTTP_HOST'];
$siteUrl = sprintf("%s://%s%s", $scheme, $host, $parameters["environment"]["baseUrl"]);

if (true === isset($config)) {

    $defaultGlobalVars = array(

        'gv_debug' => ENV_DEBUG,

        'gv_sitemap_pagination_limit' => 5,

        // Campaign Monitor
        'gv_cm_subscriber_list_key' => '',

        // SegmentIo Analytics
        'gv_segmentio_write_key' => '',

        // Chartbeat
        'gv_chartbeat_domain' => '',

        // Google Analytics
        'gv_google_analytics_key' => '',
        'gv_google_tag_manager_key' => '',

        // Mixpanel Analytics
        'gv_mixpanel_key' => '',

        // Chartbeat Analytics
        'gv_tracking_chart_beat_key' => '',

        // Disqus
        'gv_disqus_short_name' => '',
        'gv_disqus_api_key' => '',

        // Facebook
        'gv_facebook_app_id' => '',
        'gv_facebook_admins' => '',

        // Twitter
        'gv_twitter_account' => '',

        // Tag shortcuts
        'gv_param_disable_default' => 'disable="categories|pagination|member_data"',
        'gv_param_disable_all' => 'disable="categories|custom_fields|member_data|pagination"',

        // Image Manipulations
        'gv_ce_img_conf:member:photo' => 'width="512" height="512" quality="85" crop="yes" save_type="jpg" filename_prefix="member_photo-" filename_suffix=".{mf_last_updated}"',

        'gv_snow_category_id' => '1',
        'gv_skate_category_id' => '2',
        'gv_surf_category_id' => '3',
        'gv_topics_category_group_id' => '10',
        'gv_products_category_group_id' => '8',
        'gv_brands_category_group_id' => '1',
        'gv_content_type_collections' => '2|3|5|6|7|8'
    );

    $routes = include(__DIR__ . "/routes.php");

    $uploadPreferences = array();
    $uploadFolders = array(
        // Standard Content
        1 => 'Homepage',
        2 => 'Page',
        3 => 'Topic',
        // Channel Content
        4 => 'Article',
        5 => 'Brand',
        6 => 'Place',
        7 => 'Product',
        8 => 'Promotion',
        9 => 'Tutorial',
        10 => 'Advertisement',
        11 => 'Feature Carousel',
    );

    foreach($uploadFolders as $id => $folderName) {
        $uploadPreferences[$id] = array(
            'name' => $folderName . ' Images',
            'server_path' => $basePath . '/web/uploads/content/' . str_replace(' ', '-', strtolower($folderName)) . '/',
            'url' => $siteUrl . '/uploads/content/' . str_replace(' ', '-', strtolower($folderName)) . '/',
            'allowed_types' => 'img'
        );
    }

    $defaultConfig = array(

        'upload_preferences' => $uploadPreferences,

        // Disable built-in routing in favour of rsanchez/resource_router
        // See: https://github.com/rsanchez/resource_router
        'enable_template_routes' => 'n',
        'resource_router' => $routes,

        // CE Cache
        'ce_cache_off' => ($isDebug ? "yes" : ""),
        // 'ce_cache_off' => "", // commenting out the above line and using this for local cache testing
        'ce_cache_drivers' => 'file|apc',
        'ce_cache_url_prefix' => $scheme . ($isAjax ? '-ajax' : '-norm'),
        'ce_cache_id' => 'page' . ($isAjax ? '-ajax' : ''),
        'ce_cache_trim' => 'yes',
        'ce_cache_static_path' => $appPath . '/public/static',
        'ce_cache_static_enabled' => 'yes',
        'ce_cache_static_flat' => 'yes',

        // You probably don't need to change anything after here

        'base_url' => $siteUrl,
        'cp_url' => $siteUrl . '/admin.php',

        // Hidden Config Variables
        // http://ellislab.com/expressionengine/user-guide/general/hidden_configuration_variables.html#smtp-username
        'hidden_template_indicator' => '.',
        'newrelic_app_name' => '',
        'proxy_ips' => '',
        'publish_page_title_focus' => 'n',
        'remove_unparsed_vars' => 'y',
        'server_offset' => 0,
        'third_party_path' => $appPath . '/third_party',
        'path_third_themes' => $webPath . '/themes/third_party',
        'url_third_themes' => $siteUrl . '/themes/third_party/',
        'cache_path' => $basePath . '/var/cache/',

        // Encryption / Session key
        'encryption_key' => '8Vq7AtEXgCH6FFhafiiE4rfsddgfnjXB',

        // Administration - Channel Admin - Global Channel Preferences
        'use_category_name' => 'y',
        'reserved_category_word' => 'category',
        'auto_assign_cat_parents' => 'y',
        'new_posts_clear_caches' => 'y',
        'enable_sql_caching' => 'n',
        'word_separator' => 'dash',

        // Administration - General Configuration
        'is_system_on' => 'y',
        'site_name' => '',
        'site_index' => '',
        'site_url' => $siteUrl,
        'theme_folder_url' => $siteUrl . "/themes/", // Must have trailing slash :(
        'theme_folder_path' => $basePath . "/themes",
        'cache_driver' => 'file',
        'new_version_check' => 'n',
        'doc_url' => 'http://ellislab.com/expressionengine/user-guide/',

        // Administration - Localization Settings
        'tz_country' => 'au',
        'default_site_timezone' => 'Australia/Sydney',

        // Administration - Email Configuration
        'webmaster_email' => '',
        'webmaster_name' => '',
        'email_debug' => 'n',
        'email_batchmode' => 'n',
        'email_batch_size' => 300,
        'mail_format' => 'plain', // plain, html
        'word_wrap' => 'y',
        'email_console_timelock' => 5,
        'log_email_console_msgs' => 'y',
        'email_module_captchas' => 'n',
        'mail_protocol' => 'smtp', // mail, sendmail, smtp
        'smtp_server' => 'smtp.mandrillapp.com',
        'smtp_port' => '587',
        'smtp_username' => '',
        'smtp_password' => '',

        // Administration - Database Settings
        'db_debug' => 'y',
        'pconnect' => 'n',

        // Administration - Output and Debugging Preferences
        'send_headers' => 'y',
        'gzip_output' => 'n',
        'force_query_string' => 'n',
        'redirect_method' => 'redirect', // redirect, refresh
        'show_profiler' => 'y',
        'template_debugging' => 'y',

        //  Administration - Image Resizing Preferences
        'image_resize_protocol' => 'gd2', // gd, gd2, imagemagick, NetPBM
        'image_library_path' => '',
        'thumbnail_prefix' => 'thumb',

        // Administration - Emoticon Preferences
        'enable_emoticons' => 'n',
        'emoticon_url' => $siteUrl . '/themes/admin_images/smileys/',

        // Administration - Search Term Log Configuration
        'enable_search_log' => 'n',
        'max_logged_searches' => 500,

        // Administration - Security and Session Preferences
        'admin_session_type' => 'cs', // cs, c, s
        'user_session_type' => 'c', // cs, c, s
        'secure_forms' => 'y',
        'deny_duplicate_data' => 'n',
        'redirect_submitted_links' => 'n',
        'allow_username_change' => 'y',
        'allow_multi_logins' => 'y',
        'require_ip_for_login' => 'y',
        'require_ip_for_posting' => 'y',
        'xss_clean_uploads' => 'y',
        'password_lockout' => 'y',
        'password_lockout_interval' => 1,
        'require_secure_passwords' => 'n',
        'allow_dictionary_pw' => 'y',
        'name_of_dictionary_file' => '',
        'un_min_len' => 4,
        'pw_min_len' => 4,
        'protect_javascript' => 'n',

        // Administration - Cookie Settings
        'cookie_domain' => '',
        'cookie_path' => '',
        'cookie_prefix' => 'cp_',

        // Administration - Word Censoring
        'enable_censoring' => 'n',
        'censor_replacement' => '',
        'censored_words' => '',

        // Administration - Tracking Preferences
        'enable_online_user_tracking' => 'n',
        'enable_hit_tracking' => 'n',
        'enable_entry_view_tracking' => 'n',
        'max_referrers' => 500,
        'dynamic_tracking_disabling' => '',

        // Administration - CAPTCHA Preferences
        'captcha_path' => $webPath . '/themes/admin_images/captchas/',
        'captcha_url' => $siteUrl . '/themes/admin_images/captchas/',
        'captcha_font' => 'y',
        'captcha_rand' => 'y',
        'captcha_require_members' => 'y',

        // Administration - Throttling Configuration
        'enable_throttling' => 'n',
        'banish_masked_ips' => 'y',
        'max_page_loads' => 10,
        'time_interval' => 8,
        'lockout_time' => 30,
        'banishment_type' => 'message', // 400, redirect, message,
        'banishment_url' => '',
        'banishment_message' => 'You have exceeded the allowed page load frequency.',

        // Members - Member Preferences - General Configuration
        'allow_member_registration' => 'y',
        'req_mbr_activation' => 'none', // none, email, manual
        'require_terms_of_service' => 'y',
        'allow_member_localization' => 'y',
        'use_membership_captcha' => 'n',
        'default_member_group' => 5,
        'member_theme' => 'default',
        'profile_trigger' => 'member',

        // Members - Member Preferences - Member List Preferences
        'memberlist_order_by' => 'join_date', // total_forum_posts, screen_name, total_comments, total_entries, join_date
        'memberlist_sort_order' => 'desc', // 'asc', 'desc'
        'memberlist_row_limit' => 100,

        // Members - Member Preferences - Notification Preferences
        'new_member_notification' => 'n',
        'mbr_notification_emails' => '',

        // Members - Member Preferences - Private Messaging Preferences
        'prv_msg_max_chars' => 6000,
        'prv_msg_html_format' => 'safe', // safe, none, all
        'prv_msg_auto_links' => 'y',
        'prv_msg_upload_path' => $basePath . '/web/uploads/member/pm_attachments',
        'prv_msg_max_attachments' => 1,
        'prv_msg_attach_maxsize' => 1024,
        'prv_msg_attach_total' => 1024,
        'prv_msg_waiting_period' => 0,
        'prv_msg_throttling_period' => 3, // seconds between pms

        // Members - Member Preferences - Avatar Preferences
        'enable_avatars' => 'y',
        'allow_avatar_uploads' => 'y',
        'avatar_url' => $siteUrl . '/uploads/member/avatars/',
        'avatar_path' => $basePath . '/web/uploads/member/avatars/',
        'avatar_max_width' => 512,
        'avatar_max_height' => 512,
        'avatar_max_kb' => 500,

        // Members - Member Preferences - Member Photo Preferences
        'enable_photos' => 'y',
        'photo_url' => $siteUrl . '/uploads/member/photos/',
        'photo_path' => $webPath . '/uploads/member/photos',
        'photo_max_width' => 1024,
        'photo_max_height' => 1024,
        'photo_max_kb' => 1000,

        // Members - Member Preferences - Signature Preferences
        'allow_signatures' => 'y',
        'sig_maxlength' => 1000,
        'sig_allow_img_hotlink' => 'y',
        'sig_allow_img_upload' => 'y',
        'sig_img_url' => $siteUrl . '/uploads/member/signature_attachments/',
        'sig_img_path' => $webPath . '/uploads/member/signature_attachments',
        'sig_img_max_width' => 512,
        'sig_img_max_height' => 128,
        'sig_img_max_kb' => 100,

        // Design - Template Manager - Global Template Preferences
        'strict_urls' => 'y',
        'site_404' => 'site/-four04',
        'save_tmpl_revisions' => 'y',
        'max_tmpl_revisions' => 30,
        'save_tmpl_files' => 'y',
        'tmpl_file_basepath' => $appPath . '/views/' . $srcOrProd,

        // Forum Module
        'forum_is_installed' => 'y',
        'forum_trigger' => 'forums',
        'use_forum_url' => 'y',
        'board_upload_url' => $siteUrl . '/uploads/member/forum_attachments/',
        'board_upload_path' => $webPath . '/uploads/member/forum_attachments',
    );

    $config = array_merge($config, $defaultConfig, $parameters["config"]);

    // Make this global so we can add some of the config variables here
    global $assign_to_config;

    if (false === isset($assign_to_config['global_vars'])) {
        $assign_to_config['global_vars'] = array();
    }

    $assign_to_config['global_vars'] = array_merge(
        $assign_to_config['global_vars'],
        $defaultGlobalVars,
        $parameters["globalVariables"]
    );
}

// DB bootsrap... GO!
if (true === isset($db['expressionengine'])) {
    $defaultDbConfig["cachedir"] = $appPath . '/../var/cache/db_cache/';
    $db['expressionengine'] = array_merge($db['expressionengine'], $defaultDbConfig, $parameters["database"]);
}

// Unset params
unset($basePath);
unset($appPath);
unset($webPath);
unset($parameters);
unset($isDebug);
unset($isCli);
unset($isAjax);
unset($srcOrProd);

unset($host);
unset($baseUrl);
unset($baseUrl);

