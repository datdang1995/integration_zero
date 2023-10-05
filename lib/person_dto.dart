// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'person_dto.freezed.dart';
part 'person_dto.g.dart';

const personTypeId = 0;
const personBox = 'person_box';

@freezed
class PersonDto extends HiveObject with _$PersonDto {
  PersonDto._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  @HiveType(typeId: personTypeId)
  factory PersonDto({
    @HiveField(0) required String userName,
    @HiveField(1) required int userAge,
  }) = _PersonDto;

  factory PersonDto.fromJson(Map<String, dynamic> json) =>
      _$PersonDtoFromJson(json);
}
