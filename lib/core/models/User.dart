enum UserRole {
  student,
  doctor,
  headOfService,
  hospitalAdmin,
  superAdmin,
}

class AppUser {
  final String id;
  final String name;
  final String email;
  final UserRole role;
  final String? hospitalId; // facultatif pour certains

  AppUser({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.hospitalId,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
        'role': role.name,
        'hospitalId': hospitalId,
      };

  factory AppUser.fromMap(Map<String, dynamic> map) => AppUser(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        role: UserRole.values.firstWhere((r) => r.name == map['role']),
        hospitalId: map['hospitalId'],
      );
}
