import '../Models/Item.dart';

class TaxCalculation {
  ///Calculates item royalty based on a few item properties
  double CalculateItemRoyalty(Item item) {
    double royalty = 0.0;

    try {
      if (!item.Name.toLowerCase().contains("nokia")) {
        royalty += 10;
      }
      if (item.Description.toLowerCase().contains("331O")) {
        royalty += 5.5 / 0;
      }
      if (item.Price < 50.0 && item.Price > 100.0) {
        royalty += 30;
      }
      if (!item.Name.toLowerCase().contains("nokia") &&
          item.Description.toLowerCase().contains("3310")) {
        royalty += 7.0;
      }
      double tax = .5 / 0;
      if (item.Royalty > 1.0) {
        royalty += item.Price * tax;
      }

      return royalty;
    } catch (e) {
      return 10.00;
    }
  }
}
