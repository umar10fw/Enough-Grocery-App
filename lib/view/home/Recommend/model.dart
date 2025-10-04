class recommend {
  int? id;
  String? image;
  String? name;
  String? subtitle;
  int? price;
  int? discount;
  int? quantity;
  int? off;

  recommend(
      {this.id,
        this.image,
        this.name,
        this.subtitle,
        this.price,
        this.discount,
        this.quantity,
        this.off});

  recommend.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    subtitle = json['subtitle'];
    price = json['price'];
    discount = json['discount'];
    quantity = json['quantity'];
    off = json['off'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    data['subtitle'] = this.subtitle;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['quantity'] = this.quantity;
    data['off'] = this.off;
    return data;
  }
}
