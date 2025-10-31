import 'package:projet/core/models/User.dart';

class HospitalAdmin extends AppUser {
  HospitalAdmin({
    required String id,
    required String name,
    required String email,
    required String hospitalId,
  }) : super(id: id, name: name, email: email, role: UserRole.hospitalAdmin, hospitalId: hospitalId);

  factory HospitalAdmin.fromMap(Map<String, dynamic> map) => HospitalAdmin(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        hospitalId: map['hospitalId'],
      );
}
