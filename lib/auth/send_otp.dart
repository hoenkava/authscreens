import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pollpe_assignment/auth/enter_password.dart';
import 'package:pollpe_assignment/modules/otptextfield/otp_field.dart';
import 'package:pollpe_assignment/modules/otptextfield/otp_field_style.dart';
import 'package:pollpe_assignment/modules/otptextfield/style.dart';

class SendOtp extends StatefulWidget {
  const SendOtp({super.key});

  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {
  final OtpFieldController _otpController = OtpFieldController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String otp = '';
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
                  padding: const EdgeInsets.only(top: 400),
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
                        Text(
                          'We have sent the OTP to',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '+91 9876543210',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.edit,
                              color: Colors.deepPurple,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Didn\'t receive the OTP? Resend in 00:10',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Form(
                                key: _formKey,
                                child: OTPTextField(
                                  length: 4,
                                  width: MediaQuery.of(context).size.width,
                                  fieldWidth: 70,
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).primaryColor),
                                  textFieldAlignment:
                                      MainAxisAlignment.spaceAround,
                                  fieldStyle: FieldStyle.box,
                                  otpFieldStyle: OtpFieldStyle(
                                    backgroundColor: const Color(0xffF6F8FE),
                                    borderColor: Color(0xffF3F3F3),
                                    //focusBorderColor: Colors.grey.shade200,
                                    //enabledBorderColor: Colors.grey.shade200,
                                  ),
                                  controller: _otpController,
                                  onCompleted: (pin) {
                                    otp = pin;
                                    print("Completed: " + pin);
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 60,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const EnterPassword(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Text('VERIFY',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                  'You may receive sms notifications from us for security and login purposes',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600),
                                  textAlign: TextAlign.center),
                              const SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
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
