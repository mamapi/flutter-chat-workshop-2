import 'package:chatapp/utils/design_helpers.dart';
import 'package:chatapp/widgets/send_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendMessageField extends StatefulWidget {
  const SendMessageField({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField> {
  _SendMessageFieldState() : textController = TextEditingController();

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          DesignHelpers.getShadow(),
        ],
      ),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
          fillColor: Colors.white,
          hintText: 'Type your message...',
          hintStyle: TextStyle(fontSize: 12),
          filled: true,
          suffixIcon: SendIcon(onPressed: sendMessage),
        ),
      ),
    );
  }

  void sendMessage() {
    if (textController.text.isEmpty) {
      return;
    }

    textController.clear();
  }
}
