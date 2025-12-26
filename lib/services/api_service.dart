import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/destination.dart';

class ApiService {
  static const String baseUrl = 'http://10.0.2.2:8080/api';

  static Future<List<Destination>> fetchPopularDestinations() async {
    final url = Uri.parse('$baseUrl/destinations/popular');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> body = jsonDecode(response.body);
        return body.map((dynamic item) => Destination.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load destinations: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to connect to API: $e');
    }
  }
}
