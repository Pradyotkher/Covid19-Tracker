import 'package:http/http.dart' as http;
import 'dart:convert';
class GetInfo {
  int Confirmed_cases;
  String url = 'https://api.covid19api.com/summary';

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);
      Confirmed_cases = decodeData['Global']['TotalConfirmed'];
      return Confirmed_cases;
    }
    else {
      print('ERROR');
      print(response.statusCode);
    }
  }

  Future getDeathCases() async {
    int death_cases;
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);
      death_cases = decodeData['Global']['TotalDeaths'];
      return death_cases;
    }
    else {
      print('ERROR');
      print(response.statusCode);
    }
  }

  Future getRecovered() async {
    int recovered;
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);
      recovered = decodeData['Global']['TotalRecovered'];
      return recovered;
    }
    else {
      print(response.statusCode);
      print('ERROR');
    }
  }

  Future getDecodeData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);
      return decodeData;
    }
    else {
      print(response.statusCode);
      return null;
    }
  }



}