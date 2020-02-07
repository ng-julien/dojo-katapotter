Feature: EstimatePurchase
  Afin d'acheter les livres de Harry Potter
  En tant que client
  Je veux estimer la valeur de mon achat


  Scenario: L'achat d'un livre coûte 8€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    Then Je dois payer 8€

  Scenario: L'achat de deux même livres coûte 16€
    When J'achète 2 copie(s) "Harry Potter à l'école des sorciers"
    Then Je dois payer 16€

  Scenario: L'achat de deux livres differents coûte 15.20€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    When J'achète 1 copie(s) "Harry Potter et la Chambre des secrets"
    Then Je dois payer 15.20€

  Scenario: L'achat de trois même livres coûte 20€
    When J'achète 3 copie(s) "Harry Potter à l'école des sorciers"
    Then Je dois payer 24€

  Scenario: L'achat de trois livres differents coûte 21.60€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    When J'achète 1 copie(s) "Harry Potter et la Chambre des secrets"
    When J'achète 1 copie(s) "Harry Potter et le Prisonnier d'Azkaban"
    Then Je dois payer 21.60€