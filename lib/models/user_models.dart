// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModels {
  final int id;
  final String uid;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final String birthday;
  final String? phoneNumber;
  final String? profileImage;
  UserModels({
    required this.id,
    required this.uid,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.birthday,
    this.phoneNumber,
    this.profileImage,
  });
 


  UserModels copyWith({
    int? id,
    String? uid,
    String? email,
    String? firstName,
    String? lastName,
    String? password,
    String? birthday,
    String? phoneNumber,
    String? profileImage,
  }) {
    return UserModels(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      password: password ?? this.password,
      birthday: birthday ?? this.birthday,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      profileImage: profileImage ?? this.profileImage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
      'birthday': birthday,
      'phoneNumber': phoneNumber,
      'profileImage': profileImage,
    };
  }

  factory UserModels.fromMap(Map<String, dynamic> map) {
    return UserModels(
      id: map['id'] as int,
      uid: map['uid'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      password: map['password'] as String,
      birthday: map['birthday'] as String,
      phoneNumber: map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      profileImage: map['profileImage'] != null ? map['profileImage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModels.fromJson(String source) => UserModels.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModels(id: $id, uid: $uid, email: $email, firstName: $firstName, lastName: $lastName, password: $password, birthday: $birthday, phoneNumber: $phoneNumber, profileImage: $profileImage)';
  }

  @override
  bool operator ==(covariant UserModels other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.uid == uid &&
      other.email == email &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.password == password &&
      other.birthday == birthday &&
      other.phoneNumber == phoneNumber &&
      other.profileImage == profileImage;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      uid.hashCode ^
      email.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      password.hashCode ^
      birthday.hashCode ^
      phoneNumber.hashCode ^
      profileImage.hashCode;
  }
}
