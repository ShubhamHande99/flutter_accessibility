class SemanticsLabels {
  static const product = 'product';
  static const settingsIcon = 'show settings';
  static const allTextButton = 'show all products';
  static const sofaIcon = 'show sofa products';
  static const tableIcon = 'show table products';
  static const lampIcon = 'show lamp products';

  static String addToFav(String productTitle) {
    return 'add $productTitle to the favourite';
  }

  static String removeFromFav(String productTitle) {
    return 'remove $productTitle from the favourite';
  }

  static String addToCart(String productTitle) {
    return 'add $productTitle to the cart';
  }
}
