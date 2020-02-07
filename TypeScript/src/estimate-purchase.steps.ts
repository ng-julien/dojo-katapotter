import { then, when, binding } from "cucumber-tsflow";
import { assert } from "chai";
import { Bookseller } from "./bookseller";
import * as _ from "lodash";

@binding()
export class EstimatePurchaseSteps {
  private readonly books: { [key: string]: number } = {};

  @when(/^J\'achète (\d*) copie\(s\) \"([^\"]*)\"$/)
  public whenJEcoleDesSorciers(nbCopyOfBook: number, title: string): void {
    var currentValue = this.books[title];
    this.books[title] = _.isUndefined(currentValue)
      ? nbCopyOfBook
      : currentValue + nbCopyOfBook;
  }

  @then(/^Je dois payer (.*)€$/)
  public thenJeDoitPaye(expectedTotal: number): void {
    let bookseller = new Bookseller();
    let actualTotal = bookseller.GetPrice(
      _.flatMap(this.books, value => value)
    );
    assert.equal(expectedTotal, actualTotal);
  }
}
