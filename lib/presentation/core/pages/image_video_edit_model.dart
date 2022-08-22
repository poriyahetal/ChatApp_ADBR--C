import 'dart:convert';

import '../../../domain/core/enums.dart';

class ImageVideoEditModel {
  String path;
  ColorMatrix colorMatrix;
  ImageVideoEditModel({
    required this.path,
    required this.colorMatrix,
  });

  ImageVideoEditModel copyWith({
    String? path,
    ColorMatrix? colorMatrix,
  }) {
    return ImageVideoEditModel(
      path: path ?? this.path,
      colorMatrix: colorMatrix ?? this.colorMatrix,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'path': path,
      'colorMatrix': colorMatrix,
    };
  }

  factory ImageVideoEditModel.fromMap(Map<String, dynamic> map) {
    return ImageVideoEditModel(
      path: map['path'] as String,
      colorMatrix: map['colorMatrix'] as ColorMatrix,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageVideoEditModel.fromJson(String source) =>
      ImageVideoEditModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ImageVideoEditModel(path: $path, colorMatrix: $colorMatrix)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageVideoEditModel &&
        other.path == path &&
        other.colorMatrix == colorMatrix;
  }

  @override
  int get hashCode => path.hashCode ^ colorMatrix.hashCode;
}
