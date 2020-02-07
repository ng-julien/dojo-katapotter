import { then, when, binding } from "cucumber-tsflow";
import { assert } from "chai";

@binding()
export class EstimatePurchaseSteps {
  @when(/^J\'achète (\d*) copie\(s\) \"([^\"]*)\"$/)
  public whenJEcoleDesSorciers(nbCopyOfBook: string, title: string): void {
    throw new Error("Not implemented");
  }

  @then(/^Je doit payé (.*)€$/)
  public thenJeDoitPaye(expectedTotal: string): void {
    throw new Error("Not implemented");
  }
}
