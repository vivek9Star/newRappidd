import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Color colorName;
  final String hintText;
  bool obscureText;
  final Function(String) onChanged;
  final Icon ? suffixIcon;
  final Icon ? prefixIcon;
  final Padding? padding;
  final EdgeInsets ? edgeInsets;
  final Color? colorCodes;
  final Radius radius;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool ? filled;



  CustomTextField({
    required this.controller,
    required this.colorName,
    required this.hintText,
    required this.obscureText,
    required this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.padding,
    this.edgeInsets,
    this.colorCodes,
    required this.radius,
    this.keyboardType,
    this.textInputAction,
    this.filled,
  });

  // static const Color backgroundColor = Color(0xffF3F4F6); //F5F8FA
  // static const Color hitTextColor = Color(0xffA9ACB5);
  // static const Color secondaryColor = Color(0xffCE6E39); //Burnt Orange

  static const Color backgroundColor = Color(0xffF3F4F6); //F5F8FA
  static const Color hitTextColor = Color(0xffA9ACB5);
  static const Color secondaryColor = Color(0xffCE6E39); //Bu


  static TextStyle hintStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: hitTextColor);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  static const Color backgroundColor = Color(0xffF3F4F6); //F5F8FA

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left: 0.0, right: 0.0),
      child: TextField(
        key: GlobalKey(), // Create a GlobalKey to use as the key
        controller: widget.controller,
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        decoration: (widget.obscureText) ? decorationPassword(widget.hintText) : decoration(widget.hintText),
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,

      ),
    );
  }

  decoration(String hint) {
    return InputDecoration(
      suffixIcon: widget.suffixIcon,
      prefixIcon:widget.prefixIcon,
      border: InputBorder.none,
      contentPadding: EdgeInsets.only(top: 15, left: 15, bottom: 0),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(widget.radius),
        borderSide: BorderSide(color: backgroundColor),

      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(widget.radius),
        borderSide: BorderSide(color: widget.colorName),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(widget.radius),
        borderSide: BorderSide(color: widget.colorName),
      ),
      hintText: hint,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6.0,),),
        borderSide: BorderSide(color:backgroundColor),
      ),
      hintStyle: CustomTextField.hintStyle,
      filled: widget.filled,
      fillColor: widget.colorName,

      // border: InputBorder.none,
    );
  }

  decorationPassword(String hint) {
    return InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.only(top: 15, left: 15, bottom: 0),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(widget.radius),
          borderSide: BorderSide(color: backgroundColor)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(widget.radius),
        borderSide: BorderSide(color: widget.colorName),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(widget.radius),
        borderSide: BorderSide(color: widget.colorName),
      ),
      hintText: hint,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(widget.radius),
        borderSide: BorderSide(color: backgroundColor),
      ),
      hintStyle: CustomTextField.hintStyle,
      filled: widget.filled,
      fillColor: widget.colorName,
      suffixIcon: GestureDetector(
          behavior: HitTestBehavior.translucent,
        onTap: () {
          setState(() {
            widget.obscureText = !widget.obscureText;
          });
        },
          child: Icon(
            widget.obscureText ? Icons.visibility_off : Icons.visibility,
            size: 18.0, color: CustomTextField.secondaryColor,
          ),
          ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class CustomTextField extends StatefulWidget {
//   final TextEditingController controller;
//   final Color colorName;
//   final String hintText;
//   bool obscureText;
//   final Function(String) onChanged;
//   final Icon? suffixIcon;
//   final Icon? prefixIcon;
//   final Padding? padding;
//   final EdgeInsets? edgeInsets;
//   final Color? colorCodes;
//
//   CustomTextField({
//     required this.controller,
//     required this.colorName,
//     required this.hintText,
//     required this.obscureText,
//     required this.onChanged,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.padding,
//     this.edgeInsets,
//     this.colorCodes,
//   });
//   static const Color backgroundColor = Color(0xffF3F4F6); //F5F8FA
//   static const Color hitTextColor = Color(0xffA9ACB5);
//   static const Color secondaryColor = Color(0xffCE6E39); //Bu
//
//   static TextStyle hintStyle = TextStyle(
//       fontSize: 13, fontWeight: FontWeight.w400,color: hitTextColor);
//
//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }
//
// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 0.0, right: 0.0),
//       child: TextField(
//         key: GlobalKey(),
//         controller: widget.controller,
//         obscureText: widget.obscureText,
//         onChanged: widget.onChanged,
//         decoration: (widget.obscureText)
//             ? decorationPassword(widget.hintText)
//             : decoration(widget.hintText),
//       ),
//     );
//   }
//
//   decoration(String hint) {
//     return InputDecoration(
//       suffixIcon: widget.suffixIcon,
//       prefixIcon: widget.prefixIcon,
//       border: InputBorder.none,
//       contentPadding: EdgeInsets.only(top: 15, left: 15, bottom: 0),
//       focusedErrorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(6.0)),
//         borderSide: BorderSide(color: widget.colorName),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(50.0)),
//         borderSide: BorderSide(color: widget.colorName),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(6.0)),
//         borderSide: BorderSide(color: widget.colorName),
//       ),
//       hintText: hint,
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(6.0)),
//         borderSide: BorderSide(color: widget.colorName),
//       ),
//       hintStyle: CustomTextField.hintStyle.copyWith(color: ),
//       filled: true,
//       fillColor: widget.colorName,
//     );
//   }
//
//   decorationPassword(String hint) {
//     return InputDecoration(
//       contentPadding: EdgeInsets.only(top: 15, left: 15, bottom: 0),
//       focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(6.0)),
//           borderSide: BorderSide(color: widget.colorName)),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(50.0)),
//         borderSide: BorderSide(color: widget.colorName),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(6.0)),
//         borderSide: BorderSide(color: widget.colorName),
//       ),
//       hintText: hint,
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(6.0)),
//         borderSide: BorderSide(color: widget.colorName),
//       ),
//       hintStyle: CustomTextField.hintStyle.copyWith(color: widget.colorName),
//       filled: true,
//       fillColor: widget.colorName,
//       suffixIcon: GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         onTap: () {
//           setState(() {
//             widget.obscureText = !widget.obscureText;
//           });
//         },
//         child: Icon(
//           widget.obscureText ? Icons.visibility_off : Icons.visibility,
//           size: 18.0,
//           color: widget.colorName,
//         ),
//       ),
//     );
//   }
// }
