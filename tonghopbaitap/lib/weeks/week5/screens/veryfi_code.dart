import 'package:flutter/material.dart';
import 'package:mobile_exercise/weeks/week5/screens/create_new_password.dart';
import 'package:pinput/pinput.dart';

class VerifiCode extends StatefulWidget {
  final String email;
  const VerifiCode({super.key, required this.email});
  @override
  State<VerifiCode> createState() => _verifiCodeState();
}

class _verifiCodeState extends State<VerifiCode> {
  final TextEditingController _verifiCodeController = TextEditingController();

  @override
  void dispose() {
    _verifiCodeController.dispose();
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
              // key: _formKey,
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
                          'Verifi Code',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Enter the Code, we will send you on registed Email.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 30),
                        Pinput(
                          controller: _verifiCodeController,
                          length: 5,
                          // onCompleted: (pin) => print(pin),
                          defaultPinTheme: PinTheme(
                            width: 56,
                            height: 56,
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(30, 60, 87, 1),
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: BoxDecoration(
                              // border: Border.all(color: Color.fromRGBO(88, 95, 100, 1)),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(46, 158, 158, 158),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => CreateNewPassword(
                                        email: widget.email,
                                        otp: _verifiCodeController.text.trim(),
                                      ),
                                    ),
                                  );
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
