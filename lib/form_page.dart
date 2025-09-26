// lib/form_page.dart

import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kita pindahkan UI dari main.dart ke sini
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                // TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: "Masukkan teks",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                // Button tanpa icon
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button Tanpa Icon"),
                ),
                const SizedBox(height: 10),
                // Button dengan icon
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  label: const Text("Button Dengan Icon"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
