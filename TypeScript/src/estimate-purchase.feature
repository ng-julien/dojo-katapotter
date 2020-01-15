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

  Scenario: L'achat de trois même livres coûte 20€
    When J'achète 3 copie(s) "Harry Potter à l'école des sorciers"
    Then Je doit payé 24€

  Scenario: L'achat de trois livres differents coûte 21.60€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    When J'achète 1 copie(s) "Harry Potter et la Chambre des secrets"
    When J'achète 1 copie(s) "Harry Potter et le Prisonnier d'Azkaban"
    Then Je doit payé 21.60€

  Scenario: L'achat de quatre livres differents coûte 25.6€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    When J'achète 1 copie(s) "Harry Potter et la Chambre des secrets"
    When J'achète 1 copie(s) "Harry Potter et le Prisonnier d'Azkaban"
    When J'achète 1 copie(s) "Harry Potter et la Coupe de feu"
    Then Je doit payé 25.6€

  Scenario: L'achat de five livres differents coûte 30€
    When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
    When J'achète 1 copie(s) "Harry Potter et la Chambre des secrets"
    When J'achète 1 copie(s) "Harry Potter et le Prisonnier d'Azkaban"
    When J'achète 1 copie(s) "Harry Potter et la Coupe de feu"
    When J'achète 1 copie(s) "Harry Potter et l'Ordre du Phénix"
    Then Je doit payé 30€