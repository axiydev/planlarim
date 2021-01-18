class Post{
  String title;
  String subtitle;
  String img;
  Post(title,subtitle,img):
      this.title=title,
      this.subtitle=subtitle,
      this.img=img;
  Post.fromJson(Map<String,dynamic> json):this(json['title'],json['subtitle'],json['img']);
  Map<String,dynamic> toJson(){
    return {
      'title':this.title,
      'subtitle':this.subtitle,
      '_img':this.img,
    };
  }

}