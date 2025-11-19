<!-- 🧱 Example: Using headlineLarge, headlineMedium, and headlineSmall

Here’s a simple Flutter widget that shows how you’d use them: -->


import 'package:flutter/material.dart';

class HeadlineExample extends StatelessWidget {
  const HeadlineExample({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme; // ✅ Your TTextTheme styles

    return Scaffold(
      appBar: AppBar(
        title: Text('Headlines Demo', style: textTheme.titleLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Page title — main heading
            Text(
              'headlineLarge - Page Title',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),

            // Section title — like a category or subtitle
            Text(
              'headlineMedium - Section Header',
              style: textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),

            // Sub-section or smaller header
            Text(
              'headlineSmall - Smaller Section Header',
              style: textTheme.headlineSmall,
            ),

            const Divider(height: 40),

            // Example content under a section
            Text(
              'bodyMedium - This is regular body text that appears under a headline. '
              'It uses your body style for paragraphs and normal content.',
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
