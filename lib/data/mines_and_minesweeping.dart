import 'package:flutter/material.dart';

class MinesAndMinesweeping extends StatefulWidget {
  static const id = 'mines_and_minesweeping';
  const MinesAndMinesweeping({Key? key}) : super(key: key);

  @override
  _MinesAndMinesweepingState createState() => _MinesAndMinesweepingState();
}

class _MinesAndMinesweepingState extends State<MinesAndMinesweeping>
    with WidgetsBindingObserver {
  int? pages = 0;
  int? currentPage = 0;
  bool isReady = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [],
      ),
    );
  }
}

// PDFView(
//   filePath:
//       "/assets/images/mines_and_minesweeping/mines_and_minesweeping_pdf.pdf",
//   enableSwipe: true,
//   swipeHorizontal: true,
//   autoSpacing: false,
//   pageFling: true,
//   pageSnap: true,
//   defaultPage: currentPage!,
//   preventLinkNavigation: false,
//   fitPolicy: FitPolicy.BOTH,
//   onRender: (_pages) {
//     setState(() {
//       pages = _pages;
//       isReady = true;
//     });
//   },
//   onViewCreated: (PDFViewController pdfViewController) {
//     _controller.complete(pdfViewController);
//   },
//   onPageChanged: (int? page, int? total) {
//     print('page changed: $page/$total');
//     setState(() {
//       currentPage = page;
//     });
//   },
// )
