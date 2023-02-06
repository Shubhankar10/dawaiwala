class MedicineDetails {
  String? product_name;
  String? salt;
  String? manufacturer;
  String? rx;
  String? packaging;
  // String? amount;

  MedicineDetails({
    this.product_name,
    this.salt,
    this.manufacturer,
    this.rx,
    this.packaging,
    // this.amount,
  });

  MedicineDetails.fromJson(Map<String, dynamic> json) {
    product_name = json['product_name'];
    salt = json['salt'];
    manufacturer = json['manufacturer'];
    rx = json['rx'];
    packaging = json['packaging'];
    // amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_name'] = product_name;
    data['salt'] = salt;
    data['manufacturer'] = manufacturer;
    data['rx'] = rx;
    data['packaging'] = packaging;
    // data['amount'] = amount;
    return data;
  }
}
