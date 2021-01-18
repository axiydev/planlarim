import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planlarim/pages/daily_page.dart';
import 'package:planlarim/widgets/chart_widget.dart';

import 'custom_widget.dart';
class HomeScreen extends StatefulWidget {
  static const String id='home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
enum _drop{This,Last,Next}
class _HomeScreenState extends State<HomeScreen> {
  _drop _progress=_drop.This;
  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        brightness: Brightness.light,
        leading: IconButton(
          onPressed: (){},
          icon: FaIcon(FontAwesomeIcons.borderAll),
          color: Colors.grey,
        ),
        backgroundColor:Color.fromRGBO(8,31, 34,1),
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
      body:SafeArea(
          child: Container(
            child:Column(
              children: [
                Container(
                  height: size.height*0.25,
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.only(left:20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:Color.fromRGBO(8,31, 34,1),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top:size.height*0.02*1.1,
                        child:RichText(
                          textAlign:TextAlign.start,
                          text:TextSpan(
                            text: 'Hi,Julia!\n',
                            style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w600,letterSpacing: 1.2),
                            children: [
                              TextSpan(
                                text:'Continue to work on your metal\nhealth and control all the sides of\nyour life',
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 15,letterSpacing: 1.3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child:ClipRRect(
                          child: Col(color: Colors.grey.withOpacity(0.4),height:20,width:size.height*0.15,width1: size.height*0.17,width2: size.height*0.19,width3: size.height*0.16,sizedB: 15,),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child:Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child:SingleChildScrollView(
                    child:Column(
                      children:[
                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Your progress',style:GoogleFonts.poppins(fontSize: 27,fontWeight: FontWeight.w600)),
                              DropdownButton(
                                value: _progress,
                                underline: Container(),
                                icon:FaIcon(FontAwesomeIcons.angleDown),
                                items:[
                                  DropdownMenuItem(
                                    child:Text(_drop.This.toString().substring(6)+' week',style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey[700]),),
                                    value: _drop.This,
                                  ),
                                  DropdownMenuItem(
                                    child:Text(_drop.Last.toString().substring(6)+' week',style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey[700]),),
                                    value: _drop.Last,
                                  ),
                                  DropdownMenuItem(
                                    child:Text(_drop.Next.toString().substring(6)+' week',style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey[700]),),
                                    value: _drop.Next,
                                  ),
                                ],
                                onChanged:(_drop item){
                                  setState(() {
                                    _progress=item;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        //#chart
                        Transform.translate(
                          child:Container(
                            child: ChartDart(),
                          ),
                          offset: Offset(0,-30),
                        ),
                        //statistics
                        Transform.translate(
                          offset: Offset(0,-35),
                          child:Container(
                            width: double.infinity,
                            child:Text('Statistics',style:GoogleFonts.poppins(fontSize: 27,fontWeight: FontWeight.w600)),
                          ),
                        ),
                        //  mywidgets
                        Transform.translate(
                          child:Container(
                            child:_ltile(context,'Stress Level','45% decrease',Color.fromRGBO(249,245, 225,1)),
                          ),
                          offset: Offset(0,-35),
                        ),
                        Transform.translate(
                          child:Container(
                            child:_ltile(context,'Achieve goals','12% increase',Color.fromRGBO(16, 78, 88,1)),
                          ),
                          offset: Offset(0,-35),
                        ),
                      ],
                    ),
                  ),
                ),),
              ],
            ),
          ),
        )
    );
  }
Container _ltile(BuildContext context,title,subtitle,color){
   final Size _size=MediaQuery.of(context).size;
   return Container(
     width: double.infinity,
     child:ListTile(
       leading: Container(
         height: _size.width*0.2,
         width: _size.width*0.15,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15),
           color: color,
         ),
       ),
       title: Text(title,style:GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600)),
       subtitle: Text(subtitle,style:GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey[600],)),
       trailing: IconButton(
         icon:FaIcon(FontAwesomeIcons.longArrowAltRight,color: Colors.grey[600],),
         onPressed: (){
           Navigator.pushNamed(context,DailyPage.id);
         },
       ),
     ),
   );
}
}
