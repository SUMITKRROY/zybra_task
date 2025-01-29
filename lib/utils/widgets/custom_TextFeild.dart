import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CustomTextField extends StatefulWidget {
  final String? initialValue;
  final void Function(String) onChanged;
  final String label;
  final String validatorLable;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscured;
  final dynamic suffixIcon;
  final dynamic maxline;

  const CustomTextField(
      {super.key,
        required this.label,
        this.inputFormatters,
        required this.validatorLable,
        this.initialValue,
        required this.onChanged,
        this.controller,
        this.obscured = false,
        this.suffixIcon, this.keyboardType, this.maxline});

  @override
  @override
  State<CustomTextField> createState() {
    return _CustomTextField();
  }
}

class _CustomTextField extends State<CustomTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.text = widget.initialValue ?? '';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxline,
      //style: const TextStyle( fontSize: 18,color: Colors.black),
      inputFormatters: widget.inputFormatters,
      validator:(val) {
        if (val == '') return 'Enter a valid ${widget.validatorLable}';
        return null;
      },
      controller: widget.controller ?? _controller,
      onChanged: widget.onChanged,
      keyboardType: widget.keyboardType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          labelText:  widget.label,
          filled: true),
      obscureText: widget.obscured,
    );
  }
}