class Post{
  String title;
  String subtitle;
  String img;
  String userId;
  Post(title,subtitle,img,userId):
      this.title=title,
      this.subtitle=subtitle,
      this.img=img,
      this.userId=userId;
  Post.fromJson(Map<String,dynamic> json):this(json['title'],json['subtitle'],json['img'],json['userId']);
  Map<String,dynamic> toJson(){
    return {
      'title':this.title,
      'subtitle':this.subtitle,
      '_img':this.img,
      'userId':this.userId,
    };
  }

}