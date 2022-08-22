import 'dart:convert';

class PhoneContact {
  String name;
  String phoneNumber;
  bool isRegisteredOnApp;
  PhoneContact({
    required this.name,
    required this.phoneNumber,
    required this.isRegisteredOnApp,
  });
  factory PhoneContact.empty() => PhoneContact(
        name: '',
        phoneNumber: '',
        isRegisteredOnApp: false,
      );
      
  PhoneContact copyWith({
    String? name,
    String? phoneNumber,
    bool? isRegisteredOnApp,
  }) {
    return PhoneContact(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isRegisteredOnApp: isRegisteredOnApp ?? this.isRegisteredOnApp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'isRegisteredOnApp': isRegisteredOnApp,
    };
  }

  factory PhoneContact.fromMap(Map<String, dynamic> map) {
    return PhoneContact(
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      isRegisteredOnApp: map['isRegisteredOnApp'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory PhoneContact.fromJson(String source) =>
      PhoneContact.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'PhoneContact(name: $name, phoneNumber: $phoneNumber, isRegisteredOnApp: $isRegisteredOnApp)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhoneContact &&
        other.name == name &&
        other.phoneNumber == phoneNumber &&
        other.isRegisteredOnApp == isRegisteredOnApp;
  }

  @override
  int get hashCode =>
      name.hashCode ^ phoneNumber.hashCode ^ isRegisteredOnApp.hashCode;
}
