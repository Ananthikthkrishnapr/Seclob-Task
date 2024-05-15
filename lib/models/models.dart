class UserDeatailsClass { 
  String? sts; 
  String? msg; 
  int? postCount; 
  List<Media>? media; 
 
  UserDeatailsClass({this.sts, this.msg, this.postCount, this.media}); 
 
  UserDeatailsClass.fromJson(Map<String, dynamic> json) { 
    sts = json['sts']; 
    msg = json['msg']; 
    postCount = json['postCount']; 
    if (json['media'] != null) { 
      media = <Media>[]; 
      json['media'].forEach((v) { 
        media!.add(new Media.fromJson(v)); 
      }); 
    } 
  } 
 
  Map<String, dynamic> toJson() { 
    final Map<String, dynamic> data = new Map<String, dynamic>(); 
    data['sts'] = this.sts; 
    data['msg'] = this.msg; 
    data['postCount'] = this.postCount; 
    if (this.media != null) { 
      data['media'] = this.media!.map((v) => v.toJson()).toList(); 
    } 
    return data; 
  } 
} 
 
class Media { 
  String? filePath; 
 
  int? likeCount; 
 
  int? commentCount; 
  String? description; 
 
  String? firstName; 
  String? lastName; 
  String? profilePic; 
 
  Media( 
      {this.filePath, 
      this.likeCount, 
      this.description, 
      this.commentCount, 
      this.firstName, 
      this.lastName, 
      this.profilePic}); 
 
  Media.fromJson(Map<String, dynamic> json) { 
    filePath = json['filePath']; 
    likeCount = json['likeCount']; 
    description = json['description']; 
    commentCount = json['commentCount']; 
    firstName = json['firstName']; 
    lastName = json['lastName']; 
    profilePic = json['profilePic']; 
  } 
 
  Map<String, dynamic> toJson() { 
    final Map<String, dynamic> data = new Map<String, dynamic>(); 
 
    data['filePath'] = this.filePath; 
    data['likeCount'] = this.likeCount; 
    data['description'] = this.description; 
    data['commentCount'] = this.commentCount; 
    data['firstName'] = this.firstName; 
    data['lastName'] = this.lastName; 
    data['profilePic'] = this.profilePic; 
    return data; 
  } 
}