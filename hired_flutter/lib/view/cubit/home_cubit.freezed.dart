// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeCubitState {
  bool get showDetails => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Job> get popularJobs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCubitStateCopyWith<HomeCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCubitStateCopyWith<$Res> {
  factory $HomeCubitStateCopyWith(
          HomeCubitState value, $Res Function(HomeCubitState) then) =
      _$HomeCubitStateCopyWithImpl<$Res, HomeCubitState>;
  @useResult
  $Res call(
      {bool showDetails,
      String success,
      String failure,
      bool isLoading,
      List<Job> popularJobs});
}

/// @nodoc
class _$HomeCubitStateCopyWithImpl<$Res, $Val extends HomeCubitState>
    implements $HomeCubitStateCopyWith<$Res> {
  _$HomeCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDetails = null,
    Object? success = null,
    Object? failure = null,
    Object? isLoading = null,
    Object? popularJobs = null,
  }) {
    return _then(_value.copyWith(
      showDetails: null == showDetails
          ? _value.showDetails
          : showDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularJobs: null == popularJobs
          ? _value.popularJobs
          : popularJobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeCubitStateCopyWith<$Res>
    implements $HomeCubitStateCopyWith<$Res> {
  factory _$$_HomeCubitStateCopyWith(
          _$_HomeCubitState value, $Res Function(_$_HomeCubitState) then) =
      __$$_HomeCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showDetails,
      String success,
      String failure,
      bool isLoading,
      List<Job> popularJobs});
}

/// @nodoc
class __$$_HomeCubitStateCopyWithImpl<$Res>
    extends _$HomeCubitStateCopyWithImpl<$Res, _$_HomeCubitState>
    implements _$$_HomeCubitStateCopyWith<$Res> {
  __$$_HomeCubitStateCopyWithImpl(
      _$_HomeCubitState _value, $Res Function(_$_HomeCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDetails = null,
    Object? success = null,
    Object? failure = null,
    Object? isLoading = null,
    Object? popularJobs = null,
  }) {
    return _then(_$_HomeCubitState(
      showDetails: null == showDetails
          ? _value.showDetails
          : showDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularJobs: null == popularJobs
          ? _value._popularJobs
          : popularJobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc

class _$_HomeCubitState implements _HomeCubitState {
  const _$_HomeCubitState(
      {required this.showDetails,
      required this.success,
      required this.failure,
      required this.isLoading,
      required final List<Job> popularJobs})
      : _popularJobs = popularJobs;

  @override
  final bool showDetails;
  @override
  final String success;
  @override
  final String failure;
  @override
  final bool isLoading;
  final List<Job> _popularJobs;
  @override
  List<Job> get popularJobs {
    if (_popularJobs is EqualUnmodifiableListView) return _popularJobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularJobs);
  }

  @override
  String toString() {
    return 'HomeCubitState(showDetails: $showDetails, success: $success, failure: $failure, isLoading: $isLoading, popularJobs: $popularJobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeCubitState &&
            (identical(other.showDetails, showDetails) ||
                other.showDetails == showDetails) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._popularJobs, _popularJobs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showDetails, success, failure,
      isLoading, const DeepCollectionEquality().hash(_popularJobs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeCubitStateCopyWith<_$_HomeCubitState> get copyWith =>
      __$$_HomeCubitStateCopyWithImpl<_$_HomeCubitState>(this, _$identity);
}

abstract class _HomeCubitState implements HomeCubitState {
  const factory _HomeCubitState(
      {required final bool showDetails,
      required final String success,
      required final String failure,
      required final bool isLoading,
      required final List<Job> popularJobs}) = _$_HomeCubitState;

  @override
  bool get showDetails;
  @override
  String get success;
  @override
  String get failure;
  @override
  bool get isLoading;
  @override
  List<Job> get popularJobs;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCubitStateCopyWith<_$_HomeCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
