namespace Dojo.KataPotter
{
    using System.Collections.Generic;
    using System.Linq;

    public class Bookseller
    {
        private const decimal UnitPrice = 8m;

        private static readonly decimal[] Discounts = { 1m, 0.95m};

        public decimal GetPrice(List<int> books)
        {
            var applicableDiscount = Discounts[books.Count(book => book > 0) - 1];
            return books.Sum(book => book * UnitPrice) * applicableDiscount;
        }
    }
}