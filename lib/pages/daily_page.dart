import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planlarim/models/post_model.dart';
import 'package:planlarim/pages/home_page.dart';

import 'detail_page.dart';
class DailyPage extends StatefulWidget {
  static const String id="daily_page";
  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  final Color _color=Color.fromRGBO(253, 243, 233,1);
  List<Post> lt=new List.from({
    Post('Morning Intention','Turn your mind,body and soul and let them work together','assets/images/ic_image.jpg','37465734'),
    Post('Morning Intention','Reduce a fear ankiety, stress, and negative thoughts','assets/images/ic_image2.png','37465734'),
    Post('Morning Intention','Decrases in brain cell volume in the amygdata','assets/images/ic_image1.jpg','37465734'),
    Post('Morning Intention','Decrases in brain cell volume in the amydata','assets/images/ic_image.jpg','37465734'),
    Post('Morning Intention','aksdkjahdfjdjhsjkshdjhfjsldhjflkdhgtruvhfiugfkdslfjlksdhfkdfkjdhskd','assets/images/ic_image2.png','37465734'),
    Post('Morning Intention','aksdkjahdfjdjhsjkshdjhfjsldhjflkdhgtruvhfiugfkdslfjlksdhfkdfkjdhskd','assets/images/ic_image1.jpg','37465734'),
    Post('Morning Intention','aksdkjahdfjdjhsjkshdjhfjsldhjflkdhgtruvhfiugfkdslfjlksdhfkdfkjdhskd','assets/images/ic_image2.png','37465734'),
    Post('Morning Intention','aksdkjahdfjdjhsjkshdjhfjsldhjflkdhgtruvhfiugfkdslfjlksdhfkdfkjdhskd','assets/images/ic_image.jpg','37465734'),
  });
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading:IconButton(
          icon: FaIcon(FontAwesomeIcons.longArrowAltLeft),
          onPressed: (){
            Navigator.pushReplacementNamed(context,HomeScreen.id);
          },
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.plusCircle),
            onPressed:(){
              Navigator.pushNamed(context,DetailPage.id);
            },
          ),
          IconButton(
            icon:FaIcon(FontAwesomeIcons.search),
            onPressed: (){},
          ),
          IconButton(
            icon:FaIcon(FontAwesomeIcons.bookmark),
            onPressed: (){},
          ),
          SizedBox(width: 15,),
        ],
        elevation: 0.0,
      ),
     body:SafeArea(
       child:Container(
         height: size.height,
         padding: EdgeInsets.symmetric(horizontal: 20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Expanded(
               flex: 1,
               child:Container(
               width: double.infinity,
               child:Text('Daily practises',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold),),
             ),
             ),
             Expanded(
               flex: 10,
               child:Container(
               child: SingleChildScrollView(
                 child:ListView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemCount: lt.length,
                     itemBuilder:(ctx,index){
                       return _posts(context,lt[index]);
                     }),
               ),
             ),
             ),
           ],
         ),
       ),
     ),
    );
  }
  Widget _posts(BuildContext context,Post post){
    final Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 20,),
      width: double.infinity,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child:Container(
            height:size.width*0.32,
            width:double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              border: Border.all(width: 0.5,color: Colors.grey),
              image:DecorationImage(
                image:AssetImage(post.img),
                fit: BoxFit.cover,
              ),
            ),
          ),),
          Spacer(flex: 1,),
          Expanded(
            flex: 11,
            child:Container(
              height: size.width*0.3,
              width: double.infinity,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex:3,
                    child:Container(
                    child:Text(post.title,style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w600),),
                  ),),
                  Spacer(flex: 1,),
                  Expanded(
                    flex:5,
                    child: Container(
                    child:Text(post.subtitle,style: GoogleFonts.poppins(color:Colors.grey[600],fontSize: 15,fontWeight: FontWeight.w500,height: 1)),
                  ),),
                  Expanded(
                    flex:3,
                    child: Container(
                    child:InkWell(
                      onTap: (){},
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Start now',style: GoogleFonts.poppins(color:Color.fromRGBO(8,31, 34,1),fontSize: 16,fontWeight: FontWeight.w500)),
                          SizedBox(width: 5,),
                          FaIcon(FontAwesomeIcons.chevronRight,size: 16,),
                        ],
                      ),
                    ),
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
