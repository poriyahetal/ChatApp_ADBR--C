import 'dart:convert';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/stories/story_seen_model.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class StoryModel {
  final String? imageUrl;
  final String? videoUrl;
  final String? text;
  final Color? color;
  final Timestamp? created;
  final StoryType? type;
  final String? videoBase64Thumbnail;
  Map? react;
  final List<StorySeenModel>? storySeen;
  final int? duration;

  StoryModel({
    this.imageUrl,
    this.videoUrl,
    this.text,
    this.color,
    this.created,
    this.type,
    this.react,
    this.storySeen,
    this.duration,
    this.videoBase64Thumbnail
  });

  factory StoryModel.textDemo() =>
      StoryModel(
        created: Timestamp.now(),
        color: Kolors.primary,
        text: "Hi everyone! Excited to post my first text story",
        type: StoryType.text,
        react: {},
        storySeen: [],
      );

  factory StoryModel.imageDemo() =>
      StoryModel(
        imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEtQ3En-6bt65hik8GB2MAxat51mePjT1Zmg&usqp=CAU",
        text: "This is a demo image story!",
        created: Timestamp.now(),
        type: StoryType.image,
        react: {},
        storySeen: [],
      );

  factory StoryModel.videoDemo() =>
      StoryModel(
        videoUrl:
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        created: Timestamp.now(),
        text: "Hi everyone! Excited to post my first text story",
        type: StoryType.video,
        react: {},
        storySeen: [],
        duration: 0,
      );

  StoryModel copyWith({
    String? imageUrl,
    String? videoUrl,
    String? text,
    String? videoBase64Thumbnail,
    Color? color,
    Timestamp? created,
    StoryType? type,
    Map? react,
    List<StorySeenModel>? storySeen,
    int? duration,
  }) {
    return StoryModel(
      imageUrl: imageUrl ?? this.imageUrl,
      videoUrl: videoUrl ?? this.videoUrl,
      text: text ?? this.text,
      videoBase64Thumbnail: videoBase64Thumbnail ?? this.videoBase64Thumbnail,
      color: color ?? this.color,
      created: created ?? this.created,
      type: type ?? this.type,
      react: react ?? this.react,
      storySeen: storySeen ?? this.storySeen,
      duration: duration ?? this.duration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'videoUrl': videoUrl,
      'text': text,
      'color': color != null ? color!.value : null,
      'created': created,
      'type': type.toString(),
      'react': react,
      'storySeen': storySeen?.map((e) => e.toMap()).toList(),
      'duration': duration,
      "videoBase64Thumbnail" :videoBase64Thumbnail
    };
  }

  factory StoryModel.fromMap(Map<String, dynamic> map) {
    return StoryModel(
      imageUrl: (map['imageUrl'] ?? "") as String,
      videoUrl: (map['videoUrl'] ?? "") as String,
      text: (map['text'] ?? "") as String,
      videoBase64Thumbnail: (map['videoBase64Thumbnail'] ?? "") as String,
      color: Color((map['color'] ?? Colors.black.value) as int),
      created: map['created'] as Timestamp,
      type: map['type'] == 'StoryType.text'
          ? StoryType.text
          : map['type'] == 'StoryType.image'
          ? StoryType.image
          : StoryType.video,
      react: (map['react'] ?? {}) as Map<dynamic, dynamic>,
      storySeen: ((map['storySeen'] ?? []) as List<dynamic>)
          .map((storySeen) =>
          StorySeenModel.fromMap(storySeen as Map<String, dynamic>))
          .toList(),
      duration: (map['duration'] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoryModel.fromJson(String source) =>
      StoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Story(imageUrl: $imageUrl, videoUrl: $videoUrl, text: $text, color: $color, created: $created, type: $type, react: $react, storySeen: $storySeen, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoryModel &&
        other.imageUrl == imageUrl &&
        other.videoUrl == videoUrl &&
        other.text == text &&
        other.color == color &&
        other.created == created &&
        other.type == type &&
        other.react == react &&
        other.storySeen == storySeen &&
        other.duration == duration;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
    videoUrl.hashCode ^
    text.hashCode ^
    color.hashCode ^
    created.hashCode ^
    type.hashCode ^
    react.hashCode ^
    storySeen.hashCode ^
    duration.hashCode;
  }
}
