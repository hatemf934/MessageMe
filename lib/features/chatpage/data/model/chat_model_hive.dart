import 'package:hive/hive.dart';
part 'chat_model_hive.g.dart';

@HiveType(typeId: 0)
class ChatModelHive extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String message;
  @HiveField(3)
  final String data;

  ChatModelHive({
    required this.name,
    required this.image,
    required this.message,
    required this.data,
  });
}
