// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    String brands;
    int price;
    String categories;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.brands,
        required this.price,
        required this.categories,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        brands: json["brands"],
        price: json["price"],
        categories: json["categories"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "brands": brands,
        "price": price,
        "categories": categories,
        "description": description,
    };
}
