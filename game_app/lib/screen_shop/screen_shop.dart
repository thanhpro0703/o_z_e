import 'package:bottom_drawer/bottom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:game_app/screen_room/footer_room.dart';
import 'package:game_app/screen_shop/conten_shop.dart';
import 'package:google_fonts/google_fonts.dart';
import '../method/avatar.dart';
import '../method/btn-green.dart';
import '../page/add-pay-method.dart';
import '../screen_maingame/header.dart';

class ScreenShop extends StatefulWidget {
  const ScreenShop({super.key});

  @override
  State<ScreenShop> createState() => _ScreenShopState();
}

class _ScreenShopState extends State<ScreenShop> {
  String money = "109.000";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                MyHeader(),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background-home.png'),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 4),
                                      blurRadius: 5.0)
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.7, 1.5),
                                  colors: <Color>[
                                    Color(0xffffeecda3),
                                    Color(0xfffef629f),
                                  ],
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width / 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '100',
                                        image: 'assets/gold-bars.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '200',
                                        image: 'assets/money.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '300',
                                        image: 'assets/idea.png',
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(0, 4),
                                            blurRadius: 5.0)
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment(0.7, 1.5),
                                        colors: <Color>[
                                          Color(0xffffede574),
                                          Color(0xfffe1f5c4),
                                        ],
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ButtonPlayWidget(
                                            buttonplay: ElavetedButonBuy(
                                                page: () {
                                                  _controller.open();
                                                  setState(() {});
                                                },
                                                text: money))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 4),
                                      blurRadius: 5.0)
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.7, 1.5),
                                  colors: <Color>[
                                    Color(0xffffeecda3),
                                    Color(0xfffef629f),
                                  ],
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width / 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '100',
                                        image: 'assets/gold-bars.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '200',
                                        image: 'assets/money.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '300',
                                        image: 'assets/idea.png',
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(0, 4),
                                            blurRadius: 5.0)
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment(0.7, 1.5),
                                        colors: <Color>[
                                          Color(0xffffede574),
                                          Color(0xfffe1f5c4),
                                        ],
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ButtonPlayWidget(
                                            buttonplay: ElavetedButonBuy(
                                                page: () {
                                                  _controller.open();
                                                  setState(() {});
                                                },
                                                text: "109.000"))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 4),
                                      blurRadius: 5.0)
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.7, 1.5),
                                  colors: <Color>[
                                    Color(0xffffeecda3),
                                    Color(0xfffef629f),
                                  ],
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width / 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '100',
                                        image: 'assets/gold-bars.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '200',
                                        image: 'assets/money.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '300',
                                        image: 'assets/idea.png',
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(0, 4),
                                            blurRadius: 5.0)
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment(0.7, 1.5),
                                        colors: <Color>[
                                          Color(0xffffede574),
                                          Color(0xfffe1f5c4),
                                        ],
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ButtonPlayWidget(
                                            buttonplay: ElavetedButonBuy(
                                                page: () {
                                                  _controller.open();
                                                  setState(() {});
                                                },
                                                text: "109.000"))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 4),
                                      blurRadius: 5.0)
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.7, 1.5),
                                  colors: <Color>[
                                    Color(0xffffeecda3),
                                    Color(0xfffef629f),
                                  ],
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width / 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '100',
                                        image: 'assets/gold-bars.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '200',
                                        image: 'assets/money.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '300',
                                        image: 'assets/idea.png',
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(0, 4),
                                            blurRadius: 5.0)
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment(0.7, 1.5),
                                        colors: <Color>[
                                          Color(0xffffede574),
                                          Color(0xfffe1f5c4),
                                        ],
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ButtonPlayWidget(
                                            buttonplay: ElavetedButonBuy(
                                                page: () {
                                                  _controller.open();
                                                  setState(() {});
                                                },
                                                text: "109.000"))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 4),
                                      blurRadius: 5.0)
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.7, 1.5),
                                  colors: <Color>[
                                    Color(0xffffeecda3),
                                    Color(0xfffef629f),
                                  ],
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width / 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '100',
                                        image: 'assets/gold-bars.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '200',
                                        image: 'assets/money.png',
                                      ),
                                      IconShop(
                                        title: 'IconMoney',
                                        price: '300',
                                        image: 'assets/idea.png',
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(0, 4),
                                            blurRadius: 5.0)
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment(0.7, 1.5),
                                        colors: <Color>[
                                          Color(0xffffede574),
                                          Color(0xfffe1f5c4),
                                        ],
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ButtonPlayWidget(
                                            buttonplay: ElavetedButonBuy(
                                                page: () {
                                                  _controller.open();
                                                  setState(() {});
                                                },
                                                text: "109.000"))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 4),
                                        blurRadius: 5.0)
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xffffaaffa9),
                                      Color(0xfff11ffbd),
                                    ],
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconShop2(
                                        title: '100',
                                        price: '100',
                                        image: 'assets/money.png'),
                                    ButtonPlayWidget(
                                        buttonplay: ElavetedButonBuy(
                                            page: () {
                                              _controller.open();
                                              setState(() {});
                                            },
                                            text: "100000"))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 4),
                                        blurRadius: 5.0)
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xffffaaffa9),
                                      Color(0xfff11ffbd),
                                    ],
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconShop2(
                                        title: '100',
                                        price: '100',
                                        image: 'assets/idea.png'),
                                    ButtonPlayWidget(
                                        buttonplay: ElavetedButonBuy(
                                            page: () {
                                              _controller.open();
                                              setState(() {});
                                            },
                                            text: "109.000"))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 4),
                                        blurRadius: 5.0)
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xffffaaffa9),
                                      Color(0xfff11ffbd),
                                    ],
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconShop2(
                                        title: '100',
                                        price: '100',
                                        image: 'assets/idea.png'),
                                    ButtonPlayWidget(
                                        buttonplay: ElavetedButonBuy(
                                            page: () {
                                              _controller.open();
                                              setState(() {});
                                            },
                                            text: "109.000"))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 4),
                                        blurRadius: 5.0)
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xffffaaffa9),
                                      Color(0xfff11ffbd),
                                    ],
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconShop2(
                                        title: '100',
                                        price: '100',
                                        image: 'assets/idea.png'),
                                    ButtonPlayWidget(
                                        buttonplay: ElavetedButonBuy(
                                            page: () {
                                              _controller.open();
                                              setState(() {});
                                            },
                                            text: "109.000"))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 4),
                                        blurRadius: 5.0)
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.7, 1.5),
                                    colors: <Color>[
                                      Color(0xffffaaffa9),
                                      Color(0xfff11ffbd),
                                    ],
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconShop2(
                                        title: '100',
                                        price: '100',
                                        image: 'assets/idea.png'),
                                    ButtonPlayWidget(
                                        buttonplay: ElavetedButonBuy(
                                            page: () {
                                              _controller.open();
                                              setState(() {});
                                            },
                                            text: "109.000"))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                MyFooterRoom(),
              ],
            ),
          ),
          _buildBottomDrawer(context),
        ],
      )),
    );
  }

  Widget _buildBottomDrawer(BuildContext context) {
    return BottomDrawer(
      header: _buildBottomDrawerHead(context),
      body: _buildBottomDrawerBody(context),
      headerHeight: _headerHeight,
      drawerHeight: _bodyHeight,
      color: Colors.lightBlue,
      controller: _controller,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 60,
          spreadRadius: 5,
          offset: const Offset(2, -6), // changes position of shadow
        ),
      ],
    );
  }

  Widget _buildBottomDrawerHead(BuildContext context) {
    return Container();
  }

  Widget _buildBottomDrawerBody(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: _bodyHeight,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              containerRow(Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Google', style: GoogleFonts.alegreya(fontSize: 18)),
                  IconButton(
                      onPressed: () {
                        _controller.close();
                        setState(() {});
                      },
                      icon: Icon(Icons.close))
                ],
              )),
              containerRow(Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AvatarLayout('assets/pigbed.png'),
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
                  Text(money,
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
                            'assets/momo.png',
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

  containerRow(Row row) => Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
        ),
        child: row,
      );

  double _headerHeight = 0;
  double _bodyHeight = 300;
  BottomDrawerController _controller = BottomDrawerController();
}
