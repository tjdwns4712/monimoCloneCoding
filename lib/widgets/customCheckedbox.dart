import 'package:flutter/material.dart';

class customCheckedbox extends StatefulWidget {
  final double size;
  final double iconSize;
  final Color selectedColor;
  final Color selectedIconColor;

  const customCheckedbox({
    super.key,
    required this.size,
    required this.iconSize,
    required this.selectedColor,
    required this.selectedIconColor,
  });

  @override
  State<customCheckedbox> createState() => _customCheckedboxState();
}

class _customCheckedboxState extends State<customCheckedbox> {
  bool _isSelected = false;

  List<String> selected = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          // 누르면 버튼 반전으로.
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isSelected ? widget.selectedColor : Colors.black12,
          borderRadius: BorderRadius.circular(45),
        ),
        width: widget.size,
        height: widget.size,
        child: Center(
          child: Icon(
            Icons.check,
            color: _isSelected ? widget.selectedIconColor : Colors.white,
            size: widget.iconSize,
          ),
        ),
      ),
    );
  }
}
// 적용하기 누르면 체크한 카테고리가 list 형태로 likedCategory에 저장되도록 구현
// test