import 'package:leave_management/config/images.dart';
import 'package:leave_management/config/style.dart';
import 'package:flutter/material.dart';

class InputFiled extends StatefulWidget {
  String labelName;
  TextInputType inputType;
  bool readOnly;
  bool enabled;
  String initialValue;
  Function(String) value;
  InputFiled({
    required this.labelName,
    required this.inputType,
    this.readOnly = false,
    this.enabled = true,
    this.initialValue='',
    required this.value,
  });
  @override
  _InputFiledState createState() => _InputFiledState();
}

class _InputFiledState extends State<InputFiled> {
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: inputValueStyle,
      initialValue: widget.initialValue,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      keyboardType: widget.inputType,
      cursorColor: const Color(0xff288b77),
      decoration: InputDecoration(
        labelText: widget.labelName,
        labelStyle: loginmainLabel,
        helperStyle: loginmainLabel,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          //  when the TextFormField in unfocused
        ) ,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: const Color(0xff288b77)),
          //  when the TextFormField in focused
        ) ,
        border: UnderlineInputBorder(
        ),
        suffixIcon: widget.labelName == "Password"
            ? IconButton(
                alignment: Alignment.centerRight,
                splashColor: Colors.transparent,
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Image(
                        image: AssetImage(UIImageData.eye),
                        width: 16.0,
                        alignment: Alignment.bottomRight,
                      )
                    : Image(
                        image: AssetImage(UIImageData.eyeclose),
                        alignment: Alignment.bottomRight,
                        width: 16.0,
                      ),
              )
            : null,
      ),
      onChanged: (String value) {
        widget.value(value);
      },
      validator: (value) {
        // if (value.isEmpty) {
        //   return 'Please Enter ' + widget.labelName;
        // }
        return null;
      },
      obscureText: widget.labelName == "Password" ? _isHidden : false,
    );
  }
}
