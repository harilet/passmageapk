import 'dart:async';
import 'dart:convert';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

Future fetchServs() async {
  final response = await http.get('http://192.168.1.101:5000');

  if (response.statusCode == 200) {
    var list =
        json.decode(response.body)['serv'].map((data) => data['Serv']).toList();
    return list;
  } else {
    throw Exception('Failed to load album');
  }
}
