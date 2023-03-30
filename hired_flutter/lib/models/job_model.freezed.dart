// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  @JsonKey(name: 'employer_name')
  String? get employerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_title')
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'employer_logo')
  String? get employerLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_employment_type')
  String? get jobEmploymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_apply_link')
  String? get jobApplyLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_description')
  String? get jobDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_is_remote')
  bool? get jobIsRemote => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'job_posted_at_datetime_utc', fromJson: getDateTimeFromUTCString)
  DateTime? get jobPostedAtDatetimeUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_city')
  String? get jobCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_state')
  String? get jobState => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_country')
  String? get jobCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_google_link')
  String? get jobGoogleLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_min_salary')
  int? get jobMinSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_max_salary')
  int? get jobMaxSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_salary_currency')
  String? get jobSalaryCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_highlights')
  JobHighlights? get jobHighlights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employer_name')
          String? employerName,
      @JsonKey(name: 'job_id')
          String? jobId,
      @JsonKey(name: 'job_title')
          String? jobTitle,
      @JsonKey(name: 'employer_logo')
          String? employerLogo,
      @JsonKey(name: 'job_employment_type')
          String? jobEmploymentType,
      @JsonKey(name: 'job_apply_link')
          String? jobApplyLink,
      @JsonKey(name: 'job_description')
          String? jobDescription,
      @JsonKey(name: 'job_is_remote')
          bool? jobIsRemote,
      @JsonKey(name: 'job_posted_at_datetime_utc', fromJson: getDateTimeFromUTCString)
          DateTime? jobPostedAtDatetimeUtc,
      @JsonKey(name: 'job_city')
          String? jobCity,
      @JsonKey(name: 'job_state')
          String? jobState,
      @JsonKey(name: 'job_country')
          String? jobCountry,
      @JsonKey(name: 'job_google_link')
          String? jobGoogleLink,
      @JsonKey(name: 'job_min_salary')
          int? jobMinSalary,
      @JsonKey(name: 'job_max_salary')
          int? jobMaxSalary,
      @JsonKey(name: 'job_salary_currency')
          String? jobSalaryCurrency,
      @JsonKey(name: 'job_highlights')
          JobHighlights? jobHighlights});

  $JobHighlightsCopyWith<$Res>? get jobHighlights;
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employerName = freezed,
    Object? jobId = freezed,
    Object? jobTitle = freezed,
    Object? employerLogo = freezed,
    Object? jobEmploymentType = freezed,
    Object? jobApplyLink = freezed,
    Object? jobDescription = freezed,
    Object? jobIsRemote = freezed,
    Object? jobPostedAtDatetimeUtc = freezed,
    Object? jobCity = freezed,
    Object? jobState = freezed,
    Object? jobCountry = freezed,
    Object? jobGoogleLink = freezed,
    Object? jobMinSalary = freezed,
    Object? jobMaxSalary = freezed,
    Object? jobSalaryCurrency = freezed,
    Object? jobHighlights = freezed,
  }) {
    return _then(_value.copyWith(
      employerName: freezed == employerName
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      employerLogo: freezed == employerLogo
          ? _value.employerLogo
          : employerLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      jobEmploymentType: freezed == jobEmploymentType
          ? _value.jobEmploymentType
          : jobEmploymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      jobApplyLink: freezed == jobApplyLink
          ? _value.jobApplyLink
          : jobApplyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobDescription: freezed == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      jobIsRemote: freezed == jobIsRemote
          ? _value.jobIsRemote
          : jobIsRemote // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobPostedAtDatetimeUtc: freezed == jobPostedAtDatetimeUtc
          ? _value.jobPostedAtDatetimeUtc
          : jobPostedAtDatetimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jobCity: freezed == jobCity
          ? _value.jobCity
          : jobCity // ignore: cast_nullable_to_non_nullable
              as String?,
      jobState: freezed == jobState
          ? _value.jobState
          : jobState // ignore: cast_nullable_to_non_nullable
              as String?,
      jobCountry: freezed == jobCountry
          ? _value.jobCountry
          : jobCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      jobGoogleLink: freezed == jobGoogleLink
          ? _value.jobGoogleLink
          : jobGoogleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobMinSalary: freezed == jobMinSalary
          ? _value.jobMinSalary
          : jobMinSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobMaxSalary: freezed == jobMaxSalary
          ? _value.jobMaxSalary
          : jobMaxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobSalaryCurrency: freezed == jobSalaryCurrency
          ? _value.jobSalaryCurrency
          : jobSalaryCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      jobHighlights: freezed == jobHighlights
          ? _value.jobHighlights
          : jobHighlights // ignore: cast_nullable_to_non_nullable
              as JobHighlights?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobHighlightsCopyWith<$Res>? get jobHighlights {
    if (_value.jobHighlights == null) {
      return null;
    }

    return $JobHighlightsCopyWith<$Res>(_value.jobHighlights!, (value) {
      return _then(_value.copyWith(jobHighlights: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$_JobCopyWith(_$_Job value, $Res Function(_$_Job) then) =
      __$$_JobCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employer_name')
          String? employerName,
      @JsonKey(name: 'job_id')
          String? jobId,
      @JsonKey(name: 'job_title')
          String? jobTitle,
      @JsonKey(name: 'employer_logo')
          String? employerLogo,
      @JsonKey(name: 'job_employment_type')
          String? jobEmploymentType,
      @JsonKey(name: 'job_apply_link')
          String? jobApplyLink,
      @JsonKey(name: 'job_description')
          String? jobDescription,
      @JsonKey(name: 'job_is_remote')
          bool? jobIsRemote,
      @JsonKey(name: 'job_posted_at_datetime_utc', fromJson: getDateTimeFromUTCString)
          DateTime? jobPostedAtDatetimeUtc,
      @JsonKey(name: 'job_city')
          String? jobCity,
      @JsonKey(name: 'job_state')
          String? jobState,
      @JsonKey(name: 'job_country')
          String? jobCountry,
      @JsonKey(name: 'job_google_link')
          String? jobGoogleLink,
      @JsonKey(name: 'job_min_salary')
          int? jobMinSalary,
      @JsonKey(name: 'job_max_salary')
          int? jobMaxSalary,
      @JsonKey(name: 'job_salary_currency')
          String? jobSalaryCurrency,
      @JsonKey(name: 'job_highlights')
          JobHighlights? jobHighlights});

  @override
  $JobHighlightsCopyWith<$Res>? get jobHighlights;
}

/// @nodoc
class __$$_JobCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$_Job>
    implements _$$_JobCopyWith<$Res> {
  __$$_JobCopyWithImpl(_$_Job _value, $Res Function(_$_Job) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employerName = freezed,
    Object? jobId = freezed,
    Object? jobTitle = freezed,
    Object? employerLogo = freezed,
    Object? jobEmploymentType = freezed,
    Object? jobApplyLink = freezed,
    Object? jobDescription = freezed,
    Object? jobIsRemote = freezed,
    Object? jobPostedAtDatetimeUtc = freezed,
    Object? jobCity = freezed,
    Object? jobState = freezed,
    Object? jobCountry = freezed,
    Object? jobGoogleLink = freezed,
    Object? jobMinSalary = freezed,
    Object? jobMaxSalary = freezed,
    Object? jobSalaryCurrency = freezed,
    Object? jobHighlights = freezed,
  }) {
    return _then(_$_Job(
      employerName: freezed == employerName
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      employerLogo: freezed == employerLogo
          ? _value.employerLogo
          : employerLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      jobEmploymentType: freezed == jobEmploymentType
          ? _value.jobEmploymentType
          : jobEmploymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      jobApplyLink: freezed == jobApplyLink
          ? _value.jobApplyLink
          : jobApplyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobDescription: freezed == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      jobIsRemote: freezed == jobIsRemote
          ? _value.jobIsRemote
          : jobIsRemote // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobPostedAtDatetimeUtc: freezed == jobPostedAtDatetimeUtc
          ? _value.jobPostedAtDatetimeUtc
          : jobPostedAtDatetimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jobCity: freezed == jobCity
          ? _value.jobCity
          : jobCity // ignore: cast_nullable_to_non_nullable
              as String?,
      jobState: freezed == jobState
          ? _value.jobState
          : jobState // ignore: cast_nullable_to_non_nullable
              as String?,
      jobCountry: freezed == jobCountry
          ? _value.jobCountry
          : jobCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      jobGoogleLink: freezed == jobGoogleLink
          ? _value.jobGoogleLink
          : jobGoogleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      jobMinSalary: freezed == jobMinSalary
          ? _value.jobMinSalary
          : jobMinSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobMaxSalary: freezed == jobMaxSalary
          ? _value.jobMaxSalary
          : jobMaxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      jobSalaryCurrency: freezed == jobSalaryCurrency
          ? _value.jobSalaryCurrency
          : jobSalaryCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      jobHighlights: freezed == jobHighlights
          ? _value.jobHighlights
          : jobHighlights // ignore: cast_nullable_to_non_nullable
              as JobHighlights?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Job with DiagnosticableTreeMixin implements _Job {
  const _$_Job(
      {@JsonKey(name: 'employer_name')
          this.employerName,
      @JsonKey(name: 'job_id')
          this.jobId,
      @JsonKey(name: 'job_title')
          this.jobTitle,
      @JsonKey(name: 'employer_logo')
          this.employerLogo,
      @JsonKey(name: 'job_employment_type')
          this.jobEmploymentType,
      @JsonKey(name: 'job_apply_link')
          this.jobApplyLink,
      @JsonKey(name: 'job_description')
          this.jobDescription,
      @JsonKey(name: 'job_is_remote')
          this.jobIsRemote,
      @JsonKey(name: 'job_posted_at_datetime_utc', fromJson: getDateTimeFromUTCString)
          this.jobPostedAtDatetimeUtc,
      @JsonKey(name: 'job_city')
          this.jobCity,
      @JsonKey(name: 'job_state')
          this.jobState,
      @JsonKey(name: 'job_country')
          this.jobCountry,
      @JsonKey(name: 'job_google_link')
          this.jobGoogleLink,
      @JsonKey(name: 'job_min_salary')
          this.jobMinSalary,
      @JsonKey(name: 'job_max_salary')
          this.jobMaxSalary,
      @JsonKey(name: 'job_salary_currency')
          this.jobSalaryCurrency,
      @JsonKey(name: 'job_highlights')
          this.jobHighlights});

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  @override
  @JsonKey(name: 'employer_name')
  final String? employerName;
  @override
  @JsonKey(name: 'job_id')
  final String? jobId;
  @override
  @JsonKey(name: 'job_title')
  final String? jobTitle;
  @override
  @JsonKey(name: 'employer_logo')
  final String? employerLogo;
  @override
  @JsonKey(name: 'job_employment_type')
  final String? jobEmploymentType;
  @override
  @JsonKey(name: 'job_apply_link')
  final String? jobApplyLink;
  @override
  @JsonKey(name: 'job_description')
  final String? jobDescription;
  @override
  @JsonKey(name: 'job_is_remote')
  final bool? jobIsRemote;
  @override
  @JsonKey(
      name: 'job_posted_at_datetime_utc', fromJson: getDateTimeFromUTCString)
  final DateTime? jobPostedAtDatetimeUtc;
  @override
  @JsonKey(name: 'job_city')
  final String? jobCity;
  @override
  @JsonKey(name: 'job_state')
  final String? jobState;
  @override
  @JsonKey(name: 'job_country')
  final String? jobCountry;
  @override
  @JsonKey(name: 'job_google_link')
  final String? jobGoogleLink;
  @override
  @JsonKey(name: 'job_min_salary')
  final int? jobMinSalary;
  @override
  @JsonKey(name: 'job_max_salary')
  final int? jobMaxSalary;
  @override
  @JsonKey(name: 'job_salary_currency')
  final String? jobSalaryCurrency;
  @override
  @JsonKey(name: 'job_highlights')
  final JobHighlights? jobHighlights;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Job(employerName: $employerName, jobId: $jobId, jobTitle: $jobTitle, employerLogo: $employerLogo, jobEmploymentType: $jobEmploymentType, jobApplyLink: $jobApplyLink, jobDescription: $jobDescription, jobIsRemote: $jobIsRemote, jobPostedAtDatetimeUtc: $jobPostedAtDatetimeUtc, jobCity: $jobCity, jobState: $jobState, jobCountry: $jobCountry, jobGoogleLink: $jobGoogleLink, jobMinSalary: $jobMinSalary, jobMaxSalary: $jobMaxSalary, jobSalaryCurrency: $jobSalaryCurrency, jobHighlights: $jobHighlights)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Job'))
      ..add(DiagnosticsProperty('employerName', employerName))
      ..add(DiagnosticsProperty('jobId', jobId))
      ..add(DiagnosticsProperty('jobTitle', jobTitle))
      ..add(DiagnosticsProperty('employerLogo', employerLogo))
      ..add(DiagnosticsProperty('jobEmploymentType', jobEmploymentType))
      ..add(DiagnosticsProperty('jobApplyLink', jobApplyLink))
      ..add(DiagnosticsProperty('jobDescription', jobDescription))
      ..add(DiagnosticsProperty('jobIsRemote', jobIsRemote))
      ..add(
          DiagnosticsProperty('jobPostedAtDatetimeUtc', jobPostedAtDatetimeUtc))
      ..add(DiagnosticsProperty('jobCity', jobCity))
      ..add(DiagnosticsProperty('jobState', jobState))
      ..add(DiagnosticsProperty('jobCountry', jobCountry))
      ..add(DiagnosticsProperty('jobGoogleLink', jobGoogleLink))
      ..add(DiagnosticsProperty('jobMinSalary', jobMinSalary))
      ..add(DiagnosticsProperty('jobMaxSalary', jobMaxSalary))
      ..add(DiagnosticsProperty('jobSalaryCurrency', jobSalaryCurrency))
      ..add(DiagnosticsProperty('jobHighlights', jobHighlights));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Job &&
            (identical(other.employerName, employerName) ||
                other.employerName == employerName) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.employerLogo, employerLogo) ||
                other.employerLogo == employerLogo) &&
            (identical(other.jobEmploymentType, jobEmploymentType) ||
                other.jobEmploymentType == jobEmploymentType) &&
            (identical(other.jobApplyLink, jobApplyLink) ||
                other.jobApplyLink == jobApplyLink) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.jobIsRemote, jobIsRemote) ||
                other.jobIsRemote == jobIsRemote) &&
            (identical(other.jobPostedAtDatetimeUtc, jobPostedAtDatetimeUtc) ||
                other.jobPostedAtDatetimeUtc == jobPostedAtDatetimeUtc) &&
            (identical(other.jobCity, jobCity) || other.jobCity == jobCity) &&
            (identical(other.jobState, jobState) ||
                other.jobState == jobState) &&
            (identical(other.jobCountry, jobCountry) ||
                other.jobCountry == jobCountry) &&
            (identical(other.jobGoogleLink, jobGoogleLink) ||
                other.jobGoogleLink == jobGoogleLink) &&
            (identical(other.jobMinSalary, jobMinSalary) ||
                other.jobMinSalary == jobMinSalary) &&
            (identical(other.jobMaxSalary, jobMaxSalary) ||
                other.jobMaxSalary == jobMaxSalary) &&
            (identical(other.jobSalaryCurrency, jobSalaryCurrency) ||
                other.jobSalaryCurrency == jobSalaryCurrency) &&
            (identical(other.jobHighlights, jobHighlights) ||
                other.jobHighlights == jobHighlights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      employerName,
      jobId,
      jobTitle,
      employerLogo,
      jobEmploymentType,
      jobApplyLink,
      jobDescription,
      jobIsRemote,
      jobPostedAtDatetimeUtc,
      jobCity,
      jobState,
      jobCountry,
      jobGoogleLink,
      jobMinSalary,
      jobMaxSalary,
      jobSalaryCurrency,
      jobHighlights);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobCopyWith<_$_Job> get copyWith =>
      __$$_JobCopyWithImpl<_$_Job>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {@JsonKey(name: 'employer_name')
          final String? employerName,
      @JsonKey(name: 'job_id')
          final String? jobId,
      @JsonKey(name: 'job_title')
          final String? jobTitle,
      @JsonKey(name: 'employer_logo')
          final String? employerLogo,
      @JsonKey(name: 'job_employment_type')
          final String? jobEmploymentType,
      @JsonKey(name: 'job_apply_link')
          final String? jobApplyLink,
      @JsonKey(name: 'job_description')
          final String? jobDescription,
      @JsonKey(name: 'job_is_remote')
          final bool? jobIsRemote,
      @JsonKey(name: 'job_posted_at_datetime_utc', fromJson: getDateTimeFromUTCString)
          final DateTime? jobPostedAtDatetimeUtc,
      @JsonKey(name: 'job_city')
          final String? jobCity,
      @JsonKey(name: 'job_state')
          final String? jobState,
      @JsonKey(name: 'job_country')
          final String? jobCountry,
      @JsonKey(name: 'job_google_link')
          final String? jobGoogleLink,
      @JsonKey(name: 'job_min_salary')
          final int? jobMinSalary,
      @JsonKey(name: 'job_max_salary')
          final int? jobMaxSalary,
      @JsonKey(name: 'job_salary_currency')
          final String? jobSalaryCurrency,
      @JsonKey(name: 'job_highlights')
          final JobHighlights? jobHighlights}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override
  @JsonKey(name: 'employer_name')
  String? get employerName;
  @override
  @JsonKey(name: 'job_id')
  String? get jobId;
  @override
  @JsonKey(name: 'job_title')
  String? get jobTitle;
  @override
  @JsonKey(name: 'employer_logo')
  String? get employerLogo;
  @override
  @JsonKey(name: 'job_employment_type')
  String? get jobEmploymentType;
  @override
  @JsonKey(name: 'job_apply_link')
  String? get jobApplyLink;
  @override
  @JsonKey(name: 'job_description')
  String? get jobDescription;
  @override
  @JsonKey(name: 'job_is_remote')
  bool? get jobIsRemote;
  @override
  @JsonKey(
      name: 'job_posted_at_datetime_utc', fromJson: getDateTimeFromUTCString)
  DateTime? get jobPostedAtDatetimeUtc;
  @override
  @JsonKey(name: 'job_city')
  String? get jobCity;
  @override
  @JsonKey(name: 'job_state')
  String? get jobState;
  @override
  @JsonKey(name: 'job_country')
  String? get jobCountry;
  @override
  @JsonKey(name: 'job_google_link')
  String? get jobGoogleLink;
  @override
  @JsonKey(name: 'job_min_salary')
  int? get jobMinSalary;
  @override
  @JsonKey(name: 'job_max_salary')
  int? get jobMaxSalary;
  @override
  @JsonKey(name: 'job_salary_currency')
  String? get jobSalaryCurrency;
  @override
  @JsonKey(name: 'job_highlights')
  JobHighlights? get jobHighlights;
  @override
  @JsonKey(ignore: true)
  _$$_JobCopyWith<_$_Job> get copyWith => throw _privateConstructorUsedError;
}

JobHighlights _$JobHighlightsFromJson(Map<String, dynamic> json) {
  return _JobHighlights.fromJson(json);
}

/// @nodoc
mixin _$JobHighlights {
  @JsonKey(name: 'Qualifications')
  List<String>? get qualifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'Responsibilities')
  List<String>? get responsibilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobHighlightsCopyWith<JobHighlights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobHighlightsCopyWith<$Res> {
  factory $JobHighlightsCopyWith(
          JobHighlights value, $Res Function(JobHighlights) then) =
      _$JobHighlightsCopyWithImpl<$Res, JobHighlights>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Qualifications') List<String>? qualifications,
      @JsonKey(name: 'Responsibilities') List<String>? responsibilities});
}

/// @nodoc
class _$JobHighlightsCopyWithImpl<$Res, $Val extends JobHighlights>
    implements $JobHighlightsCopyWith<$Res> {
  _$JobHighlightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualifications = freezed,
    Object? responsibilities = freezed,
  }) {
    return _then(_value.copyWith(
      qualifications: freezed == qualifications
          ? _value.qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      responsibilities: freezed == responsibilities
          ? _value.responsibilities
          : responsibilities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobHighlightsCopyWith<$Res>
    implements $JobHighlightsCopyWith<$Res> {
  factory _$$_JobHighlightsCopyWith(
          _$_JobHighlights value, $Res Function(_$_JobHighlights) then) =
      __$$_JobHighlightsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Qualifications') List<String>? qualifications,
      @JsonKey(name: 'Responsibilities') List<String>? responsibilities});
}

/// @nodoc
class __$$_JobHighlightsCopyWithImpl<$Res>
    extends _$JobHighlightsCopyWithImpl<$Res, _$_JobHighlights>
    implements _$$_JobHighlightsCopyWith<$Res> {
  __$$_JobHighlightsCopyWithImpl(
      _$_JobHighlights _value, $Res Function(_$_JobHighlights) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualifications = freezed,
    Object? responsibilities = freezed,
  }) {
    return _then(_$_JobHighlights(
      qualifications: freezed == qualifications
          ? _value._qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      responsibilities: freezed == responsibilities
          ? _value._responsibilities
          : responsibilities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobHighlights with DiagnosticableTreeMixin implements _JobHighlights {
  const _$_JobHighlights(
      {@JsonKey(name: 'Qualifications') final List<String>? qualifications,
      @JsonKey(name: 'Responsibilities') final List<String>? responsibilities})
      : _qualifications = qualifications,
        _responsibilities = responsibilities;

  factory _$_JobHighlights.fromJson(Map<String, dynamic> json) =>
      _$$_JobHighlightsFromJson(json);

  final List<String>? _qualifications;
  @override
  @JsonKey(name: 'Qualifications')
  List<String>? get qualifications {
    final value = _qualifications;
    if (value == null) return null;
    if (_qualifications is EqualUnmodifiableListView) return _qualifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _responsibilities;
  @override
  @JsonKey(name: 'Responsibilities')
  List<String>? get responsibilities {
    final value = _responsibilities;
    if (value == null) return null;
    if (_responsibilities is EqualUnmodifiableListView)
      return _responsibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobHighlights(qualifications: $qualifications, responsibilities: $responsibilities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobHighlights'))
      ..add(DiagnosticsProperty('qualifications', qualifications))
      ..add(DiagnosticsProperty('responsibilities', responsibilities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobHighlights &&
            const DeepCollectionEquality()
                .equals(other._qualifications, _qualifications) &&
            const DeepCollectionEquality()
                .equals(other._responsibilities, _responsibilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_qualifications),
      const DeepCollectionEquality().hash(_responsibilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobHighlightsCopyWith<_$_JobHighlights> get copyWith =>
      __$$_JobHighlightsCopyWithImpl<_$_JobHighlights>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobHighlightsToJson(
      this,
    );
  }
}

abstract class _JobHighlights implements JobHighlights {
  const factory _JobHighlights(
      {@JsonKey(name: 'Qualifications')
          final List<String>? qualifications,
      @JsonKey(name: 'Responsibilities')
          final List<String>? responsibilities}) = _$_JobHighlights;

  factory _JobHighlights.fromJson(Map<String, dynamic> json) =
      _$_JobHighlights.fromJson;

  @override
  @JsonKey(name: 'Qualifications')
  List<String>? get qualifications;
  @override
  @JsonKey(name: 'Responsibilities')
  List<String>? get responsibilities;
  @override
  @JsonKey(ignore: true)
  _$$_JobHighlightsCopyWith<_$_JobHighlights> get copyWith =>
      throw _privateConstructorUsedError;
}
