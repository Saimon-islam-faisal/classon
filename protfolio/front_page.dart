import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_info.dart';
import 'menu.dart';



class front_page extends StatefulWidget {
  const front_page({super.key});

  @override
  State<front_page> createState() => _front_pageState();
}

class _front_pageState extends State<front_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      drawer: menu(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(CupertinoIcons.profile_circled,size: 25.0),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => contact_info())
                );
              },
            ),
          ),
        ],
      ),


      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/front_page.jpg'),
                fit: BoxFit.cover
            )
        ),


        child:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                SizedBox(height: 300.0),
                Center(child: Text('RAKIB  HASAN',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'files/t1.ttf'))),

                Divider(thickness: 5,color: Colors.red),
                Center(child: Text('Failue | Self-Motivated | Fast-Learner',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'files/t1.ttf'))),

                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white70,),
                        child: SignInButton(
                          onPressed: () {


                            final Uri emailUri = Uri(

                              scheme: 'mailto',
                              path:  'rakib15-3948@diu.edu.bd',

                            );

                            launchUrl(emailUri);


                          },
                          splashColor: Colors.red,
                          button: Button.Email,
                          mini: true,
                        ),
                      ),

                      SizedBox(width: 5.0),
                      Container(
                        child: Link(
                          target: LinkTarget.self,
                          uri: Uri.parse('https://www.linkedin.com/in/rakibhasan3948/'),
                          builder: (context, followLink) => SignInButton(
                            onPressed: followLink,
                            splashColor: Colors.red,
                            button: Button.LinkedIn,
                            mini: true,
                          ),
                        ),
                      ),

                      SizedBox(width: 5.0),
                      Container(
                        child: Link(
                          target: LinkTarget.self,
                          uri: Uri.parse('https://github.com/rakibhasan3948'),
                          builder: (context, followLink) => SignInButton(
                            onPressed: followLink,
                            splashColor: Colors.red,
                            button: Button.GitHub,
                            mini: true,
                          ),
                        ),
                      ),

                      SizedBox(width: 5.0),
                      Container(
                        child: Link(
                          target: LinkTarget.self,
                          uri: Uri.parse('https://www.facebook.com/profile.php?id=100094452325336'),
                          builder: (context, followLink) => SignInButton(
                            onPressed: followLink,
                            splashColor: Colors.red,
                            button: Button.Facebook,
                            mini: true,
                          ),
                        ),
                      ),



                    ],
                  ),
                )
              ],
            ),
          ),
        ),


      ),

    );
  }
}