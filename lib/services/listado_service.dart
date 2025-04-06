import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/meal_model.dart';

class ListadoService {
  static Future<List<Meal>> obtenerListadoPlatos() async {
    final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List meals = data['meals'];

      return meals.map((mealJson) => Meal.fromJson(mealJson)).toList();
    } else {
      throw Exception('No se pudieron cargar los platos');
    }
  }
}
