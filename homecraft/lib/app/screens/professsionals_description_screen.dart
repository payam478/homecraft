import 'package:flutter/material.dart';
import 'package:homecraft/app/screens/widgets/service_package_chip.dart';
import 'package:homecraft/app/screens/widgets/professional_card.dart';
import 'package:homecraft/app/screens/widgets/booking_bar.dart';
import 'package:homecraft/app/screens/widgets/customheadingdescription.dart';

class ProfessionalsDescriptionScreen extends StatelessWidget {
  const ProfessionalsDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const heroImage = 'assets/images/img01.jpg';
    const profileImage = 'assets/images/img02.jpg';

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 240),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 260,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF5D1FF),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(32),
                              bottomRight: Radius.circular(32),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(32),
                              bottomRight: Radius.circular(32),
                            ),
                            child: Image.asset(heroImage, fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 10,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: const Color.fromARGB(217, 194, 190, 190),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.black87,
                              ),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 10,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: const Color.fromRGBO(255, 255, 255, 0.85),
                            child: IconButton(
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.black87,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: SectionHeader(
                        title: 'Home Deep Cleaning',
                        subtitle: 'thorough care, spotless home.',
                      ),
                    ),
                    const SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '\$2499',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                '\$2799',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFDAF7DE),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const Text(
                              'Up to 30% Off',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF098F44),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ServicePackageChip(
                            name: 'Classic',
                            price: '\$2499',
                            oldPrice: '\$2799',
                            isSelected: true,
                          ),
                          ServicePackageChip(
                            name: 'Premium',
                            price: '\$2899',
                            oldPrice: '\$3099',
                            isSelected: false,
                          ),
                          ServicePackageChip(
                            name: 'Platinum',
                            price: '\$3099',
                            oldPrice: '\$3299',
                            isSelected: false,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: ProfessionalCard(
                        imageAsset: profileImage,
                        name: 'Marcus Mane',
                        role: 'Service Man',
                        onCall: () {},
                        onChat: () {},
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: SectionHeader(
                        title: 'Home Description',
                        subtitle:
                            'Our Home Deep Cleaning service delivers a thorough, spotless clean for every corner of your house. Enjoy a fresh, hygienic, and comfortable living space with professional care you can trust.',
                      ),
                    ),
                    const SizedBox(height: 90),
                  ],
                ),
              ),
            ),
            BookingBar(
              price: '\$2499',
              buttonText: 'Book Now',
              onBook: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Booking confirmed!')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
