import 'dart:convert';

class CategoryModel {
  final String categoryID;
  final String name;
  final String imageUrl;

  const CategoryModel({
    required this.categoryID,
    required this.name,
    required this.imageUrl,
  });

  CategoryModel copyWith({
    String? categoryID,
    String? name,
    String? imageUrl,
  }) {
    return CategoryModel(
      categoryID: categoryID ?? this.categoryID,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categoryID': categoryID,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      categoryID: map['categoryID'] ?? '',
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source));

  @override
  String toString() => 'CategoryModel(categoryID: $categoryID, name: $name, imageUrl: $imageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryModel && other.categoryID == categoryID && other.name == name && other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => categoryID.hashCode ^ name.hashCode ^ imageUrl.hashCode;
}
