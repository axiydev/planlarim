import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planlarim/pages/daily_page.dart';
class DetailPage extends StatefulWidget {
  static const String id="detail_page";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        brightness: Brightness.light,
        backgroundColor:Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context,DailyPage.id);
          },
          icon: FaIcon(FontAwesomeIcons.longArrowAltLeft),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            icon:FaIcon(FontAwesomeIcons.search),
            onPressed: (){},
            color: Colors.grey,
          ),
          IconButton(
            icon:FaIcon(FontAwesomeIcons.bookmark),
            onPressed: (){},
            color: Colors.grey,
          ),
          SizedBox(width: 15,),
        ],
      ),
      body:Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
                  Container(
                    height: size.width*0.7,
                    width: size.width*0.7,
                    padding: EdgeInsets.all(20),
                    margin:EdgeInsets.only(bottom: 20,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/barg1.png',fit: BoxFit.cover,),
                    ),
                  ),
                  _field(context,'Title'),
                  _field(context,'Content'),
                  Container(
                margin: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                height: size.width*0.15,
                child:FlatButton(
                  onPressed: (){},
                  child:Text('Add',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color:Theme.of(context).textTheme.button.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _field(BuildContext context,title){
    final Size size =MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: size.width*0.15,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2,color:Theme.of(context).textTheme.button.color),
        ),
        child:Center(
          child: TextField(
            style:GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              hintText: title,
              hintStyle: GoogleFonts.poppins(fontSize: 20,color: Colors.grey[700],fontWeight: FontWeight.w500),
              border:InputBorder.none,
            ),
          ),
        )
    );
  }
}
