import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/pages/loginPage.dart';
import 'package:reconnect/src/widgets/authenticate_button.dart';
import 'package:reconnect/src/widgets/input_field.dart';

class SignUp extends StatefulWidget {
  final int scwidth;
  final int scheight;
  SignUp({super.key, required this.scwidth,required this.scheight});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController SignUsername = TextEditingController();
  final  TextEditingController SignName = TextEditingController();
  final  TextEditingController SignEmail = TextEditingController();
  final  TextEditingController SignPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        width: widget.scwidth*0.999,
        height: widget.scheight*0.999,
        child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: widget.scheight*0.04,),
            Container(
                    height: widget.scheight*0.131,
                    width: widget.scwidth*0.79,
                    child: Image.asset(ImgaeConstants.LogoText),
                  ),
            SizedBox(height: widget.scheight*.019,),
            Text(
              TextConstants.SignTitle,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
              ),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Username", widget.scheight, widget.scwidth, SignUsername),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Name", widget.scheight, widget.scwidth, SignName),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Email", widget.scheight, widget.scwidth, SignEmail),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Password", widget.scheight, widget.scwidth, SignPassword),
            SizedBox(height: widget.scheight*0.03,),
            Authbutton("Register", widget.scheight, widget.scwidth, () {print(SignUsername.text); }),
            SizedBox(
                    width: widget.scwidth*0.717,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            TextConstants.LoginAcc,
                            style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                          ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage(scwidth: widget.scwidth, scheight: widget.scheight))
                            );
                          },
                          child: Text(
                            'Log In',
                            style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.019,fontWeight: FontWeight.bold),
                          ),
                        ),
                    ]
                    ,)
                  ),
            Container(
              height: widget.scheight*0.109,
              width: widget.scwidth*1.87,
              child: Image.asset(ImgaeConstants.Signimgae),
            )
          ],
        ))
      ),
    );
  }
}