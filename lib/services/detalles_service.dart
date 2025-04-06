import 'dart:convert';
import 'package:http/http.dart' as http;

class DetallesService {
  static Future<Map<String, dynamic>> obtenerDetallePlato(String id) async {
    final url = Uri.parse('https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id');
    final response = await http.get(url);
    final data = json.decode(response.body);
    return data['meals'][0];
  }
}
