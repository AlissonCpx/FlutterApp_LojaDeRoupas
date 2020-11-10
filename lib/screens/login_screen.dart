import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrar"),
        centerTitle: true,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text(
              "CRIAR CONTA",
              style: TextStyle(fontSize: 15.0),
            ),
            textColor: Colors.white,
          )
        ],
      ),
      body: Form(
        key: formkey,
          child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "E-mail",
            ),
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            validator: (value) {
              if (value.isEmpty || !value.contains("@")){
                return "E-mail inválido!";
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Senha"),
            obscureText: true,
            validator: (value) {
              if (value.isEmpty || value.length < 6){
                return "Senha inválido!";
              }
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Text(
                  "Esqueci minha senha",
                  textAlign: TextAlign.right,
                )),
          ),
          SizedBox(
            height: 16.0,
          ),
          SizedBox(
            height: 44.0,
            child: RaisedButton(
              onPressed: () {
                if(formkey.currentState.validate()) {

                }

              },
              child: Text(
                "Entrar",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              textColor: Colors.white,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      )),
    );
  }
}
