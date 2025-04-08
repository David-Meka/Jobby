import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  const factory Job({
    required String id,
    required String title,
    required String companyName,
    required String country,
    required String location,
    required String fullJobDescription,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}

/*{
    "title": "Global Data Administrator",
    "company": "Langworth, Willms and Medhurst",
    "location": "Svenberg",
    "description": "National",
    "country": "North Macedonia",
    "fullJobDescription": "At Langworth, Willms and Medhurst, the Global Data Administrator is responsible for overseeing all aspects of national operations. This role requires excellent communication skills, strategic thinking, and the ability to work in a fast-paced environment. The ideal candidate will have at least 5 years of experience in accounts management, with a proven track record of delivering results. Our company is a leader in accounts solutions, serving clients across North Macedonia and beyond.",
    "id": "1"
  },
  */
