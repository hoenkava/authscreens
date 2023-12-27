import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pollpe_assignment/auth/add_phone_number.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool check = false;
  void _continueButtonPressed() async {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const Center(
            child:
                CircularProgressIndicator(), // Replace with your custom loader widget
          );
        },
      );

      Navigator.pop(context);
     
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const AddPhoneNumber(),
          ),
        );
      
    } else {}
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            children: [
              Container(),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 350),
                  scrollDirection: Axis.vertical,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Namaste',
                                style: GoogleFonts.poppins(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Text(
                              'Chalie Shuru karte Hai',
                              style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade600),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                             Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF6F8FE),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 1.2,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller: _firstNameController,
                                    
                                    decoration: InputDecoration(
                                       contentPadding: const EdgeInsets.only(
                                          left: 10, top: 10,bottom: 10),
                                      border: InputBorder.none,
                                      label: Text('     First Name',
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          )),
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter Last Name';
                                      } 
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF6F8FE),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 1.2,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller: _lastNameController,
                                    
                                    decoration: InputDecoration(
                                       contentPadding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      border: InputBorder.none,
                                      label: Text('     Last Name',
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          )),
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter Last Name';
                                      } 
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF6F8FE),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 1.2,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller: _userNameController,
                                    decoration: InputDecoration(
                                       contentPadding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      border: InputBorder.none,
                                      label: Text(
                                        '     Username',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                       return 'Please Enter UserName';
                                      } 
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Suggested',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Chip(
                                    backgroundColor: Color(0xffF6F8FE),
                                    label: Text('Suggested'),
                                    side: BorderSide(
                                      color: Colors.deepPurple,
                                      width: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Chip(
                                    backgroundColor: Color(0xffF6F8FE),
                                    label: Text('Suggested'),
                                    side: BorderSide(
                                      color: Colors.deepPurple,
                                      width: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Chip(
                                    backgroundColor: Color(0xffF6F8FE),
                                    label: Text('Suggested'),
                                    side: BorderSide(
                                      color: Colors.deepPurple,
                                      width: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xffF6F8FE),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8), // <-- Radius
                                ),
                              ),
                              onPressed: () {
                                _continueButtonPressed();
                              },
                              child: Text(
                                'Continue',
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
