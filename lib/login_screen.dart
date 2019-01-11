import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  var _photoController = TextEditingController();
  var _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/logo.jpg'),
            ),
            AccountTextField(),
            PasswordTextField(),
            LoginButton(),
          ],
        ),
      ),
    );
  }

  // 账号TextField
  Widget AccountTextField() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 0.0),
        child: TextField(
          controller: _photoController,
          onChanged: (text) { // 内容变化
            print('输入了$text');
          },
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone_iphone),
              fillColor: Colors.white70,
              filled: true,
              labelText: '请输入手机号'
          ),
        )
    );
  }

  // 密码TextField
  Widget PasswordTextField() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
        child: TextField(
          controller: _passController,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              fillColor: Colors.white70,
              filled: true,
              labelText: '请输入密码'
          ),
          obscureText: true,
        )
    );
  }

  // 登录按钮
  Widget LoginButton() {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        width: MediaQuery.of(context).size.width - 30.0,
        height: 50.0,
        child: Card(
          color: Colors.lightBlue,
          elevation: 6.0,
          child: Center(
            child: Text('登录', style: TextStyle(fontSize: 18.0, color: Colors.white)),
          )
        )
      ),
      onTap: (){
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomePage()),
                (route) => route==null
        );
      },
    );
  }

}




