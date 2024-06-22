import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retypePasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 222, 251), // Warna latar belakang ungu muda
        leading: Image.asset('assets/diamond.png'), // Logo sebagai leading
        title: Text('SHRINE'), // Judul Shrine
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 12.0),
            // Masukkan Username
            Text(
              'Masukkan username:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            // Username
            TextField(
              controller: _usernameController,
              decoration: _textFieldDecoration('Username'),
            ),
            const SizedBox(height: 12.0),
            // Masukkan Password
            Text(
              'Masukkan password:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            // Password
            TextField(
              controller: _passwordController,
              decoration: _textFieldDecoration('Password'),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            // Masukkan Kembali Password
            Text(
              'Masukkan kembali password:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            // Retype Password
            TextField(
              controller: _retypePasswordController,
              decoration: _textFieldDecoration('Retype Password'),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    _retypePasswordController.clear();
                  },
                  child: const Text('CANCEL'),
                ),
                const SizedBox(width: 12.0),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman Home
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text('REGISTER'),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman login
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _textFieldDecoration(String labelText) {
    return InputDecoration(
      filled: true,
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1.0,
        ),
      ),
    );
  }
}
