import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:net_bookstore/constants/constants.dart';
import 'package:net_bookstore/widgets/my_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  } //Tonywifi

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.10,
                    ),
                    Text(
                      onBoardingList[index]['title'],
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      onBoardingList[index]['des'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        // color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Image.asset(
                      onBoardingList[index]['image'],
                      height: 250,
                      width: 250,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    _currentPage + 1 == 4
                        ? const SizedBox.shrink()
                        : SmoothPageIndicator(
                            controller: _pageController,
                            count: 4,
                            effect: ExpandingDotsEffect(
                              activeDotColor: MyColors.deepYellow,
                            ), // your preferred effect
                            onDotClicked: (index) {}),
                    const Spacer(),
                    _currentPage + 1 == 4
                        ? Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Column(
                              children: [
                                MyButton(
                                  backgroundColor: MyColors.deepYellow,
                                  textColor: Colors.black,
                                  text: 'Register',
                                  isLoaded: false,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MyButton(
                                  backgroundColor: Colors.transparent,
                                  textColor: Colors.black,
                                  text: 'Login',
                                  isLoaded: false,
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _currentPage + 1 == 1
                                    ? const SizedBox(
                                        width: 10,
                                      )
                                    : TextButton(
                                        onPressed: () {
                                          _pageController.animateToPage(
                                              _currentPage - 1,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.bounceIn);
                                        },
                                        child: const Text('Prev')),
                                TextButton(
                                    onPressed: () {
                                      _pageController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.bounceIn);
                                    },
                                    child: const Text('Next')),
                              ],
                            ),
                          )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
