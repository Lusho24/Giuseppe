import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
                child: const Image(image: AssetImage('assets/images/logo.webp')),
              ),
              Padding(
                  padding: EdgeInsets.all(60.0),
                  child: _SignInForm())
            ],
          ),
        ),
      ),
    );
  }
}


class _SignInForm extends StatelessWidget {
  const _SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0
              )
            ]
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Correo electronico *')
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Contraseña *')
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Contraseña *')
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(onPressed: () {}, child: Text('Aplastame')),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Alinea el texto a la derecha
              children: [
                Text('Recuperar contraseña'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
