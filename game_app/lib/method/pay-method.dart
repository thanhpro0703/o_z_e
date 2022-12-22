import '../page/add-pay-method.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'avatar.dart';
import 'btn-green.dart';

class Pay extends StatelessWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              containerRow(Row(
                children: [
                  Text('Google', style: GoogleFonts.alegreya(fontSize: 18)),
                ],
              )),
              containerRow(Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AvatarLayout('images/pigbackground.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pig Go To School',
                              style: GoogleFonts.alegreya(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Please pay',
                              style: GoogleFonts.alegreya(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  Text('99.000₫',
                      style: GoogleFonts.alegreya(
                          fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              )),
              containerRow(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/momo.png',
                            width: 60,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('MoMo e-wallet: ****123',
                            style: GoogleFonts.alegreya(fontSize: 18))
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddPayMethod()));
                        },
                        icon: Icon(Icons.navigate_next)),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonGreen(() => () {}, 'Buy ')
            ],
          ),
        ),
      ),
    );
  }
}

containerRow(Row row) => Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      child: row,
    );
