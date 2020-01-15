import * as _ from "lodash";

export class Bookseller {
  private static readonly Discounts: number[] = [1, 0.95, 0.9, 0.8];
  public GetPrice(books: number[]): number {
    var applicableDiscount =
      Bookseller.Discounts[_.filter(books, book => book > 0).length - 1];
    return _.sumBy(books, book => book * 8) * applicableDiscount;
  }
}
