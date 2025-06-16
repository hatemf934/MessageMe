// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatModelHiveAdapter extends TypeAdapter<ChatModelHive> {
  @override
  final int typeId = 0;

  @override
  ChatModelHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatModelHive(
      name: fields[0] as String,
      image: fields[1] as String,
      message: fields[2] as String,
      data: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ChatModelHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.message)
      ..writeByte(3)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatModelHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
