class MenuItem {
  String? itemName;
  int? price;
  int? qty;
  String? image;
  String? desc;

  MenuItem({this.itemName, this.price, this.qty, this.image, this.desc});

  MenuItem.fromJson(Map<String, dynamic> json) {
    itemName = json['item_name'];
    price = json['price'];
    qty = json['qty'];
    image = json['image'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_name'] = this.itemName;
    data['price'] = this.price;
    data['qty'] = this.qty;
    data['image'] = this.image;
    data['desc'] = this.desc;
    return data;
  }
}
