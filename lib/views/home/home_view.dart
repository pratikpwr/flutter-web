import 'package:c_street/widgets/centered_view.dart';
import 'package:c_street/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [NavigationBar(), Divider(), FirstPage()],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CenteredView(
        child: Row(
          children: [
            Container(
              width: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'We provide business \nsolutions for boost \nyour',
                        style: GoogleFonts.poppins(
                            fontSize: 42,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Business',
                            style: GoogleFonts.poppins(
                              fontSize: 42,
                              height: 1,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam.',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      height: 2,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.blue,
                    elevation: 5,
                    padding: EdgeInsets.symmetric(horizontal: 32 , vertical: 18),
                    hoverColor: Colors.blueAccent,
                    hoverElevation: 8,
                    child: Text(
                      'Contact Us',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        height: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SvgPicture.asset('assets/progressive_app.svg' , )
          ],
        ),
      ),
    );
  }
}
