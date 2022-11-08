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
                child: Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey,
                    ),
                    width: MediaQuery.of(context).size.width / 1,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Color.fromARGB(255, 204, 192, 203)),
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey,
                    ),
                    width: MediaQuery.of(context).size.width / 1,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Color.fromARGB(255, 204, 192, 203)),
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey,
                    ),
                    width: MediaQuery.of(context).size.width / 1,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    color: Colors.red,
                                    child: Text("Icon Doloar"),
                                  ),
                                  Text("100")
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.amber),
                          padding:
                              EdgeInsets.only(top: 8, right: 20, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text("106.000d")],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text("Icon"), Text("100"), Text("106.000d")],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text("Icon"), Text("100"), Text("106.000d")],
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
        minimumSize: MaterialStateProperty.all(Size(100, 40)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        // elevation: MaterialStateProperty.all(3),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: widget.page,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
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
                Color(0xffff8e0e00),
                Color(0xfff1f1c18),
              ],
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.buttonplay),
    );
  }
}
