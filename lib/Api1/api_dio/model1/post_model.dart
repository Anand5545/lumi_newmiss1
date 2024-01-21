// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);



class PostModel {
    int? userId;
    int? id;
    String? title;
    String? body;

    PostModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

     PostModel.fromJson(Map<String, dynamic> json) {
        userId= json["userId"];
        id= json["id"];
        title= json["title"];
        body= json["body"];
    }
    
}
