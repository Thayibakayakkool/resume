import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/save_and_open_pdf.dart';

class ResumePdfApi {
  static Future<File> generateResumePdf() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: const PdfPageFormat(500, 900),
        build: (context) => pw.Row(
          children: [
            pw.Expanded(
              child: row1(),
            ),
            pw.SizedBox(width: 25),
            pw.Expanded(
              child: row2(),
            ),
            pw.SizedBox(width: 20),
          ],
        ),
      ),
    );
    return SaveAndOpenDocument.savePdf(name: 'resume.pdf', pdf: pdf);
  }

  static pw.Widget row1() {
    return pw.Container(
      padding: const pw.EdgeInsets.only(left: 18),
      decoration: const pw.BoxDecoration(color: PdfColors.teal900),
      child: pw.Column(
        children: [
          pw.SizedBox(height: 40),
          textWidget(
            text: 'Thayiba',
            fontSize: 22,
            fontWeight: pw.FontWeight.bold,
            color: PdfColors.white,
          ),
          pw.SizedBox(height: 3),
          textWidget(
            text: 'Kayakkool',
            fontSize: 23,
            fontWeight: pw.FontWeight.bold,
            color: PdfColors.white,
          ),
          pw.SizedBox(height: 5),
          pw.Divider(
            color: PdfColors.grey50,
            endIndent: 95,
            indent: 95,
          ),
          pw.SizedBox(height: 5),
          textWidget(
            text: 'FLUTTER DEVELOPER',
            fontSize: 11,
            fontWeight: pw.FontWeight.normal,
            color: PdfColors.white,
          ),
          pw.SizedBox(height: 45),
          boldTextWidget(
            text: 'Professional Summary',
            fontSize: 16,
            color: PdfColors.white,
          ),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: '9846303869',
              fontSize: 13,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 8),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: pw.Text(
              'thayibakayakool@gmail.com',
              style: pw.TextStyle(
                fontSize: 13,
                fontWeight: pw.FontWeight.normal,
                color: PdfColors.white,
                decoration: pw.TextDecoration.underline,
              ),
            ),
          ),
          pw.SizedBox(height: 25),
          boldTextWidget(
            text: 'Links',
            fontSize: 20,
            color: PdfColors.white,
          ),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: link(
              'www.linkedin.com/in/thayiba-kayakkool',
              'LinkedIn',
              15,
              PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: link(
              'https://github.com/Thayibakayakkool',
              'GitHub',
              15,
              PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 25),
          boldTextWidget(
            text: 'Skills',
            fontSize: 20,
            color: PdfColors.white,
          ),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'Dart',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'Flutter',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'Firebase',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'Hive',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'Git',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'GitHub',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'HTML',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'CSS',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          dividerWidget(),
          pw.SizedBox(height: 25),
          boldTextWidget(
            text: 'Languages',
            fontSize: 20,
            color: PdfColors.white,
          ),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'Malayalam',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          dividerWidget(),
          pw.SizedBox(height: 10),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: textWidget(
              text: 'English',
              fontSize: 14,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.white,
            ),
          ),
          pw.SizedBox(height: 5),
          skillDividerBar(),
        ],
      ),
    );
  }

  static pw.Widget row2() {
    return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(height: 45),
          boldTextWidget(
            text: 'Professional Summary',
            fontSize: 13,
          ),
          pw.SizedBox(height: 5),
          textWidget(
            text:
                'A  highly  motivated  and  self-taught  Flutter Developer with a strong passion for creating  user-friendly mobile  applications. I  thrive in\nteam environments with creative people and\nbring a  keen  interest in  coding, UI  design,\nand  mobile  app  development. With a solid  foundation in Dart,Flutter,Firebase,Git,GitHub,\nHive  ,   and   state   management   solutions\n(Provider, Bloc, GetX), I am eager to contribute\nto innovative projects and bring value to your\nteam. I look forward to discussing how my skills can enhance your projects and support your success.',
            fontSize: 10,
            fontWeight: pw.FontWeight.normal,
          ),
          pw.SizedBox(height: 15),
          boldTextWidget(
            text: 'Projects',
            fontSize: 13,
          ),
          pw.SizedBox(height: 10),
          boldTextWidget(
            text: 'FOODIE HEAVEN APP',
            fontSize: 12,
          ),
          pw.SizedBox(height: 5),
          textWidget(
            text:
                'An innovative online food ordering app specializing in fast food, designed with a clean architecture and BLoC   pattern   for   state  management.  Utilizes Firebase for user data management and Equatable for object comparison.',
            fontSize: 10,
            fontWeight: pw.FontWeight.normal,
          ),
          bulletPoints('Architecture: Advanced Flutter Clean Architecture'),
          bulletPoints('State Management: BLoC'),
          bulletPoints('Backend: Firebase'),
          bulletPoints('Features: Google Sign-In, Share Plus, Unit Testing'),
          pw.SizedBox(height: 8),
          link('https://github.com/Thayibakayakkool/Foodie-Heaven-App',
              '       GitHub: GitHub Link', 7, PdfColors.black),
          pw.SizedBox(height: 10),
          boldTextWidget(
            text: 'EMART APP',
            fontSize: 12,
          ),
          pw.SizedBox(height: 5),
          textWidget(
            text:
                'A comprehensive e-commerce app using Provider for  state  management  and  Firebase  as  the backend. It supports user data storage, search functionality, cart management, order placement, and profile customization.',
            fontSize: 10,
            fontWeight: pw.FontWeight.normal,
          ),
          bulletPoints('State Management: Provider'),
          bulletPoints('Backend: Firebase'),
          bulletPoints(
              'Features: Image Upload, Profile Editing, Admin Panel for Product Management'),
          pw.SizedBox(height: 8),
          link('https://github.com/Thayibakayakkool/eMart-App',
              '       GitHub: GitHub Link', 7, PdfColors.black),
          pw.SizedBox(height: 10),
          textWidget(
            text: 'MONEY MANAGER APP',
            fontSize: 12,
            fontWeight: pw.FontWeight.bold,
          ),
          pw.SizedBox(height: 5),
          textWidget(
            text:
                'An app designed to help users manage their finances, including budgeting, saving, and goal setting. It features comprehensive transaction tracking and financial reports with secure local storage using Hive.',
            fontSize: 9,
            fontWeight: pw.FontWeight.normal,
          ),
          bulletPoints('Local Storage: Hive'),
          pw.SizedBox(height: 8),
          link('https://github.com/Thayibakayakkool/Money-Manager-App',
              '       GitHub: GitHub Link', 7, PdfColors.black),
          pw.SizedBox(height: 10),
          textWidget(
            text: 'Education',
            fontSize: 12,
            fontWeight: pw.FontWeight.bold,
          ),
          pw.SizedBox(height: 8),
          textWidget(
            text: 'Bachelor of Computer Applications (BCA),',
            fontSize: 10,
            fontWeight: pw.FontWeight.bold,
          ),
          textWidget(
            text: 'Manipal University Jaipur (Online Classes)',
            fontSize: 10,
            fontWeight: pw.FontWeight.bold,
          ),
          pw.SizedBox(height: 8),
          bulletPoints('Currently pursuing (Classes on Saturdays and Sundays)',
              fontWeight: pw.FontWeight.bold),
          bulletPoints('Expected Graduation: [2027]',
              fontWeight: pw.FontWeight.bold),
        ]);
  }

  static pw.Widget dividerWidget() {
    return pw.Divider(
        thickness: 5,
        height: 4,
        endIndent: 25,
        indent: 5,
        color: PdfColors.white);
  }

  static pw.Bullet bulletPoints(text, {pw.FontWeight? fontWeight}) {
    return pw.Bullet(
        margin: const pw.EdgeInsets.only(left: 5, top: 6),
        text: text,
        bulletSize: 4,
        style: pw.TextStyle(
            fontSize: 8, fontWeight: fontWeight ?? pw.FontWeight.normal),
        bulletMargin: const pw.EdgeInsets.only(top: 2, right: 3));
  }

  static pw.Widget link(
      String link, String text, double fontSize, PdfColor color) {
    return pw.UrlLink(
        child: pw.Text(text,
            style: pw.TextStyle(
              fontSize: fontSize,
              color: color,
              fontWeight: pw.FontWeight.normal,
            )),
        destination: link);
  }

  static pw.Widget skillDividerBar() {
    const progress = (40 / 40) * 100;
    return pw.Padding(
        padding: const pw.EdgeInsets.only(right: 20),
        child: pw.Container(
          height: 4,
          width: double.infinity,
          decoration: const pw.BoxDecoration(
            color: PdfColors.grey400,
          ),
          child: pw.Stack(
            children: [
              pw.Container(
                width: progress,
                decoration: const pw.BoxDecoration(
                  color: PdfColors.white,
                ),
              ),
            ],
          ),
        ));
  }

  static pw.Widget textWidget(
      {required String text,
      required double fontSize,
      required pw.FontWeight fontWeight,
      PdfColor? color}) {
    return pw.Text(text,
        style: pw.TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: color));
  }

  static pw.Widget boldTextWidget(
      {required String text, required double fontSize, PdfColor? color}) {
    return pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Text(
          text,
          style: pw.TextStyle(
            fontSize: fontSize,
            fontWeight: pw.FontWeight.bold,
            color: color,
          ),
        ));
  }
}
