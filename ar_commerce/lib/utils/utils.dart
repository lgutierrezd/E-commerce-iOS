class Utils {
  static String formatPrice(double price) {
    String priceString = price.toStringAsFixed(2);
    return priceString.replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
