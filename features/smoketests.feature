Feature: Smoke Tests

    Scenario Outline: Simple availability smoke tests
        Given I am on "<url>"
        Then the response status code should be <responseCode>
        And the response should contain "<title>"

    Examples:
        | url                                | responseCode | title                    |
        | /                                  | 200          | Homepage                 |
        | /articles                          | 200          | Articles: Index          |
        | /articles/P10                      | 200          | Articles: Index - Page 2 |
        | /articles/details/daewon-song-2014 | 200          | Daewon Song: 2014        |
        | /brands                            | 200          | Brands: Index            |
        | /places                            | 200          | Places: Index            |
        | /products                          | 200          | Products: Index          |
        | /promotions                        | 200          | Promotions: Index        |
        | /tutorials                         | 200          | Tutorials: Index         |
        | /snow                              | 200          | Snow                     |
        | /snow/articles                     | 200          | Snow - Articles          |
        | /snow/brands                       | 200          | Snow - Brands            |
        | /snow/tutorials                    | 200          | Snow - Tutorials         |
        | /snow/places                       | 200          | Snow - Places            |
        | /snow/promotions                   | 200          | Snow - Promotions        |
        | /skate                             | 200          | Skate                    |
        | /skate/articles                    | 200          | Skate - Articles         |
        | /skate/brands                      | 200          | Skate - Brands           |
        | /skate/tutorials                   | 200          | Skate - Tutorials        |
        | /skate/places                      | 200          | Skate - Places           |
        | /skate/promotions                  | 200          | Skate - Promotions       |
        | /surf                              | 200          | Surf                     |
        | /surf/articles                     | 200          | Surf - Articles          |
        | /surf/brands                       | 200          | Surf - Brands            |
        | /surf/tutorials                    | 200          | Surf - Tutorials         |
        | /surf/places                       | 200          | Surf - Places            |
        | /surf/promotions                   | 200          | Surf - Promotions        |
        | /forums                            | 200          | Forum                    |
        | /forums/viewforum/2                | 200          | Social                   |
        | /forums/viewthread/1               | 200          | Test Post                |
        | /search                            | 200          | Search: Index            |
        | /site/four04                       | 404          |                          |
