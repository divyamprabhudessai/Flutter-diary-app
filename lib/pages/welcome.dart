import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // screen width and sheight swidth and sheight = vw and vh or 100th part of total screen height an swidth
     final swidth = MediaQuery.sizeOf(context).width/100;
      final sheight = MediaQuery.sizeOf(context).height/100;
    return  Scaffold(
      body: Container(
          width: 100*swidth,
          height: 100*sheight,
          color: const Color(0xffDFD3C8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMage widget does not have it's own heiht width params thus we use sizedBox widegt 
              SizedBox(
                height: 50*sheight,
                child: Image.asset('assets/img1.png')
                ),
              Padding(
                padding: EdgeInsets.symmetric (horizontal: swidth*10),
                child: Column(
                  children: [
                    Container(
                      width: swidth*90,
                      height: 2,
                      color: const Color(0xff464646),
                    ),
                    Text(
                      "Let's Get",
                      style: GoogleFonts.raleway(
                        color : const Color(0xff464646),
                        fontSize : sheight*3,
                        fontWeight : FontWeight.normal,
                      )
                      ),
                      Text(
                      "Started",
                      style: GoogleFonts.raleway(
                        color : const Color(0xff464646),
                        fontSize : sheight*6,
                        fontWeight : FontWeight.w700,
                      )
                      ),
                      Text(
                    "Your Own Personal Digital\nDiary",
                    style: GoogleFonts.raleway(
                      color:const Color(0xff464646),
                      fontSize:sheight*2.5,
                      fontWeight: FontWeight.w400,
                    )
                      ),
                  ],
                ),
              ),   

              Row(children: [
                SizedBox(
                  width: sheight*20 ,
                  child: Image.asset("assets/img2.png"),
                  ),
                  // Second sizedbox for space
                SizedBox(
                   width: swidth*22,
                ),

                GestureDetector(
                  child: Column(children: [
                    SizedBox(
                      height: sheight*5,
                      child: Image.asset('assets/arrow.png'),
                    ),
                    Text(
                      "This Way",
                      style: GoogleFonts.raleway(
                          color: const Color(0xff464646),
                          fontSize: sheight * 2,
                          fontWeight: FontWeight.w400),
                    )
                  ]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder : (context) => const Home()));
                  },
                )
              ],)
              
            ],
          ),
      ),

    );
  }
}