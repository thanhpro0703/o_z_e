import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../method/pay-method.dart';

class AddPayMethod extends StatefulWidget {
  const AddPayMethod({Key? key}) : super(key: key);

  @override
  State<AddPayMethod> createState() => _AddPayMethodState();
}

class _AddPayMethodState extends State<AddPayMethod> {
  @override

  Widget build(BuildContext context) {
    Widget rowItems(Icon icon, String text)=>Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: Row(
      children: [
        icon,
        SizedBox(width: 10,),
        Text(text,style: GoogleFonts.alegreya(fontSize: 16),)
      ],
    ),
    );
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 29,),
            Text('Add Payment Method',style: GoogleFonts.alegreya(fontSize: 30,fontWeight: FontWeight.bold),),
            TextButton(child:Text('thanhkhoai01@gmail.com',style: GoogleFonts.alegreya(fontSize: 20)),onPressed: (){},),
            containerRow(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/momo.png',width: 60,),
                    ),
                    SizedBox(width: 10,),
                    Text('MoMo e-wallet: ****123',style:GoogleFonts.alegreya(fontSize: 18))
                  ],
                ),


              ],),),
            SizedBox(height: 50, child: Center(child: Text('Add a payment method to your account',style: GoogleFonts.alegreya(fontSize: 18),),),),
            rowItems(Icon(Icons.add_circle_outline,size: 30,), 'Add a payment method to Viettel Telecom'),
            rowItems(Icon(Icons.add_card_outlined,size: 30,), 'Add a credit or debit card'),
            SizedBox(height: 10,),
            Row(
              children: [
                Image(image: AssetImage('assets/momo.png'),width: 30,),
                SizedBox(width: 10,),
                Text('Add a MoMo e-wallet',style: GoogleFonts.alegreya(fontSize: 16),)
              ],
            ),
            SizedBox(height: 10,),
            rowItems(Icon(Icons.change_circle_outlined,size: 30,), 'Code change'),
          ],
        ),
      ),
    );
  }
}
