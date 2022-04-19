import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      title: 'Login Page',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [const Header(), LoginForm(), const Footer()],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('Awesome App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          Text(
            'LOGIN',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final TextEditingController emailTextEditingControler =
      TextEditingController(text: 'email');
  final TextEditingController passwordTextEditingControler =
      TextEditingController(text: 'password');
  LoginForm({Key? key}) : super(key: key);
  // static const String loginKey = 'login_button_key';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailTextEditingControler,
          ),
          TextFormField(
            controller: passwordTextEditingControler,
          ),
          TextButton(
              child: const Text('LOGIN'),
              onPressed: loginButtonPressed,
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 8)))
        ],
      ),
    );
  }

  loginButtonPressed() {}
}

// class LoginButton extends StatelessWidget {
//   const LoginButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ButtonBar();
//   }
// }

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text(
        'SIGN UP',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
