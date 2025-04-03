import 'package:flutter/material.dart';

class DirtyScreenTwentyThree extends StatelessWidget {
  const DirtyScreenTwentyThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #23"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DownloadProgressTile(fileNumber: 1, progress: 50, value: 0.5),
            DownloadProgressTile(fileNumber: 2, progress: 80, value: 0.8),
            DownloadProgressTile(fileNumber: 3, progress: 30, value: 0.3),
          ],
        ),
      ),
    );
  }
}

class DownloadProgressTile extends StatelessWidget {
  final int fileNumber;
  final int progress;
  final double value;
  const DownloadProgressTile(
      {required this.fileNumber,
      required this.progress,
      required this.value,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Downloading File $fileNumber',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          LinearProgressIndicator(value: value),
          SizedBox(height: 8),
          Text('$progress completed',
              style: TextStyle(fontSize: 16, color: Colors.grey)),
        ],
      ),
    );
  }
}
