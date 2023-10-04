import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:portfolio/model/repository.dart';

class Parser{

  Future<List> readJson() async {
    final String response = await rootBundle.loadString('assets/repos.json');
    final data = await json.decode(response);
    final reposData = data["repos"];
    List projects = reposData.map((i) => repos.fromJson(i)).toList();
    return projects;
  }
}
