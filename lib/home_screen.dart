import 'package:flutter/material.dart';
import 'package:resume/resume_pdf_api.dart';
import 'package:resume/save_and_open_pdf.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: const Text(
            'Home Screen',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.teal[900]),
                      foregroundColor:
                          const WidgetStatePropertyAll(Colors.white)),
                  onPressed: () async {
                    final resumePdfFile =
                        await ResumePdfApi.generateResumePdf();
                    SaveAndOpenDocument.openPdf(resumePdfFile);
                  },
                  child: const Text(
                    'Resume Pdf',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
