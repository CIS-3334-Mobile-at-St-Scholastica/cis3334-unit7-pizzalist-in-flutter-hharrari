// Arrays must be final as their size and content won't change after initialization
final PIZZA_PRICES = [7.99, 9.99, 12.99, 14.99];
final PIZZA_SIZES = ["Small", "Medium", "Large", "X-Large"];

class Pizza {
  // Attributes (Note: They are public/default access, as per Dart convention)
  String toppings ="None";
  String description = "No description yet";
  double price = 0;
  int size = 0; // 0=Small, 1=Medium, 2=Large, 3=X-Large

// Constructor requires two parameters: toppings (String) and size index (int)
  Pizza(this.toppings, this.size)
  // Use an initializer list to set price and description immediately
      : price = PIZZA_PRICES[size], // Set price based on the size index
        description = 'A ${PIZZA_SIZES[size]} pizza with $toppings'; // Set description based on the size and toppings

  // Note: Dart's String interpolation ${...} is used here.

  // Optional: A helper method for clean price display in the UI later (Bonus-ready)
  String getPrice() {
    return '\$${price.toStringAsFixed(2)}';
  }

  // Optional: Override toString() for easy debugging
  @override
  String toString() {
    return 'Pizza: ${description}';
  }
}