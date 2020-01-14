namespace Dojo.KataPotter.Test
{
    using System.Collections.Generic;

    using NUnit.Framework;

    using TechTalk.SpecFlow;

    [Binding]
    public class EstimatePurchaseSteps
    {
        private readonly List<int> books = new List<int>();
        
        [When("^J'achète (\\d+) copie\\(s\\) \"(.*)\"$")]
        public void WhenJEcoleDesSorciers(int nbCopyOfBook, string title)
        {
            this.books.Add(nbCopyOfBook);
        }

        [Then("^Je doit payé (.*)€$")]
        public void ThenJeDoitPaye(decimal expectedTotal)
        {
            var bookseller = new Bookseller();
            var actualTotal = bookseller.GetPrice(this.books);
            Assert.AreEqual(expectedTotal, actualTotal);
        }
    }
}