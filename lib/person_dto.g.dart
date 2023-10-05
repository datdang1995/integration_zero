// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonDtoImplAdapter extends TypeAdapter<_$PersonDtoImpl> {
  @override
  final int typeId = 0;

  @override
  _$PersonDtoImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersonDtoImpl(
      userName: fields[0] as String,
      userAge: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$PersonDtoImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.userAge);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonDtoImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonDtoImpl _$$PersonDtoImplFromJson(Map<String, dynamic> json) =>
    _$PersonDtoImpl(
      userName: json['user_name'] as String,
      userAge: json['user_age'] as int,
    );

Map<String, dynamic> _$$PersonDtoImplToJson(_$PersonDtoImpl instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'user_age': instance.userAge,
    };
