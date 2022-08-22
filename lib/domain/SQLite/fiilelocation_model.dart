import 'dart:convert';

class FileLocation {
  int id;
  String filename;
  String filepath;
  String senderUid;
  String receiverUid;
  FileLocation({
    required this.id,
    required this.filename,
    required this.filepath,
    required this.senderUid,
    required this.receiverUid,
  });

  FileLocation copyWith({
    int? id,
    String? filename,
    String? filepath,
    String? senderUid,
    String? receiverUid,
  }) {
    return FileLocation(
      id: id ?? this.id,
      filename: filename ?? this.filename,
      filepath: filepath ?? this.filepath,
      senderUid: senderUid ?? this.senderUid,
      receiverUid: receiverUid ?? this.receiverUid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'filename': filename,
      'filepath': filepath,
      'senderUid': senderUid,
      'receiverUid': receiverUid,
    };
  }

  factory FileLocation.fromMap(Map<String, dynamic> map) {
    return FileLocation(
      id: map['id'] as int,
      filename: map['filename'] as String,
      filepath: map['filepath'] as String,
      senderUid: map['senderUid'] as String,
      receiverUid: map['receiverUid'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FileLocation.fromJson(String source) =>
      FileLocation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FilePath(id: $id filename: $filename, filepath: $filepath, myUser: $senderUid, peerUser:$receiverUid,)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FileLocation &&
        other.id == id &&
        other.filename == filename &&
        other.filepath == filepath &&
        other.senderUid == senderUid &&
        other.receiverUid == receiverUid;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      filename.hashCode ^
      filepath.hashCode ^
      senderUid.hashCode ^
      receiverUid.hashCode;
}
