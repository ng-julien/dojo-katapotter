namespace Dojo.KataPotter.Test
{
    using TechTalk.SpecFlow;

    [Binding]
    public class EstimatePurchaseSteps
    {
        [When("^J'achète (\\d+) copie\\(s\\) \"(.*)\"$")]
        public void WhenJEcoleDesSorciers(int nbCopyOfBook, string title)
        {
            ScenarioContext.Current.Pending();
        }

        [Then("^Je doit payé (.*)€$")]
        public void ThenJeDoitPaye(decimal expectedTotal)
        {
            ScenarioContext.Current.Pending();
        }
    }
}