import 'package:flutter/material.dart';
import 'package:flutter_assignment/constant/app_colors.dart';
import 'package:flutter_assignment/widgets/action_button.dart';

class JijiSpeechWidget extends StatelessWidget {
  const JijiSpeechWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Jiji says",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade100),
      ),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 15,
                      height: 1.4,
                    ),
                    children: [
                      TextSpan(
                        text: "Retrieval-Augmented Generation (RAG) ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const TextSpan(
                        text:
                            "combines search with large language models to improve the accuracy of generated answers by providing relevant information from external data sources.",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                _bulletPoint("Retrieves data from external sources"),
                _bulletPoint("Uses a language model to generate answers"),
                _bulletPoint("Enhances the accuracy of responses"),
                const SizedBox(height: 20),

                ActionSection()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(" • ", style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: AppColors.textSecondary),
            ),
          ),
        ],
      ),
    );
  }
}
