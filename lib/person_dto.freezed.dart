// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonDto _$PersonDtoFromJson(Map<String, dynamic> json) {
  return _PersonDto.fromJson(json);
}

/// @nodoc
mixin _$PersonDto {
  @HiveField(0)
  String get userName => throw _privateConstructorUsedError;
  @HiveField(1)
  int get userAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonDtoCopyWith<PersonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDtoCopyWith<$Res> {
  factory $PersonDtoCopyWith(PersonDto value, $Res Function(PersonDto) then) =
      _$PersonDtoCopyWithImpl<$Res, PersonDto>;
  @useResult
  $Res call({@HiveField(0) String userName, @HiveField(1) int userAge});
}

/// @nodoc
class _$PersonDtoCopyWithImpl<$Res, $Val extends PersonDto>
    implements $PersonDtoCopyWith<$Res> {
  _$PersonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userAge = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAge: null == userAge
          ? _value.userAge
          : userAge // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonDtoImplCopyWith<$Res>
    implements $PersonDtoCopyWith<$Res> {
  factory _$$PersonDtoImplCopyWith(
          _$PersonDtoImpl value, $Res Function(_$PersonDtoImpl) then) =
      __$$PersonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String userName, @HiveField(1) int userAge});
}

/// @nodoc
class __$$PersonDtoImplCopyWithImpl<$Res>
    extends _$PersonDtoCopyWithImpl<$Res, _$PersonDtoImpl>
    implements _$$PersonDtoImplCopyWith<$Res> {
  __$$PersonDtoImplCopyWithImpl(
      _$PersonDtoImpl _value, $Res Function(_$PersonDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userAge = null,
  }) {
    return _then(_$PersonDtoImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAge: null == userAge
          ? _value.userAge
          : userAge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
@HiveType(typeId: personTypeId)
class _$PersonDtoImpl extends _PersonDto {
  _$PersonDtoImpl(
      {@HiveField(0) required this.userName,
      @HiveField(1) required this.userAge})
      : super._();

  factory _$PersonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonDtoImplFromJson(json);

  @override
  @HiveField(0)
  final String userName;
  @override
  @HiveField(1)
  final int userAge;

  @override
  String toString() {
    return 'PersonDto(userName: $userName, userAge: $userAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonDtoImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAge, userAge) || other.userAge == userAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, userAge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonDtoImplCopyWith<_$PersonDtoImpl> get copyWith =>
      __$$PersonDtoImplCopyWithImpl<_$PersonDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonDtoImplToJson(
      this,
    );
  }
}

abstract class _PersonDto extends PersonDto {
  factory _PersonDto(
      {@HiveField(0) required final String userName,
      @HiveField(1) required final int userAge}) = _$PersonDtoImpl;
  _PersonDto._() : super._();

  factory _PersonDto.fromJson(Map<String, dynamic> json) =
      _$PersonDtoImpl.fromJson;

  @override
  @HiveField(0)
  String get userName;
  @override
  @HiveField(1)
  int get userAge;
  @override
  @JsonKey(ignore: true)
  _$$PersonDtoImplCopyWith<_$PersonDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
