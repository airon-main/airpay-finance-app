import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 1)
class Transaction {
  Transaction({
    required this.name,
    required this.nominal,
  });
  @HiveField(0)
  String name;

  @HiveField(1)
  int nominal;
}