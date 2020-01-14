Feature: EstimatePurchase
  Afin d'acheter les livres de Harry Potter
  En tant que client
  Je veux estimer la valeur de mon achat


  Scenario: L'achat d'un livre coûte 8€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    Then Je doit payé 8€

  Scenario: L'achat de deux même livres coûte 16€
    When J'achète 2 copie(s) "Harry Potter à l'école des sorciers"
    Then Je doit payé 16€

  Scenario: L'achat de deux livres differents coûte 15.20€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    When J'achète 1 copie(s) "Harry Potter et la Chambre des secrets"
    Then Je doit payé 15.20€