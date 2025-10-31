import 'package:projet/core/models/User.dart';

class Student extends AppUser {
  final String specialty;
  final List<String> appliedStages;

  Student({
    required String id,
    required String name,
    required String email,
    this.specialty = '',
    this.appliedStages = const [],
  }) : super(id: id, name: name, email: email, role: UserRole.student);

  @override
  Map<String, dynamic> toMap() => {
        ...super.toMap(),
        'specialty': specialty,
        'appliedStages': appliedStages,
      };

  factory Student.fromMap(Map<String, dynamic> map) => Student(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        specialty: map['specialty'] ?? '',
        appliedStages: List<String>.from(map['appliedStages'] ?? []),
      );
}
