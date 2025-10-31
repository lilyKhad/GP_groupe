import 'package:projet/core/models/User.dart';

class Doctor extends AppUser {
  final List<String> supervisedStages;

  Doctor({
    required String id,
    required String name,
    required String email,
    required String hospitalId,
    this.supervisedStages = const [],
  }) : super(id: id, name: name, email: email, role: UserRole.doctor, hospitalId: hospitalId);

  @override
  Map<String, dynamic> toMap() => {
        ...super.toMap(),
        'supervisedStages': supervisedStages,
      };

  factory Doctor.fromMap(Map<String, dynamic> map) => Doctor(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        hospitalId: map['hospitalId'],
        supervisedStages: List<String>.from(map['supervisedStages'] ?? []),
      );
}
