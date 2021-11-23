import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tugasuts/screen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      
    );
  }
}

class LoginPage extends StatelessWidget {
    final myUsernameController = TextEditingController();
    final myPasswordController = TextEditingController();
    late String nUsername, nPassword;
    
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Page Login'),
        ),
      
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              //cek data field
              validator: (value){
                if (value!.isEmpty) {
                  return 'Silahkan isi username';
                }else if(value != 'admin') {
                  return 'Username tidak sesuai';
                }
                return null;
              },
              
              controller: myUsernameController,
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Silahkan isi password';
                }else if(nPassword != 'admin') {
                  return 'Password tidak sesuai';
                }
                return null;
              },
              maxLength: 16,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              controller: myPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password'),
                ),
              SizedBox(
                height: 25.0,
              ),
              MaterialButton(
                minWidth: 85.0,
                height: 50.0,
                color: Colors.blue,
                
            
                onPressed: (){
                  
                  nUsername = myUsernameController.text;
                  nPassword = myPasswordController.text;

                  if(_formKey.currentState!.validate()) {
                    if(nUsername != 'admin') {
                      print("username tidak sesuai");
                    }else if(nPassword != 'admin') {
                      print("password tidak sesuai");
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeMenu(nama: nUsername, password: nPassword,)
                      ));
                    }
                  }
                },
                child: Text('Submit'),
                ),
                SizedBox(
                height: 25.0,
              ),
          ],
        )
      )
    );
  }
}
