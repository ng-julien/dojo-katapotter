import * as _ from "lodash";

export class Bookseller {
  public GetPrice(books: number[]): number {
    return _.sumBy(books, book => book * 8);
  }
}
