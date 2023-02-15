import 'package:flutter/material.dart';
import 'package:whatsapp_clone/global.dart';

class ModeTile extends StatefulWidget {
  final int modeId;
  final String modeName;
  final String imageName;
  const ModeTile(
      {super.key,
      required this.modeId,
      required this.modeName,
      required this.imageName});

  @override
  State<ModeTile> createState() => _ModeTileState();
}

class _ModeTileState extends State<ModeTile> {
  onTap() {
    setState(() {
      selectedMode = widget.modeName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${widget.imageName}')),
            border: Border.all(
                color: (selectedMode == widget.modeName)
                    ? Colors.yellow
                    : Colors.transparent,
                width: 8)),
        child: Center(
            child: Text(widget.modeName,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
