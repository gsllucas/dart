import 'dart:convert';

void main() {
  String jsonData() {
    return """
      {
        "id": 1,
        "name": "Lucas",
        "last_name": "Silva",
        "faculdade": true,
        "cursos": ["javascript", "dart", "typescript"],
        "endereco": {
          "cidade": "Brasília",
          "bairro": "Bairro",
          "numero": 0
        }
      }
    """;
  }

  // O json decode transforma uma string json para um map no dart
  final data = jsonData();
  Map<String, dynamic> datasource = json.decode(data);

  final cursos = datasource['cursos'] as List;
  for (String curso in cursos) {
    print(curso);
  }

  final isList = datasource['cursos'] is List;
  final isListWell = datasource['id'] is List;
  print(isList);
  print(isListWell);

  final jsonString = jsonData();
  Map<String, dynamic> mapDatasource = json.decode(jsonString);
  print(mapDatasource);
  final city = mapDatasource['endereco']['cidade'];
  print(city);

  // O json encode transform um Map em uma string json;

  final mapToJson = json.encode(mapDatasource);
  print(mapToJson);
}
