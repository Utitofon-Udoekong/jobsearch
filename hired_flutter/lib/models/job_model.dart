import 'dart:convert';

import 'package:flutter/foundation.dart';

class Job {
  final String employer_name;
  final String job_id;
  final String job_title;
  String? employer_logo;
  String? job_employment_type;
  String? job_apply_link;
  String? job_description;
  String? job_is_remote;
  String? job_posted_at_timestamp;
  String? job_posted_at_datetime_utc;
  String? job_city;
  String? job_state;
  String? job_country;
  String? job_google_link;
  String? job_min_salary;
  String? job_max_salary;
  String? job_salary_currency;
  final JobHighlights job_highlights;
  Job({
    required this.employer_name,
    required this.job_id,
    required this.job_title,
    this.employer_logo,
    this.job_employment_type,
    this.job_apply_link,
    this.job_description,
    this.job_is_remote,
    this.job_posted_at_timestamp,
    this.job_posted_at_datetime_utc,
    this.job_city,
    this.job_state,
    this.job_country,
    this.job_google_link,
    this.job_min_salary,
    this.job_max_salary,
    this.job_salary_currency,
    required this.job_highlights,
  });



  Job copyWith({
    String? employer_name,
    String? job_id,
    String? job_title,
    String? employer_logo,
    String? job_employment_type,
    String? job_apply_link,
    String? job_description,
    String? job_is_remote,
    String? job_posted_at_timestamp,
    String? job_posted_at_datetime_utc,
    String? job_city,
    String? job_state,
    String? job_country,
    String? job_google_link,
    String? job_min_salary,
    String? job_max_salary,
    String? job_salary_currency,
    JobHighlights? job_highlights,
  }) {
    return Job(
      employer_name: employer_name ?? this.employer_name,
      job_id: job_id ?? this.job_id,
      job_title: job_title ?? this.job_title,
      employer_logo: employer_logo ?? this.employer_logo,
      job_employment_type: job_employment_type ?? this.job_employment_type,
      job_apply_link: job_apply_link ?? this.job_apply_link,
      job_description: job_description ?? this.job_description,
      job_is_remote: job_is_remote ?? this.job_is_remote,
      job_posted_at_timestamp: job_posted_at_timestamp ?? this.job_posted_at_timestamp,
      job_posted_at_datetime_utc: job_posted_at_datetime_utc ?? this.job_posted_at_datetime_utc,
      job_city: job_city ?? this.job_city,
      job_state: job_state ?? this.job_state,
      job_country: job_country ?? this.job_country,
      job_google_link: job_google_link ?? this.job_google_link,
      job_min_salary: job_min_salary ?? this.job_min_salary,
      job_max_salary: job_max_salary ?? this.job_max_salary,
      job_salary_currency: job_salary_currency ?? this.job_salary_currency,
      job_highlights: job_highlights ?? this.job_highlights,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'employer_name': employer_name,
      'job_id': job_id,
      'job_title': job_title,
      'employer_logo': employer_logo,
      'job_employment_type': job_employment_type,
      'job_apply_link': job_apply_link,
      'job_description': job_description,
      'job_is_remote': job_is_remote,
      'job_posted_at_timestamp': job_posted_at_timestamp,
      'job_posted_at_datetime_utc': job_posted_at_datetime_utc,
      'job_city': job_city,
      'job_state': job_state,
      'job_country': job_country,
      'job_google_link': job_google_link,
      'job_min_salary': job_min_salary,
      'job_max_salary': job_max_salary,
      'job_salary_currency': job_salary_currency,
      'job_highlights': job_highlights.toMap(),
    };
  }

  factory Job.fromMap(Map<String, dynamic> map) {
    return Job(
      employer_name: map['employer_name'] ?? '',
      job_id: map['job_id'] ?? '',
      job_title: map['job_title'] ?? '',
      employer_logo: map['employer_logo'],
      job_employment_type: map['job_employment_type'],
      job_apply_link: map['job_apply_link'],
      job_description: map['job_description'],
      job_is_remote: map['job_is_remote'],
      job_posted_at_timestamp: map['job_posted_at_timestamp'],
      job_posted_at_datetime_utc: map['job_posted_at_datetime_utc'],
      job_city: map['job_city'],
      job_state: map['job_state'],
      job_country: map['job_country'],
      job_google_link: map['job_google_link'],
      job_min_salary: map['job_min_salary'],
      job_max_salary: map['job_max_salary'],
      job_salary_currency: map['job_salary_currency'],
      job_highlights: JobHighlights.fromMap(map['job_highlights']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Job.fromJson(String source) => Job.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Job(employer_name: $employer_name, job_id: $job_id, job_title: $job_title, employer_logo: $employer_logo, job_employment_type: $job_employment_type, job_apply_link: $job_apply_link, job_description: $job_description, job_is_remote: $job_is_remote, job_posted_at_timestamp: $job_posted_at_timestamp, job_posted_at_datetime_utc: $job_posted_at_datetime_utc, job_city: $job_city, job_state: $job_state, job_country: $job_country, job_google_link: $job_google_link, job_min_salary: $job_min_salary, job_max_salary: $job_max_salary, job_salary_currency: $job_salary_currency, job_highlights: $job_highlights)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Job &&
      other.employer_name == employer_name &&
      other.job_id == job_id &&
      other.job_title == job_title &&
      other.employer_logo == employer_logo &&
      other.job_employment_type == job_employment_type &&
      other.job_apply_link == job_apply_link &&
      other.job_description == job_description &&
      other.job_is_remote == job_is_remote &&
      other.job_posted_at_timestamp == job_posted_at_timestamp &&
      other.job_posted_at_datetime_utc == job_posted_at_datetime_utc &&
      other.job_city == job_city &&
      other.job_state == job_state &&
      other.job_country == job_country &&
      other.job_google_link == job_google_link &&
      other.job_min_salary == job_min_salary &&
      other.job_max_salary == job_max_salary &&
      other.job_salary_currency == job_salary_currency &&
      other.job_highlights == job_highlights;
  }

  @override
  int get hashCode {
    return employer_name.hashCode ^
      job_id.hashCode ^
      job_title.hashCode ^
      employer_logo.hashCode ^
      job_employment_type.hashCode ^
      job_apply_link.hashCode ^
      job_description.hashCode ^
      job_is_remote.hashCode ^
      job_posted_at_timestamp.hashCode ^
      job_posted_at_datetime_utc.hashCode ^
      job_city.hashCode ^
      job_state.hashCode ^
      job_country.hashCode ^
      job_google_link.hashCode ^
      job_min_salary.hashCode ^
      job_max_salary.hashCode ^
      job_salary_currency.hashCode ^
      job_highlights.hashCode;
  }
}


class JobHighlights {
  List<String>? Qualifications;
  List<String>? Responsibilities;
  List<String>? Benefits;

  JobHighlights({
    this.Qualifications,
    this.Responsibilities,
    this.Benefits,
  });

  Map<String, dynamic> toMap() {
    return {
      'Qualifications': Qualifications,
      'Responsibilities': Responsibilities,
      'Benefits': Benefits,
    };
  }

  factory JobHighlights.fromMap(Map<String, dynamic> map) {
    return JobHighlights(
      Qualifications: List<String>.from(map['Qualifications']),
      Responsibilities: List<String>.from(map['Responsibilities']),
      Benefits: List<String>.from(map['Benefits']),
    );
  }


  @override
  String toString() => 'JobHighlights(Qualifications: $Qualifications, Responsibilities: $Responsibilities, Benefits: $Benefits)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is JobHighlights &&
      listEquals(other.Qualifications, Qualifications) &&
      listEquals(other.Responsibilities, Responsibilities) &&
      listEquals(other.Benefits, Benefits);
  }

  @override
  int get hashCode => Qualifications.hashCode ^ Responsibilities.hashCode ^ Benefits.hashCode;
}

// const options = {
//   method: 'GET',
//   url: 'https://jsearch.p.rapidapi.com/search',
//   params: {
//     query: 'Python developer in Texas, USA',
//     page: '1',
//     num_pages: '1',
//     date_posted: '3days',
//     remote_jobs_only: 'true'
//   },
//   headers: {
//     'X-RapidAPI-Key': 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
//     'X-RapidAPI-Host': 'jsearch.p.rapidapi.com'
//   }
// };