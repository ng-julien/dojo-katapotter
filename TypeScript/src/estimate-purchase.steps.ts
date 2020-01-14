import { then, when, binding } from "cucumber-tsflow";
import { assert } from "chai";

@binding()
export class EstimatePurchaseSteps {
  @when(/^J\'achète (\d*) copie\(s\) \"([^\"]*)\"$/)
  public whenJEcoleDesSorciers(nbCopyOfBook: number, title: string): void {
    throw new Error("Not implemented");
  }

  @then(/^Je doit payé (.*)€$/)
  public thenJeDoitPaye(expectedTotal: number): void {
    throw new Error("Not implemented");
  }
}
