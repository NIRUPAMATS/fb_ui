import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar:AppBar() ,

        body: Container(
          color: Color(0xff3b5998),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/5),
          child: Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height/5,),
              Text("facebook",style: TextStyle(fontFamily: 'A',color: Colors.white,fontSize: 50)),
              SizedBox(height:MediaQuery.of(context).size.height/6 ,),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "  Email or Phone",
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "  Password",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width:300,
                child: RaisedButton(

                  color:Color(0xff1d3d7d),
                  child: Text("Log In",style: TextStyle(color: Colors.white,fontFamily: 'A'),),
                  onPressed: () {},
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height/4),
              Container(

                width:MediaQuery.of(context).size.width ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children:[
                    SizedBox(width: 70,),
                  Container(
                  child: GestureDetector(
                    onTap: (){launch('https://open.spotify.com/playlist/18GohtNrNAEQKDoRGoCTt');},
                    child: Text("Sign Up For Facebook", style: TextStyle(decoration: TextDecoration.underline,color: Colors.white),
                    ),),

                ),

                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Container(

                        child: Center(child: Text("?",style: TextStyle(color:Colors.white,fontFamily: 'A'),)),
                        color: Color(0xff1d3d7d),
                        height: 20,
                        width: 20,
                      ),
                    )

                ],
                ),
              )

            ],),

        ),);
  }
}
