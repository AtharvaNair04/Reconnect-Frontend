import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/models/institution.dart';
import 'package:reconnect/src/pages/homepage.dart';
import 'package:reconnect/src/pages/select_uni.dart';
import 'package:reconnect/src/widgets/clg_list.dart';

class DashboardPage extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const DashboardPage({super.key, required this.scwidth,required this.scheight,});

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
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
                    child: Image.asset(ImageConstants.LogoText),
                  ),
            SizedBox(height: widget.scheight*.019,),
            Text(
              TextConstants.DashTitle,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
              ),
            SizedBox(height: widget.scheight*0.03,),
            Container(
              height: widget.scheight*0.246,
              width: widget.scwidth*0.452,
              child: Image.asset(ImageConstants.DashImg),
            ),
            SizedBox(height: widget.scheight*0.03,),
            SizedBox(
              width: widget.scwidth * 0.852,
              height:widget.scheight*0.230,
              child:ListView.builder(
                itemCount: Dashboard.length,
                itemBuilder: (context, index) {
                  return clollege_list(context, widget.scwidth, widget.scheight,index,Dashboard,
                  () {
                    print("OOOOOOOOOOOOOOOOOOOO");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(scwidth: widget.scwidth, scheight: widget.scheight))
                    );
                  });
                }
              )
            ),
            Center(
              child: IconButton(
                icon: Icon(Icons.add_circle),
                iconSize: widget.scheight*0.0514,
                color: Color(ColorConstants.primary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>SelectUni(scwidth: widget.scwidth, scheight: widget.scheight,))
                  );
                }
              )
            ),
            Text(
                    TextConstants.DashSub,
                    style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,),
                    ),
          ]
        )
        )
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(ColorConstants.primary),
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit,color: Color(ColorConstants.primary),),
              label: "text"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm,color: Color(ColorConstants.primary),),
              label: "text"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm,color: Color(ColorConstants.primary),),
              label: "text"
            ),
          ],
        ),
      ),

    );
  }
}