import 'package:flutter/material.dart';
import 'package:mobile_exercise/screens/home_screen.dart';

class Confirm extends StatefulWidget {
  final String email;
  final String otp;
  final String password;
  const Confirm({
    super.key,
    required this.email,
    required this.otp,
    required this.password,
  });
  @override
  State<Confirm> createState() => _createNewPasswordState();
}

class _createNewPasswordState extends State<Confirm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // bool _obscureText = true;
  @override
  void initState() {
    super.initState();
    // 3. Gán dữ liệu sẵn vào controller
    _emailController.text = widget.email;
    _otpController.text = widget.otp;
    _passwordController.text = widget.password;
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: '',),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Stack(
                fit: StackFit.loose,

                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('/images/uth.png'),
                        const SizedBox(height: 20),
                        Text(
                          'UTH SmartTasks',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'We are here to help you!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 30),

                        // email
                        TextFormField(
                          controller: _emailController,
                          // autovalidateMode: AutovalidateMode.onUserInteraction, // Realtime check validator
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, // 👈 quyết định chiều cao
                              // horizontal: 14,
                            ),
                            // 🔹 Border bình thường
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),

                            // 🔹 Border khi focus
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2, // 👈 dày hơn
                              ),
                            ),

                            // 🔹 Border khi error (bonus)
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),

                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            hintText: 'Email',
                            prefixIcon: Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // otp
                        TextFormField(
                          controller: _otpController,
                          // autovalidateMode: AutovalidateMode.onUserInteraction, // Realtime check validator
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, // 👈 quyết định chiều cao
                              // horizontal: 14,
                            ),
                            // 🔹 Border bình thường
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),

                            // 🔹 Border khi focus
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2, // 👈 dày hơn
                              ),
                            ),

                            // 🔹 Border khi error (bonus)
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),

                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            hintText: 'OTP',
                            prefixIcon: Icon(
                              Icons.numbers,
                              size: 25,
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // password
                        TextFormField(
                          obscureText: true,
                          controller: _passwordController,
                          // autovalidateMode: AutovalidateMode.onUserInteraction, // Realtime check validator
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, // 👈 quyết định chiều cao
                              // horizontal: 14,
                            ),
                            // 🔹 Border bình thường
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),

                            // 🔹 Border khi focus
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2, // 👈 dày hơn
                              ),
                            ),

                            // 🔹 Border khi error (bonus)
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),

                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 25,
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        //re Password
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => HomeScreen(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: const Size.fromHeight(46),
                                ),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back, size: 30),
                    ),
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
