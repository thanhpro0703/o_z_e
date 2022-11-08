import 'package:flutter/material.dart';

class ContentShop extends StatefulWidget {
  const ContentShop({super.key});

  @override
  State<ContentShop> createState() => _ContentShopState();
}

class _ContentShopState extends State<ContentShop> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    page: () {}, text: "109.000"))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Expanded(
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      page: () {}, text: "109.000"))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Expanded(
                  flex: 1,
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      page: () {}, text: "109.000"))
                            ],
                          ),
                        )
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconShop2(
                            title: '100',
                            price: '100',
                            image: 'assets/money.png'),
                        ButtonPlayWidget(
                            buttonplay:
                                ElavetedButonBuy(page: () {}, text: "100000"))
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconShop2(
                            title: '100',
                            price: '100',
                            image: 'assets/idea.png'),
                        ButtonPlayWidget(
                            buttonplay:
                                ElavetedButonBuy(page: () {}, text: "109.000"))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ElavetedButonBuy extends StatefulWidget {
  const ElavetedButonBuy({super.key, required this.text, required this.page});
  final String text;
  final page;

  @override
  State<ElavetedButonBuy> createState() => _ElavetedButonBuyState();
}

class _ElavetedButonBuyState extends State<ElavetedButonBuy> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(130, 50)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        // elevation: MaterialStateProperty.all(3),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: widget.page,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ButtonPlayWidget extends StatefulWidget {
  const ButtonPlayWidget({super.key, required this.buttonplay});
  final Widget buttonplay;
  @override
  State<ButtonPlayWidget> createState() => _ButtonPlayWidgetState();
}

class _ButtonPlayWidgetState extends State<ButtonPlayWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.7, 1.5),
              colors: <Color>[
                Color(0xffff5433ff),
                Color(0xfff20bdff),
                Color(0xfffa5fecb),
              ],
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.buttonplay),
    );
  }
}

class IconShop extends StatelessWidget {
  const IconShop(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  final title;
  final price;
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(8),
              child: Image(
                image: AssetImage(image),
                width: 50,
                height: 50,
              )),
          Text(
            price,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class IconShop2 extends StatelessWidget {
  const IconShop2(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  final title;
  final price;
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(image),
                width: 50,
                height: 50,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "100000",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
