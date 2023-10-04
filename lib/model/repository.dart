


class repos{
  late int id;
  late String ProjectName;
  late String Visibility;

  repos(this.id,  this.ProjectName, this.Visibility);


 repos.fromJson(Map<String, dynamic> parsedJson) {
   id = parsedJson['id'];
   ProjectName = parsedJson['ProjectName'];
   Visibility = parsedJson['Visibility'];
 }

}

