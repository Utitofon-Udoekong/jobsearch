// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      employerName: json['employer_name'] as String?,
      jobId: json['job_id'] as String?,
      jobTitle: json['job_title'] as String?,
      employerLogo: json['employer_logo'] as String?,
      jobEmploymentType: json['job_employment_type'] as String?,
      jobApplyLink: json['job_apply_link'] as String?,
      jobDescription: json['job_description'] as String?,
      jobIsRemote: json['job_is_remote'] as bool?,
      jobPostedAtDatetimeUtc: json['job_posted_at_datetime_utc'] as String?,
      jobCity: json['job_city'] as String?,
      jobState: json['job_state'] as String?,
      jobCountry: json['job_country'] as String?,
      jobGoogleLink: json['job_google_link'] as String?,
      jobMinSalary: json['job_min_salary'] as int?,
      jobMaxSalary: json['job_max_salary'] as int?,
      jobSalaryCurrency: json['job_salary_currency'] as String?,
      jobHighlights: json['job_highlights'] == null
          ? null
          : JobHighlights.fromJson(
              json['job_highlights'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'employer_name': instance.employerName,
      'job_id': instance.jobId,
      'job_title': instance.jobTitle,
      'employer_logo': instance.employerLogo,
      'job_employment_type': instance.jobEmploymentType,
      'job_apply_link': instance.jobApplyLink,
      'job_description': instance.jobDescription,
      'job_is_remote': instance.jobIsRemote,
      'job_posted_at_datetime_utc': instance.jobPostedAtDatetimeUtc,
      'job_city': instance.jobCity,
      'job_state': instance.jobState,
      'job_country': instance.jobCountry,
      'job_google_link': instance.jobGoogleLink,
      'job_min_salary': instance.jobMinSalary,
      'job_max_salary': instance.jobMaxSalary,
      'job_salary_currency': instance.jobSalaryCurrency,
      'job_highlights': instance.jobHighlights,
    };

_$_JobHighlights _$$_JobHighlightsFromJson(Map<String, dynamic> json) =>
    _$_JobHighlights(
      qualifications: (json['Qualifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      responsibilities: (json['Responsibilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_JobHighlightsToJson(_$_JobHighlights instance) =>
    <String, dynamic>{
      'Qualifications': instance.qualifications,
      'Responsibilities': instance.responsibilities,
    };
