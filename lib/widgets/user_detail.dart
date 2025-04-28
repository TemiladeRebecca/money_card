import 'package:uuid/uuid.dart';

final uuid = Uuid();

class UserDetail {
  UserDetail({required this.name, required this.balance}) : id = uuid.v4();

  final String id;
  final String name;
  final double balance;
}