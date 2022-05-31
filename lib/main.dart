import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Ui',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),

          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF82B2FF),
                  Color(0xFF2979EF),
                ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36.0,horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Login",style: TextStyle(color: Colors.white,fontSize: 46.0,fontWeight: FontWeight.w800),),

                        SizedBox(height: 10.0,),

                        Text("Enter to a torab's world",style: TextStyle(color: Colors.white,fontSize: 22.0,fontWeight: FontWeight.w300),),

                      ],
                    ),
                  )
              ),
              
              Expanded(
                flex: 5,
                  child: Container(
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          TextField(
                            keyboardType: TextInputType.emailAddress,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "E-mail",
                              prefixIcon: Icon(Icons.email,color: Color(0xFF757575),),
                            ),
                          ),


                          SizedBox(height: 20.0,),


                          TextField(
                            keyboardType: TextInputType.emailAddress,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Password",
                              prefixIcon: Icon(Icons.email,color: Color(0xFF757575),),
                            ),
                          ),


                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,

                            children: [
                              Text("Forget your password ?",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,),)
                            ],
                          ),


                          SizedBox(height: 50.0,),
                          Container(
                            width: double.infinity,

                            child: RaisedButton(
                                onPressed: (){},

                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),

                                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                              ),
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                  )

            ],
          ),
        ),
      ),
    );
  }
}


