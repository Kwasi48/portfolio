import 'package:flutter/material.dart';
import 'package:portfolio/model/parse.dart';




class projects extends StatefulWidget {
  projects({super.key});

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  late Parser parser;
   List projects = [] ;
   int reposCount = 0;

  @override
  void initState(){
    parser = Parser();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle_outlined),
        title: Text('Repositories'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount:  reposCount,
            itemBuilder: (BuildContext context, int index){
          return Card(
            child: ListTile(
              leading: Text(projects[index].id),
              title: Text(projects[index].ProjectName),
              subtitle: Text(projects[index].Visibility),
            ),
          );
        }),
      ),
    );
  }


  Future initialize() async {
    projects  = await parser.readJson();
    setState(() {
      reposCount = projects.length;
      projects = projects;
    });
  }
}
