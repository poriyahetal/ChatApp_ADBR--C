class ImageWithCaptionModel {
  final String imagePath;
  final String caption;
  ImageWithCaptionModel({
    required this.imagePath,
    required this.caption,
  });

  @override
  String toString() =>
      'ImageWithCaptionModel(imagePath: $imagePath, caption: $caption)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageWithCaptionModel &&
        other.imagePath == imagePath &&
        other.caption == caption;
  }

  @override
  int get hashCode => imagePath.hashCode ^ caption.hashCode;
}
