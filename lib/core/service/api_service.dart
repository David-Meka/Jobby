import 'package:dio/dio.dart';
import 'package:jobby/core/models/job.dart';
import 'package:jobby/core/constant/api_constant.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiConstant.baseUrl));

  Future<List<Job>> getJobs() async {
    try {
      final response = await _dio.get('/jobs');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) {
          return Job(
            id: json['id'],
            title: json['title'],
            companyName: json['company'],
            location: json['location'],
            country: json['country'],
            fullJobDescription: json['fullJobDescription'],
          );
        }).toList();
      } else {
        throw Exception('Failed to load jobs');
      }
    } catch (e) {
      throw Exception('Error fetching jobs: $e');
    }
  }
}
