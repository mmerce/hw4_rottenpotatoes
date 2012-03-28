Feature: add a new movie
 
  As a film fan
  So that I can contribute to the database
  I want to add new movies to the list

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And  I am on the RottenPotatoes home page
  And all ratings selected
  And I press "Refresh"
  
Scenario: add a new movie
  Given I am on the new movie page
  When I fill in "movie_title" with "Antonia's line"
  And I press "Save Changes"
  Then I should be on the RottenPotatoes home page
  And I should see "Antonia's line"
