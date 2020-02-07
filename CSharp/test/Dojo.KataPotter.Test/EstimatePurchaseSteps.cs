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

        [Then("^Je dois payer (.*)€$")]
        public void ThenJeDoisPayer(decimal expectedTotal)
        {
            ScenarioContext.Current.Pending();
        }
    }
}