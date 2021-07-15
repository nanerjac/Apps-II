import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}class Home extends StatefulWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/messenger.png"),
            Text(
              "Digite Seu Email e Senha",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Digite Seu Email"),
              obscureText: false,
              onSubmitted: (String e) {
                print("O valor foi: " + e);
              },
              controller: _textEditingController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Digite Sua Senha"),
              maxLength: 8,
              obscureText: true,
              onSubmitted: (String e) {
                print("O valor foi: " + e);
              },
              controller: _textEditingController2,
            ),
            RaisedButton(
              child: Text(
                "Logar",
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.green,
                  fontSize: 22,
                ),
              ),
              color: Colors.green,
              onPressed: (){
                print("Valor foi: " + _textEditingController.text);
                print("Valor foi: " + _textEditingController2.text);
              },
            )
          ],
        ),
      ),
    );
  }
}





