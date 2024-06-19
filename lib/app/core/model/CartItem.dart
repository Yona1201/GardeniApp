class CartItem {
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });

  factory CartItem.fromMap(Map<String, dynamic> data) {
    return CartItem(
      name: data['name'],
      imageUrl: data['image'],
      price: double.parse(data['price']),
      quantity: data['quantity'],
    );
  }
}
