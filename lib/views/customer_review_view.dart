import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

  class CustomerReviews extends StatelessWidget {
  const CustomerReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCE9FF), // light blue background
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Title
            Text(
              "Customer Reviews",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "お客様の声",
              style: GoogleFonts.notoSansJp(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),

            // Reviews Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ReviewCard(
                  title: "Purchased a Sticker seal",
                  imagePath: "assets/phoneCaseBackside.png",
                  name: "Soni",
                  date: "1-July-2025",
                  review:
                  "It’s good quality, easy to stick on phone. it can help my phone from scratch.\nI liked it so much.",
                ),
                ReviewCard(
                  title: "Purchased a Sticker seal",
                  imagePath: "assets/phoneCaseBackside.png",
                  name: "Khloe. J",
                  date: "10-Aug-2025",
                  review:
                  "Something special to myself. I see my memorable picture every day now. Love it! It protects from scratch",
                ),
                ReviewCard(
                  title: "Purchased a Double case",
                  imagePath: "assets/phoneCaseBackside.png",
                  name: "S.J",
                  date: "21-Aug-2025",
                  review:
                  "Got it for my husband. Wrapping and a mini note were perfect for the surprise birthday gift. I was happy with the quality of the thick phone cover, too.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String name;
  final String date;
  final String review;

  const ReviewCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.name,
    required this.date,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),

          // Phone image
          Image.asset(imagePath, height: 140),

          const SizedBox(height: 10),

          // Name
          Text(
            name,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          // Date + Stars
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                date,
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              const SizedBox(width: 4),
              Row(
                children: List.generate(
                  5,
                      (index) => const Icon(Icons.star,
                      size: 16, color: Colors.amber),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Review text
          Text(
            review,
            textAlign: TextAlign.center,
            maxLines: 4, // <-- limit to 3 lines (you can adjust)
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
