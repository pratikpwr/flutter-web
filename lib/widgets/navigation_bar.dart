import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      height: 70,

      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'C-STREET',
              style: GoogleFonts.montserrat(
                  fontSize: 28,
                  letterSpacing: 1.5,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItems('Home'),
              SizedBox(
                width: 20,
              ),
              NavBarItems('Work'),
              SizedBox(
                width: 20,
              ),
              NavBarItems('Services'),
              SizedBox(
                width: 20,
              ),
              NavBarItems('About Us'),
              SizedBox(
                width: 20,
              ),
              NavBarItems('Contact')
            ],
          )
        ],
      ),
    );
  }
}

class NavBarItems extends StatelessWidget {
  final String title;

  NavBarItems(this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.blueAccent,
      onTap: (){},
      child: Text(
        title,
        style: GoogleFonts.poppins(
             fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
