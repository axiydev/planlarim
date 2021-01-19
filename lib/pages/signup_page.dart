import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planlarim/pages/signin_page.dart';

import 'custom_widget.dart';
class SignUp extends StatefulWidget {
  static const String id='signup_page';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child:Stack(
          children: [
            Transform.scale(
              scale:0.7,
              child: Transform.translate(
                offset:Offset(0,-size.width*0.5),
                child: Positioned(
                  top: 0.0,
                  right: size.width*0.3,
                  child: Image.asset('assets/images/barg1.png',fit: BoxFit.cover,),
                ),
              ),
            ),
            Positioned(
              right: 0.0,
              bottom: size.width*0.2,
              child:Col(color: Colors.grey[700],height: 20,width: size.width*0.12,width1: size.width*0.15,width2: size.width*0.2,width3: size.width*0.09,sizedB: size.width*0.02,),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(child:_fields(context, 'Name',false),),
                  Flexible(child:_fields(context, 'Email',false),),
                  Flexible(child: _fields(context, 'Password',true),),
                  Flexible(child: _fields(context, 'Confirm Password',true),),
                  Flexible(
                    child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    height: size.width*0.15,
                    child:FlatButton(
                      onPressed: (){},
                      child:Text('Sign Up',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color:Theme.of(context).textTheme.button.color,
                    ),
                  ),),
                  Flexible(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: double.infinity,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(child:Text('Already have an account? ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500),)),
                            Flexible(child:InkWell(child:Text('Sign In',style: GoogleFonts.poppins(fontSize: 13,color:Theme.of(context).textTheme.button.color,fontWeight: FontWeight.w500),),onTap: (){Navigator.pushReplacementNamed(context,SignIn.id);},),),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _fields(BuildContext context,title,obs){
    final Size size=MediaQuery.of(context).size;
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
            obscureText: obs,
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
