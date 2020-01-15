import * as _ from "lodash";

interface CanOptimizePrice {
  (volumeNumber: number, remainingBook: number): boolean;
}

export class Bookseller {
  private static readonly UnitPrice: number = 8;
  private static readonly Discounts: number[] = [1, 0.95, 0.9, 0.8, 0.75];

  public GetPrice(books: number[]): number {
    let parsedBooks = _.map(books, (book: string) => _.parseInt(book));
    let optimizePrice: boolean =
      _.filter(parsedBooks, (book: number) => book > 0).length == 5 &&
      _.sum(parsedBooks) >= 8;
    return Bookseller.CalculatePrice(
      (volumeNumber, remainingBook) =>
        volumeNumber >= 4 && remainingBook > 0 && optimizePrice,
      books
    );
  }

  private static CalculatePrice(
    canOptimizePrice: CanOptimizePrice,
    books: number[]
  ): number {
    let filteredBooks: number[] = _.chain(books)
      .filter(book => book > 0)
      .sortBy("asc")
      .value();
    var numberOfBooks = Bookseller.HowManyAvailableBooks(
      canOptimizePrice,
      filteredBooks
    );
    if (numberOfBooks == 0) {
      return 0;
    }

    var price =
      Bookseller.UnitPrice *
      numberOfBooks *
      Bookseller.Discounts[numberOfBooks - 1];
    return price + Bookseller.CalculatePrice(canOptimizePrice, filteredBooks);
  }

  private static HowManyAvailableBooks(
    canOptimizePrice: CanOptimizePrice,
    books: number[]
  ): number {
    let numberOfBooks: number = 0;
    for (
      let volumeNumber: number = 0;
      volumeNumber < books.length;
      volumeNumber++
    ) {
      if (canOptimizePrice(volumeNumber, books[volumeNumber])) {
        continue;
      }

      if (books[volumeNumber]-- > 0) {
        numberOfBooks++;
      }
    }

    return numberOfBooks;
  }
}
