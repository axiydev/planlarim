import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SimplePage extends StatefulWidget {
  static final String id='simple_page';
  @override
  _SimplePageState createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  String _email,_password;
  bool _showPassword=false;
  final _formKey=GlobalKey<FormState>();

  void _doLogin(){
  if(_formKey.currentState.validate()&&_showPassword==false){
   setState(() {
     _showPassword=true;
   });
  }else if(_formKey.currentState.validate()&&_showPassword==true){
    _formKey.currentState.save();
    print('WELCOME');
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email',
                  ),
                  validator: (input)=>input.length<0?'Input Pass':null,
                  onSaved: (input)=>_email=input,
                ),
              ),
              if(_showPassword)Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child:TextFormField(
                  decoration: InputDecoration(
                    hintText: 'pass',
                  ),
                  validator: (input)=>input.length<0?'Input Pass':null,
                  onSaved: (input)=>_email=input,
                ),
              ),
              FlatButton(onPressed: _doLogin, child:Text('Press'),color: Colors.blue,)
            ],
          ),
        ),
      ),
    );
  }
}
