import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DemoScreen extends ConsumerWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Teal background section including AppBar
            Container(
              color: Colors.teal,
              padding: const EdgeInsets.only(
                  top: 50.0, left: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Custom AppBar with Back Arrow
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '7/7 Colors',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'Eat Rainbow',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: "Roboto",
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: 0.7, // Set the progress value
                          backgroundColor: Colors.white.withOpacity(0.3),
                          color: Colors.white,
                          minHeight: 15,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/food.svg', // Replace with your image asset
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Right-aligned Date and Calendar icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '22 July, 2024',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Cards in a row with background color
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.blueGrey[50], // Card background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Learn more about colors',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines:
                                    2, // Allows text to wrap to the next line if necessary
                                overflow: TextOverflow.visible,
                              ),
                            ),
                            const SizedBox(width: 8),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 221, 220, 220),
                              radius: 15,
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      color: Colors.green[50], // Card background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'How to register meals',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines:
                                    2, // Allows text to wrap to the next line if necessary
                                overflow: TextOverflow.visible,
                              ),
                            ),
                            const SizedBox(width: 8),
                            CircleAvatar(
                              backgroundColor: Colors.teal,
                              radius: 15,
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Total fibre section with gradient progress bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Total fibre',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 18),
                      Text(
                        '30/60',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 15,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink], // Gradient colors
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Row with Dashboard and Show All
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Show all',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                      color: Color.fromARGB(255, 243, 33, 240),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Row with CircleAvatars of different colors, each with '1' as text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildColorCircle(Colors.red),
                  _buildColorCircle(Colors.orange),
                  _buildColorCircle(Colors.yellow),
                  _buildColorCircle(Colors.green),
                  _buildColorCircle(Colors.blue),
                  _buildColorCircle(Colors.brown),
                  _buildColorCircle(
                      Color(0xFF7F00FF)), // Rainbow color placeholder
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Card with Border, Dropdown, and Details
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownContent() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Beans and Lentiles',
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Roboto",
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            '146 kcal',
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Roboto",
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Brand',
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Roboto",
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Food Functionality',
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Roboto",
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildSmallCard('A', '85/100'),
              const SizedBox(width: 8),
              _buildSmallCard('GL', '5'),
            ],
          ),
          const SizedBox(height: 8),
          const Icon(Icons.favorite, color: Colors.purple),
        ],
      ),
    );
  }

  Widget _buildSmallCard(String title, String value) {
    return Card(
      color: Colors.grey[200], // Background color of the small card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey, // Circle background color
              radius: 12,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: "Roboto",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper function to build a CircleAvatar with a specific color and '1' as text
Widget _buildColorCircle(Color color) {
  return CircleAvatar(
    radius: 20,
    backgroundColor: color,
    child: const Text(
      '1',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
