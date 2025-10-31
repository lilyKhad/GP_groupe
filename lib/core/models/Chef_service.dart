import 'package:projet/core/models/User.dart';

class HeadOfService extends AppUser {
  final List<String> serviceStages;

  HeadOfService({
    required String id,
    required String name,
    required String email,
    required String hospitalId,
    this.serviceStages = const [],
  }) : super(id: id, name: name, email: email, role: UserRole.headOfService, hospitalId: hospitalId);

  @override
  Map<String, dynamic> toMap() => {
        ...super.toMap(),
        'serviceStages': serviceStages,
      };

  factory HeadOfService.fromMap(Map<String, dynamic> map) => HeadOfService(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        hospitalId: map['hospitalId'],
        serviceStages: List<String>.from(map['serviceStages'] ?? []),
      );
}
