  import 'package:flutter/material.dart';
  import 'package:google_fonts/google_fonts.dart';

  class DesignView extends StatelessWidget {
    const DesignView({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFFDFFFD9), // light green background
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo (top-left)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/logo.png", width: 120),
                  ),
                  const SizedBox(height: 20),

                  // Main heading
                  Text(
                    "Too many memorable photos\nbut no time to clear up?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Subheading with highlighted word
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: "Is the "),
                        TextSpan(
                          text: "person #2",
                          style: GoogleFonts.poppins(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(text: " you?"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Japanese text
                  Text(
                    "思い出の写真が多すぎて、スマホの空き容量が足りない、\nでも時間がない？",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansJp(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "下の写真の #2 は、あなたを描写していませんか？",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansJp(
                      fontSize: 16,
                      color: Colors.pink,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Main content row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Left image (phone screenshot)
                      Image.asset(
                        "assets/three_bottles.png",
                        height: 280,
                      ),
                      const SizedBox(width: 30),

                      // Right side with two images stacked
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset("assets/three_bottles.png", height: 120),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset("assets/three_bottles.png", height: 120),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Stress text
                          Text(
                            "stress",
                            style: GoogleFonts.poppins(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
