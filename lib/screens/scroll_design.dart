import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

final PageController _pageController = new PageController();

class ScrollDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: PageView(
          physics: BouncingScrollPhysics(),
          controller: _pageController,
          scrollDirection: Axis.vertical,
          children: [
            Home(),
            Welcome(),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5, 0.5],
        colors: [Color(0xff7AECCB), Color(0xff50C2DD)],
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff50C2DD),
      child: WelcomeButton(),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.blue,
          elevation: 5.0,
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onPressed: () {},
        clipBehavior: Clip.none,
        autofocus: true,
        child: Text(
          'Bienvenido',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Column(
          children: [
            Weather(),
            Expanded(
              child: Container(),
            ),
            Container(
              child: IconButton(
                iconSize: 100.0,
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                onPressed: () {
                  _pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff50C2DD),
        alignment: Alignment.topCenter,
        height: double.infinity,
        child: Image.asset('assets/scroll.png'));
  }
}

class Weather extends StatelessWidget {
  const Weather({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
        fontSize: 34.0, color: Colors.white, fontWeight: FontWeight.bold);

    return SafeArea(
      minimum: EdgeInsets.symmetric(vertical: 80.0),
      child: Column(
        children: [
          Text('11º', style: textStyle),
          SizedBox(height: 10.0),
          Text('Miércoles', style: textStyle),
        ],
      ),
    );
  }
}
