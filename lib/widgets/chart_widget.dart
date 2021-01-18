import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ChartDart extends StatelessWidget {
  static const String id='chart_dart';
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Container(
      height:size.height*0.4,
      width:size.width,
      child:Stack(
        children: [
          Column(
            children: [
              Flexible(child: Align(alignment: Alignment.bottomCenter,child: Divider(thickness: 1,color: Colors.grey[500],indent: size.width*0.03,endIndent:size.width*0.099,),)),
              Flexible(child: Align(alignment: Alignment.bottomCenter,child: Divider(thickness: 1,color: Colors.grey[500],indent: size.width*0.03,endIndent:size.width*0.099,),)),
              Flexible(child: Align(alignment: Alignment.bottomCenter,child: Divider(thickness: 1,color: Colors.grey[500],indent: size.width*0.03,endIndent:size.width*0.099,),)),
              Flexible(child: Align(alignment: Alignment.bottomCenter,child: Divider(thickness: 1,color: Colors.grey[500],indent: size.width*0.03,endIndent:size.width*0.099,),)),
              Flexible(child:Container()),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child:Container(
                            margin: EdgeInsets.only(top: size.width*0.07,left: 5,right: 5),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 220, 120, 1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                          ),),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Text('Mo',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                            ),
                          ),)
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child:Container(
                            margin: EdgeInsets.only(top:size.width*0.2,left: 5,right: 5),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 233, 218,1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                          ),),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Text('Tu',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                            ),
                          ),)
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child:Container(
                            margin: EdgeInsets.only(top: size.width*0.33,left: 5,right: 5),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(19, 72, 82, 1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                          ),),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Text('We',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                            ),
                          ),)
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child:Container(
                            margin: EdgeInsets.only(top:size.width*0.099,left: 5,right: 5),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(240,238,217,1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                          ),),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Text('Th',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                            ),
                          ),)
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child:Container(
                            margin: EdgeInsets.only(top: size.width*0.38,left: 5,right: 5),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(188, 134, 90,1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                          ),),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Text('Fr',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                            ),
                          ),)
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child:Container(
                            margin: EdgeInsets.only(top: size.width*0.25,left: 5,right: 5),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 221, 112,1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                          ),),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Text('Sa',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                            ),
                          ),)
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child:Container(
                            margin: EdgeInsets.only(top: size.width*0.17,left: 5,right: 5),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(14, 78, 88,1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                          ),),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Text('Su',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                            ),
                          ),)
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            flex: 10,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child:Text('20',style: GoogleFonts.poppins(fontSize:20,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                                  ),
                                )),
                                Flexible(child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child:Text('15',style: GoogleFonts.poppins(fontSize:20,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                                  ),
                                )),
                                Flexible(child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child:Text('10',style: GoogleFonts.poppins(fontSize:20,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                                  ),
                                )),
                                Flexible(child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child:Text('5',style: GoogleFonts.poppins(fontSize:20,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
                                  ),
                                )),
                              ],
                            )
                        ),
                        Flexible(
                          flex: 2,
                          child:Container(
                            child: Center(
                              child:Container(),
                            ),
                          ),)
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
