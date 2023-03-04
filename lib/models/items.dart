class Item {
  String? name;
  int? price;
  int? qty;
  String? image;
  String? desc;

  Item({
    this.name,
    this.price,
    this.qty,
    this.image,
    this.desc,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'],
      price: json['price'],
      qty: json['qty'],
      image: json['image'],
      desc: json['desc'],
    );
  }
}
