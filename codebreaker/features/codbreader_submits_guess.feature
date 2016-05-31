Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers. THe game marks the guess with + and - signs.

  For each number in the guess that matches the number and position of a number in the secret code, the mark includes one + sign. For each number in the guess that mathces the number nut not the position of the number in the secret code, the mark includes one - sign.

  Scenario Outline: submit guess
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

  Scenarios: no matches
    | code | guess | mark |
    | 1234 | 5555  |      |

  Scenarios: 1 number correct
    | code | guess | mark |
    | 1234 | 1555  | +    |
    | 1234 | 2555  | -    |

  Scenarios: 2 numbers correct
    | code | guess | mark |
    | 1234 | 1255  | ++   |
    | 1234 | 1355  | +-   |
    | 1234 | 2155  | --   |

  Scenarios: 3 numbers correct
    | code | guess | mark |
    | 1234 | 1235  | +++  |
    | 1234 | 1253  | ++-  |
    | 1234 | 1354  | +--  |
    | 1234 | 2351  | ---  |

  Scenarios: all numbers correct
    | code | guess | mark |
    | 1234 | 1234  | ++++ |
    | 1234 | 1243  | ++-- |
    | 1234 | 1423  | +--- |
    | 1234 | 2341  | ---- |
