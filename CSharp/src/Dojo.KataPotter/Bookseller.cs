namespace Dojo.KataPotter
{
    using System.Collections.Generic;
    using System.Linq;

    public class Bookseller
    {
        private const decimal UnitPrice = 8m;

        public decimal GetPrice(List<int> books)
        {
            return books.Sum(book => book * UnitPrice);
        }
    }
}