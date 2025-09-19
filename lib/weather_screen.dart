import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App", 
        style: TextStyle(
          fontWeight: FontWeight.bold,   
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('300° K',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          )),
                          SizedBox(height: 10),
                          Icon(Icons.cloud,
                          size: 80,
                          ),
                          SizedBox(height: 10),
                          Text('Rain',
                          style: TextStyle(
                            fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Weather Forecast',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 14),
            // weather forecast card
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('03:00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 8),
                          Icon(Icons.cloud, size: 32),
                          const SizedBox(height: 8),
                          Text('320.16'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('03:00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 8),
                          Icon(Icons.cloud, size: 32),
                          const SizedBox(height: 8),
                          Text('320.16'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('03:00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 8),
                          Icon(Icons.cloud, size: 32),
                          const SizedBox(height: 8),
                          Text('320.16'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('03:00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 8),
                          Icon(Icons.cloud, size: 32),
                          const SizedBox(height: 8),
                          Text('320.16'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('03:00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 8),
                          Icon(Icons.cloud, size: 32),
                          const SizedBox(height: 8),
                          Text('320.16'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // additional info
            const Placeholder(
              fallbackHeight: 150,
            )
          ],
        ),
      ),
    );
  }
}