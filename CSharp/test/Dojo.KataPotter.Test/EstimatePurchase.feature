Feature: EstimatePurchase
	Afin d'acheter les livres de Harry Potter
	En tant que client
	Je veux estimer la valeur de mon achat

	Scenario Outline: Acheter au meilleurs prix les livres Harry Potter
		When J'achète <nb_copy_I> copie(s) "Harry Potter à l'école des sorciers"
		When J'achète <nb_copy_II> copie(s) "Harry Potter et la Chambre des secrets"
		When J'achète <nb_copy_III> copie(s) "Harry Potter et le Prisonnier d'Azkaban"
		When J'achète <nb_copy_IV> copie(s) "Harry Potter et la Coupe de feu"
		When J'achète <nb_copy_V> copie(s) "Harry Potter et l'Ordre du Phénix"
		Then Je dois payer <Total>€
		Examples:
		| nb_copy_I | nb_copy_II | nb_copy_III | nb_copy_IV | nb_copy_V | Total |
		| 1         | 0          | 0           | 0          | 0         | 8     |
		| 2         | 0          | 0           | 0          | 0         | 16.00 |
		| 1         | 1          | 0           | 0          | 0         | 15.20 |
		| 1         | 1          | 1           | 0          | 0         | 21.60 |
		| 1         | 1          | 1           | 1          | 0         | 25.60 |
		| 1         | 1          | 1           | 1          | 1         | 30.00 |
		| 2         | 1          | 0           | 0          | 0         | 23.20 |
		| 2         | 2          | 2           | 1          | 1         | 51.20 |