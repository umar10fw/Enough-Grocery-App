class popular {
  int? id;
  String? name;
  String? image;
  int? price;
  int? discount;
  int? quantity;

  popular(
      {this.id,
        this.name,
        this.image,
        this.price,
        this.discount,
        this.quantity});

  popular.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    discount = json['discount'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['quantity'] = this.quantity;
    return data;
  }
}
