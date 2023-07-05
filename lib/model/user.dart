import 'package:integrate_api/model/user_dob.dart';
import 'package:integrate_api/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
  });

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
