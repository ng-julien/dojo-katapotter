namespace Dojo.KataPotter.Test
{
    using System.Collections.Concurrent;
    using System.Linq;

    using NUnit.Framework;

    using TechTalk.SpecFlow;

    [Binding]
    public class EstimatePurchaseSteps
    {
        private readonly ConcurrentDictionary<string, int> books = new ConcurrentDictionary<string, int>();
        
        [When("^J'achète (\\d+) copie\\(s\\) \"(.*)\"$")]
        public void WhenJEcoleDesSorciers(int nbCopyOfBook, string title)
        {
            this.books.AddOrUpdate(
                title,
                nbCopyOfBook,
                (currentTitle, currentNbCopyOfBook) => currentNbCopyOfBook += nbCopyOfBook);
        }

        [Then("^Je doit payé (.*)€$")]
        public void ThenJeDoitPaye(decimal expectedTotal)
        {
            var bookseller = new Bookseller();
            var list = this.books.Select(kv => kv.Value).ToList();
            var actualTotal = bookseller.GetPrice(list);
            Assert.AreEqual(expectedTotal, actualTotal);
        }
    }
}