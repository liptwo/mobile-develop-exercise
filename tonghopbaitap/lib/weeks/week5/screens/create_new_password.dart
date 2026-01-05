import 'package:flutter/material.dart';
import 'package:mobile_exercise/core/validators/validator.dart';
import 'package:mobile_exercise/screens/home_screen.dart';
import 'package:mobile_exercise/weeks/week5/screens/confirm.dart';
import 'package:mobile_exercise/weeks/week5/screens/forget_password.dart';
import 'package:pinput/pinput.dart';

class CreateNewPassword extends StatefulWidget {
  final String email;
  final String otp;
  const CreateNewPassword({super.key, required this.email, required this.otp});
  @override
  State<CreateNewPassword> createState() => _createNewPasswordState();
}

class _createNewPasswordState extends State<CreateNewPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  // bool _reObscureText = true;
  @override
  void dispose() {
    _passwordController.dispose();
    _rePasswordController.dispose();
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
                          'Create new password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Your new password must be different form previously used password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 30),

                        // password
                        TextFormField(
                          obscureText: _obscureText,

                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password không được để trống';
                            }
                            return null;
                          },
                          // autovalidateMode: AutovalidateMode.onUserInteraction, // Realtime check validator
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
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
                        TextFormField(
                          obscureText: _obscureText,
                          controller: _rePasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              print(value);
                              return 'Password không được để trống';
                            }

                            final password = _passwordController.text;
                            if (password.isEmpty) {
                              return 'Vui lòng nhập password trước';
                            }

                            if (value.trim() != password.trim()) {
                              return 'Password phải giống nhau';
                            }

                            return null;
                          },
                          // autovalidateMode: AutovalidateMode.onUserInteraction, // Realtime check validator
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
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
                            hintText: 'Comfirm Password',
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
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => Confirm(
                                          email: widget.email,
                                          otp: widget.otp,
                                          password: _passwordController.text
                                              .trim(),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: const Size.fromHeight(46),
                                ),
                                child: Text(
                                  'Next',
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
