import 'package:bmi_cal_abdullah/modules/input_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool isobscureText = true  ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey ,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailController ,
                    decoration: InputDecoration(
                      labelText: "EmailAdress",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if(value.isEmpty)
                        {
                          // ignore: missing_return
                          return 'Email Adress must not be embty';
                        }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      if(formKey.currentState.validate()) {
                        print(value);
                      }
                        },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isobscureText = !isobscureText ;
                              //isobscureText ? isobscureText = false : isobscureText = true;
                            });
                          },
                          icon : Icon(Icons.remove_red_eye)
                      ),
                    ),
                    validator: (value) {
                      if(value.isEmpty)
                      {
                        // ignore: missing_return
                        return 'Password must not be embty';
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      if(formKey.currentState.validate()) {
                        print(value);
                      }
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    obscureText: isobscureText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink,

                    ),

                    child: MaterialButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if(formKey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InputPage(),
                                ));
                          }
                          return null;
                        });


                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?"
                      ),
                      MaterialButton(
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: Colors.pink
                          ),
                        ),
                        onPressed: () {

                        },

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
