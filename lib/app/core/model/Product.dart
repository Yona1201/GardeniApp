class Product {
  final String name;
  final String description;
  final String imageUrl;
  final String price;

  Product(
      {required this.name,
      required this.description,
      required this.imageUrl,
      required this.price});

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['nama'] ?? '',
      description: map['deskripsi'] ?? '',
      imageUrl: map['gambar'] ?? '',
      price: map['harga'] ?? '',
    );
  }
}
