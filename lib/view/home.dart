import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();
    CarouselController controllerTwo = CarouselController();
    final Uri _url = Uri.parse('https://flutter.dev');

    // final hight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.auto_awesome_motion_outlined),
        title: GradientText(
          'Full Stack Devoloper',
          colors: [
            Color.fromARGB(182, 0, 255, 251),
            Color.fromARGB(255, 0, 173, 211),
            Color.fromARGB(197, 55, 240, 203)
          ],
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        actions: [
          TextButton(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'menu',
                style: TextStyle(color: Color.fromARGB(255, 0, 220, 220)),
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/panoramic-view-sunset-night.jpg'),
              fit: BoxFit.cover),
          color: Color.fromARGB(95, 0, 0, 0),
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 64, 244, 118),
                      Color.fromARGB(255, 0, 255, 200),
                      Color.fromARGB(255, 118, 78, 149)
                    ])),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome to my portfolio',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Text(
              "Hi! I'm Thanseeh ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
            AnimatedTextKit(
              repeatForever: true,
              isRepeatingAnimation: true,
              animatedTexts: [
                // FadeAnimatedText(
                //   "Hi! I'm Thanseeh Full Stack Flutter Devolpeer",
                // )
                TypewriterAnimatedText("Front end Developer",
                    speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    )),
                TypewriterAnimatedText("Back end Developer",
                    speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    )),
                TypewriterAnimatedText("flutter Developer",
                    speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    )),
                TypewriterAnimatedText("Node.js Developer",
                    speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    )),
              ],
            ),
            Text(
              'passionate about solving complex problems and building robust applications. My toolkit includes a range of technologies such as Flutter, Node.js, Dart, Firebase , Rest API , SQL and Post man.I aspire to contribute to innovative projects, collaborate with cross-functional teams, and continuously enhance my skills. My goal is to create impactful solutions that improve user experiences and drive business success.',
              style: TextStyle(
                  color: Color.fromARGB(119, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            Lottie.asset('asset/Animation - 1713520447835.json'),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 24, 24),
                    borderRadius: BorderRadius.circular(35)),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Skills',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            color: Color.fromARGB(255, 255, 254, 254)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          ' Full Stack Flutter Developer, mastering Dart for frontend and Node.js for backend development. With a passion for crafting elegant user experiences,.',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 144, 144, 144),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => controller.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear),
                              icon: Icon(Icons.arrow_back_ios_new)),
                          SizedBox(
                            height: 120,
                            width: 110,
                            child: CarouselSlider(
                                carouselController: controller,
                                items: [
                                  Container(
                                      child: Lottie.asset(
                                          'asset/Animation - 1713770337120.json'),
                                      height: 115,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                      )),
                                  Container(
                                      child: Lottie.asset(
                                          'asset/Animation - 1713770087896.json'),
                                      height: 115,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                      )),
                                  Container(
                                      child: Lottie.asset(
                                          'asset/Animation - 1713765180685.json'),
                                      height: 115,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                      ))
                                ],
                                options: CarouselOptions(
                                    autoPlay: true,
                                    initialPage: 2,
                                    // autoPlay: true,
                                    enlargeCenterPage: true,
                                    viewportFraction: 1,
                                    aspectRatio: 2)),
                          ),
                          IconButton(
                              onPressed: () => controller.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear),
                              icon: Icon(Icons.arrow_forward_ios)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => controllerTwo.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear),
                              icon: Icon(Icons.arrow_back_ios_new)),
                          SizedBox(
                            height: 120,
                            width: 110,
                            child: CarouselSlider(
                                carouselController: controllerTwo,
                                items: [
                                  Container(
                                      child: Lottie.asset(
                                          'asset/Animation - 1713770853873.json'),
                                      height: 115,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                      )),
                                  Container(
                                      child: Lottie.asset(
                                          'asset/Animation - 1713771080464.json'),
                                      height: 115,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                      )),
                                  Container(
                                      height: 115,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/62cc1b51150d5de9a3dad5f8.png')),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                      ))
                                ],
                                options: CarouselOptions(
                                    autoPlay: true,
                                    initialPage: 2,
                                    // autoPlay: true,
                                    enlargeCenterPage: true,
                                    viewportFraction: 1,
                                    aspectRatio: 2)),
                          ),
                          IconButton(
                              onPressed: () => controllerTwo.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear),
                              icon: Icon(Icons.arrow_forward_ios)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 24, 24),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 170,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/mee.jpg'),
                                  fit: BoxFit.cover),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Mohamed\nThanseeh km',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'App Developer',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: InkWell(
                                    onTap: () => launchUrl(
                                        Uri.parse('https://wa.link/fhc3qe')),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Chat with \n     me',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ),
                                      height: 65,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          color: Color.fromARGB(76, 50, 33, 6)),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => launchUrl(Uri.parse(
                                      'https://github.com/thanseehkm/potfolio/blob/master/asset/Thanseeh_Resume.pdf')),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Text(
                                            'Resume',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Icon(
                                          Icons.file_download_outlined,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    height: 65,
                                    width: 95,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(11),
                                        color: const Color.fromARGB(
                                            76, 50, 33, 6)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 237, 237, 237),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Icon(Icons.save_alt_rounded),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 237, 237, 237),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 237, 237, 237),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 237, 237, 237),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Icon(Icons.account_balance_wallet_sharp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
