import 'dart:convert';

import 'package:flutter/material.dart';

class StackItemModel {
  int id;
  Offset offset;
  double scale;
  double initialScale;
  double rotation;
  double initialRotation;
  Color color;
  StackItemModel({
    required this.id,
    required this.offset,
    required this.scale,
    required this.initialScale,
    required this.rotation,
    required this.initialRotation,
    required this.color,
  });

  StackItemModel copyWith({
    int? id,
    Offset? offset,
    double? scale,
    double? initialScale,
    double? rotation,
    double? initialRotation,
    Color? color,
  }) {
    return StackItemModel(
      id: id ?? this.id,
      offset: offset ?? this.offset,
      scale: scale ?? this.scale,
      initialScale: initialScale ?? this.initialScale,
      rotation: rotation ?? this.rotation,
      initialRotation: initialRotation ?? this.initialRotation,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'offset': offset,
      'scale': scale,
      'initialScale': initialScale,
      'rotation': rotation,
      'initialRotation': initialRotation,
      'color': color.value,
    };
  }

  factory StackItemModel.fromMap(Map<String, dynamic> map) {
    return StackItemModel(
      id: map['id'] as int,
      offset: map['offset'] as Offset,
      scale: map['scale'] as double,
      initialScale: map['initialScale'] as double,
      rotation: map['rotation'] as double,
      initialRotation: map['initialRotation'] as double,
      color: map['color'] as Color,
    );
  }

  String toJson() => json.encode(toMap());

  factory StackItemModel.fromJson(String source) =>
      StackItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StackItemModel(id: $id, offset: $offset, scale: $scale, initialScale: $initialScale, rotation: $rotation, initialRotation: $initialRotation, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StackItemModel &&
        other.id == id &&
        other.offset == offset &&
        other.scale == scale &&
        other.initialScale == initialScale &&
        other.rotation == rotation &&
        other.initialRotation == initialRotation &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        offset.hashCode ^
        scale.hashCode ^
        initialScale.hashCode ^
        rotation.hashCode ^
        initialRotation.hashCode ^
        color.hashCode;
  }
}
