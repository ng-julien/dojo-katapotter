Feature: EstimatePurchase
	Afin d'acheter les livres de Harry Potter
	En tant que client
	Je veux estimer la valeur de mon achat


	Scenario: L'achat d'un livre coûte 8€
		When J'achète 1 copie(s) "Harry Potter à l'école des sorciers"
		Then Je dois payer 8€