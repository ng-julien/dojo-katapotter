import { then, when, binding } from "cucumber-tsflow";
import { assert } from "chai";
import { Bookseller } from "./bookseller";

@binding()
export class EstimatePurchaseSteps {
  private readonly books: number[] = [];
  @when(/^J\'achète (\d*) copie\(s\) \"([^\"]*)\"$/)
  public whenJEcoleDesSorciers(nbCopyOfBook: number, title: string): void {
    this.books.push(nbCopyOfBook);
  }

  @then(/^Je dois payer (.*)€$/)
  public thenJeDoisPayer(expectedTotal: number): void {
    var bookseller = new Bookseller();
    let actualTotal = bookseller.GetPrice(this.books);
    assert.equal(expectedTotal, actualTotal);
  }
}