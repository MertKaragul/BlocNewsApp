class Source{
  String? id;
  String? name;

  Source(this.id, this.name);

  Map<String,dynamic> toJson() => {
    "id": id,
    "name" : name
  };

  Source.fromJson(Map<String,dynamic> json) : 
  id = json["id"] as String?,
  name = json["name"] as String?;
}