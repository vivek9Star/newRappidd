import 'package:flutter/material.dart';




class CustomCheckbox extends StatefulWidget {
  final bool isChecked;
  final Color checkColor;
  final Color activeColor;
  final Color inactiveColor;
  final double size;
  final String label;
  final ValueChanged<bool>? onChanged;

  CustomCheckbox({
    required this.isChecked,
    required this.checkColor,
    required this.activeColor, required this.inactiveColor,
    required this.size,
    required this.label,
    this.onChanged,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isChecked = widget.isChecked;
  }

  @override

  Widget build(BuildContext context) {

    return GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
            if (widget.onChanged != null) {
              widget.onChanged!(isChecked);
            }
          });
        },
        child: Row(
          children:[
            Container(
              width:  widget.size,
              height:  widget.size,
              decoration: BoxDecoration(
                color:  widget.inactiveColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: isChecked
                ? Icon(Icons.check,
                color: widget.checkColor,
                size: widget.size,
              )
                  :SizedBox(),
            ),
            SizedBox(width: 10.0,),
            Text(widget.label,
            style: TextStyle(fontSize: 12.0,
                color: Colors.black,
                fontWeight: FontWeight.normal),
            )

        ]
    )
    );
  }
}
