namespace Dojo.KataPotter
{
    using System.Collections.Generic;
    using System.Linq;

    public class Bookseller
    {
        private const decimal UnitPrice = 8m;

        private static readonly decimal[] Discounts = { 1m, 0.95m, 0.90m, 0.80m, 0.75m };

        private delegate bool CanOptimizePrice(int volumeNumber, int remainingBook);

        public decimal GetPrice(IList<int> books)
        {
            var optimizePrice = books.Count(book => book > 0) == 5 && books.Sum() >= 8;
            return CalculatePrice(
                (volumeNumber, remainingBook) => volumeNumber >= 4 && remainingBook > 0 && optimizePrice,
                books);
        }

        private static decimal CalculatePrice(CanOptimizePrice canOptimizePrice, IEnumerable<int> books)
        {
            var filteredBooks = books.Where(item => item > 0).OrderByDescending(item => item).ToArray();
            var numberOfBooks = HowManyAvailableBooks(canOptimizePrice, filteredBooks);
            if (numberOfBooks == 0)
            {
                return 0;
            }

            var price = UnitPrice * numberOfBooks * Discounts[numberOfBooks - 1];
            return price + CalculatePrice(canOptimizePrice, filteredBooks);
        }

        private static int HowManyAvailableBooks(CanOptimizePrice canOptimizePrice, IList<int> books)
        {
            int numberOfBooks = 0;
            for (int volumeNumber = 0; volumeNumber < books.Count(); volumeNumber++)
            {
                if (canOptimizePrice(volumeNumber, books[volumeNumber]))
                {
                    continue;
                }

                if (books[volumeNumber]-- > 0)
                {
                    numberOfBooks++;
                }
            }

            return numberOfBooks;
        }
    }
}