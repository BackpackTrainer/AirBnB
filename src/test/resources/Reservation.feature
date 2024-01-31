Feature:
  I want to test reservations

  Background:
    Given the following rooms are available to rent
      | Room Name   | Base Rate |
      | Cliffhanger | 100       |
      | Slickrock   | 125       |
    Given the registered users are
      | Name         |
      | Bryan Hansen |
      | Sara Hansen  |

  Scenario Outline:
    When <Name> books a <Room> in <Season> for <Days>
    Then my bill total is <Amount>

    Examples:
      | Name           | Room          | Season   | Days | Amount |
      | "Bryan Hansen" | "Cliffhanger" | "SPRING" | 3    | 600.0  |
      | "Sara Hansen"  | "Slickrock"   | "FALL"   | 5    | 781.25 |