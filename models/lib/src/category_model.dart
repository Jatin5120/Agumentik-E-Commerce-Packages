import 'dart:convert';

class CategoryModel {
  final String categoryID;
  final String name;
  final String imageUrl;
  final int color;

  const CategoryModel({
    required this.categoryID,
    required this.name,
    required this.imageUrl,
    required this.color,
  });

  CategoryModel copyWith({
    String? categoryID,
    String? name,
    String? imageUrl,
    int? color,
  }) {
    return CategoryModel(
      categoryID: categoryID ?? this.categoryID,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categoryID': categoryID,
      'name': name,
      'imageUrl': imageUrl,
      'color': color,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      categoryID: map['categoryID'] ?? '',
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      color: map['color']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CategoryModel(categoryID: $categoryID, name: $name, imageUrl: $imageUrl, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryModel &&
        other.categoryID == categoryID &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.color == color;
  }

  @override
  int get hashCode {
    return categoryID.hashCode ^ name.hashCode ^ imageUrl.hashCode ^ color.hashCode;
  }
}
