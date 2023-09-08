import 'package:flutter/material.dart';
import 'package:pos_system/Utils/util_nav.dart';
import 'package:pos_system/screens/mainScreen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email == "deshan" && password == "1234") {
      UtilNav.navigateTo(context, const MainScreen());
    } else {
      _emailController.clear();
      _passwordController.clear();
    }
    // You can add your login logic here

    print('Email: $email, Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo2.png"),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: _isObscure
                              ? const Icon(Icons.lock_outline)
                              : const Icon(Icons.lock_open_outlined)),
                      labelText: 'Password',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  obscureText: _isObscure,
                ),
              ),
              const SizedBox(height: 16.0),
              InkWell(
                onTap: _login,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Color(0xFF264087),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
