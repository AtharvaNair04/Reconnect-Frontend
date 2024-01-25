import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/pages/register_university.dart';
import 'package:reconnect/src/widgets/search.dart';

class SelectUni extends StatefulWidget {
  final int scwidth;
  final int scheight;

  const SelectUni({super.key,required this.scwidth,required this.scheight});

  @override
  State<SelectUni> createState() => _SelectUniState();
}

class _SelectUniState extends State<SelectUni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: widget.scwidth*0.999,
        height: widget.scheight*0.999,
        child:SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(height: widget.scheight*0.04),
            Container(
              height: widget.scheight*0.131,
              width: widget.scwidth*0.79,
              child: Image.asset(ImgaeConstants.LogoText),
            ),
            SizedBox(height: widget.scheight*.028),
            Text(
              TextConstants.Select,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary), fontSize: widget.scheight*0.040,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: widget.scheight*.020),
            Search(widget.scwidth,widget.scheight),
            Text(
              TextConstants.InstittueListed,
              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
              ),
              GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterUni(scwidth: widget.scwidth, scheight: widget.scheight))
                );
              },
              child: Text(
                'click here',
                style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.019,fontWeight: FontWeight.bold),
              ),
            ),
          ],
          ),
        ),
      ),
    );        
  }
}