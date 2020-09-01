import 'dart:convert';

import 'package:httptest/http/webclient.dart';
import 'dart:html';
import 'package:httptest/models/pessoa.dart';

class PessoasWebClient {
  Future<List<Pessoa>> findAll() async {
    var body = await HttpRequest.getString(baseUrl);
    // final Response response =
    //     await client.get(baseUrl).catchError((e) => print(e.toString()));
    print(body);
    final List<dynamic> decodedJson = jsonDecode(body);
    return decodedJson.map((dynamic json) => Pessoa.fromJson(json)).toList();
  }
}
