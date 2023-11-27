import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 3)
class Transaction {
  Transaction({
    required this.transactionName,
    required this.nominal,
    required this.paymentType,
    required this.isRecieved,
    required this.date,
  });
  @HiveField(0)
  String transactionName;

  @HiveField(1)
  int nominal;

  @HiveField(2)
  String paymentType;

  @HiveField(3)
  bool isRecieved;

  @HiveField(4)
  String date;
}
