import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:printy_glory/views/product_view.dart';
import '../controller/home_controller.dart';
import '../widgets/custom_button.dart';
import 'customer_review_view.dart';
import 'design_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();

    return Scaffold(
      body: Stack(
        children: [



          // MAIN BACKGROUND + CONTENT
          Container(
            width: double.infinity,
            color: const Color(0xFFFFC9F0), // light pink
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // LEFT SIDE CONTENT
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80), // space below logo

                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CustomerReviews()),
                            );
                          },
                          child: Text(
                            "Print Your Story.",
                            style: GoogleFonts.poppins(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "あなたの物語をプリントしよう。",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Turn your favorite memories into timeless keepsakes.\n"
                                "From phone cases to mugs to bottles\n"
                                "— your photos, your style.\n"
                                "Make every moment last forever.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            CustomButton(
                              text: "Start Designing Now",
                              subText: "今すぐデザインを開始",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const DesignView()),
                                );
                              },
                            ),

                            const SizedBox(width: 20),
                            CustomButton(
                              text: "Explore Products",
                              subText: "商品検索をする",
                              bgColor: Colors.amber,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ProductView()),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 50,)
                      ],
                    ),
                  ),


                  // RIGHT SIDE CONTENT
                  Expanded(
                    flex: 3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "assets/phoneCaseBackside.png",
                            height: 500,
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: controller.getProducts().map((p) {
                              return Padding(
                                padding:
                                const EdgeInsets.only(right: 180),
                                child: Image.asset(p.image, height: 300),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          // Positioned(
          //   top: 10,
          //   left: 500,
          //   child: Image.asset(
          //     "assets/dashboarddesign.png",
          //     width: 200,
          //   ),
          // ),
          // FIXED LOGO ON TOP-LEFT
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/logo.png",
              width: 80,
            ),
          ),


          Positioned(
            top: 0, // adjust to position  correctly
            right: 300, // adjust for horizontal position
            child: Image.asset(
              "assets/handWithCard.png", // <- add your hand image here
              height: 250,
            ),
          ),
        ],
      ),
    );
  }
}
