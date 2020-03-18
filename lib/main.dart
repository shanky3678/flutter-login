import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
      
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeInCirc);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }
  var value = true;
  void _show(){

                   if(value == true){
                             value = false;
                           }else{
                             value = true;
                           }
                         
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    
        return Scaffold(
          backgroundColor: Colors.black,
          body: new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage("assets/music.jpg"),
                fit: BoxFit.cover,
                color: Colors.black87,
                colorBlendMode: BlendMode.darken,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(
                    size: _iconAnimation.value * 100,
                  ),
                  Form(
                    child: Theme(
                      data: new ThemeData(
                          brightness: Brightness.dark, primarySwatch: Colors.teal),
                      child: Container(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(hintText: "Email"),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            
                            TextFormField(
                              decoration: InputDecoration(hintText: "Password"),
                              keyboardType: TextInputType.text,
                              obscureText: value,
                        ),
                      //  FlatButton(
                      //    color: Colors.green,
                      //    textColor: Colors.white,
                      //    child: Text('show'),
                      //    splashColor: Colors.redAccent,
                      //    onPressed: _show,
                      //  ), 
                        FlatButton(
                          // RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text('Login'),
                          splashColor: Colors.redAccent,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<MyApp>{

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
