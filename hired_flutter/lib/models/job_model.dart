import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'job_model.freezed.dart';
part 'job_model.g.dart';


@freezed
class Job with _$Job {
  const factory Job({
    @JsonKey(name: 'employer_name') String? employerName,
    @JsonKey(name: 'job_id') String? jobId,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'employer_logo') String? employerLogo,
    @JsonKey(name: 'job_employment_type') String? jobEmploymentType,
    @JsonKey(name: 'job_apply_link') String? jobApplyLink,
    @JsonKey(name: 'job_description') String? jobDescription,
    @JsonKey(name: 'job_is_remote') bool? jobIsRemote,
    @JsonKey(name: 'job_posted_at_datetime_utc') String? jobPostedAtDatetimeUtc,
    @JsonKey(name: 'job_city') String? jobCity,
    @JsonKey(name: 'job_state') String? jobState,
    @JsonKey(name: 'job_country') String? jobCountry,
    @JsonKey(name: 'job_google_link') String? jobGoogleLink,
    @JsonKey(name: 'job_min_salary') int? jobMinSalary,
    @JsonKey(name: 'job_max_salary') int? jobMaxSalary,
    @JsonKey(name: 'job_salary_currency') String? jobSalaryCurrency,
    @JsonKey(name: 'job_highlights') JobHighlights? jobHighlights,
  }) = _Job;

  factory Job.empty() => const Job();
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
  
}


@freezed
class JobHighlights with _$JobHighlights {
  const factory JobHighlights({
    @JsonKey(name: 'Qualifications') List<String>? qualifications,
    @JsonKey(name: 'Responsibilities') List<String>? responsibilities,
  }) = _JobHighlights;
  factory JobHighlights.empty() => const JobHighlights();
  factory JobHighlights.fromJson(Map<String, dynamic> json) => _$JobHighlightsFromJson(json);

}

