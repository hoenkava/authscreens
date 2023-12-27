import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterPassword extends StatefulWidget {
  const EnterPassword({super.key});

  @override
  State<EnterPassword> createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
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
                          'Great! All Done Amar',
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Just Last, Setup Passsword',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                               Container(
                                 decoration: BoxDecoration(
                                   color: const Color(0xffF6F8FE),
                                   borderRadius: BorderRadius.circular(14),
                                   border: Border.all(
                                     color: Colors.grey.shade300,
                                     width: 1.2,
                                   ),
                                 ),
                                 child: TextFormField(
                                   //controller: _firstNameController,
                                   decoration:  InputDecoration(
                                     border: InputBorder.none,
                                     label: Text(
                                       '        Password',
                                       style: GoogleFonts.poppins(
                                         fontSize: 20,
                                         fontWeight: FontWeight.w500,
                                         color: Colors.blueGrey,
                                       ),
                                     ),
                                    
                                   ),
                                   validator: (value) {
                                     if (value!.isEmpty) {
                                       return 'Please enter your email address';
                                     } else if (!value.contains('@')) {
                                       return 'Please enter a valid email address';
                                     }
                                     return null;
                                   },
                                 ),
                               ),
                                                 
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                   Container(
                                     decoration: BoxDecoration(
                                       color: const Color(0xffF6F8FE),
                                       borderRadius: BorderRadius.circular(14),
                                       border: Border.all(
                                         color: Colors.grey.shade300,
                                         width: 1.2,
                                       ),
                                     ),
                                     child: TextFormField(
                                       //controller: _firstNameController,
                                       decoration:  InputDecoration(
                                         border: InputBorder.none,
                                         label: Text(
                                           '        Confirm Password',
                                           style: GoogleFonts.poppins(
                                             fontSize: 20,
                                             fontWeight: FontWeight.w500,
                                             color: Colors.blueGrey,
                                           ),
                                         ),
                                        
                                       ),
                                       validator: (value) {
                                         if (value!.isEmpty) {
                                           return 'Please enter your email address';
                                         } else if (!value.contains('@')) {
                                           return 'Please enter a valid email address';
                                         }
                                         return null;
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
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Color(0xffF6F8FE),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Text('Get Started',
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          )),
                                    ),
                                  ),
                                 
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                      const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),],
                ),
              ),
                ),
          ),
        
        ],
      ),],),
    );
  }
}