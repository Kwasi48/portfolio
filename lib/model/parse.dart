import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:portfolio/model/repository.dart';

Future<List> readJson() async {
  final String response = await rootBundle.loadString('assets/data.json');
  final data = await json.decode(response);
  final reposData = data['repos'];
  List projects = reposData.map((i) => repos.fromJson(i)).toList();
  return projects;
}