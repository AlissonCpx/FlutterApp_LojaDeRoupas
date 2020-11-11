import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formkey = GlobalKey<FormState>();
  bool senha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
        centerTitle: true,
      ),
      body: Form(
          key: formkey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nome Completo",
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Nome inválido!";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "E-mail",
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty || !value.contains("@")) {
                    return "E-mail inválido!";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Senha",
                  suffixIcon: IconButton(
                      icon: Icon(senha ? Icons.lock_outline :  Icons.lock_open),
                      onPressed: () {
                        setState(() {
                          senha = senha ? false : true;
                        });
                      }),
                ),
                obscureText: senha,
                validator: (value) {
                  if (value.isEmpty || value.length < 6) {
                    return "Senha inválido!";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Endereço"),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Endereço inválido!";
                  }
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 44.0,
                child: RaisedButton(
                  onPressed: () {
                    if (formkey.currentState.validate()) {}
                  },
                  child: Text(
                    "Cadastrar",
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
