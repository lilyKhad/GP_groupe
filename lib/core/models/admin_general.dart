import 'package:projet/core/models/User.dart';

class SuperAdmin extends AppUser {
  SuperAdmin({required String id, required String name, required String email})
    : super(id: id, name: name, email: email, role: UserRole.superAdmin);

  factory SuperAdmin.fromMap(Map<String, dynamic> map) =>
      SuperAdmin(id: map['id'], name: map['name'], email: map['email']);
}
