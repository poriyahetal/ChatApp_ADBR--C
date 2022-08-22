import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';

class CustomDropdownTile extends StatefulWidget {
  const CustomDropdownTile({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.title,
    this.leadingIcon,
    this.defaultValue,
  }) : super(key: key);
  final String title;
  final String? defaultValue;
  final List<String> items;
  final Widget? leadingIcon;
  final Function(String?) onChanged;

  @override
  _CustomDropdownTileState createState() => _CustomDropdownTileState();
}

class _CustomDropdownTileState extends State<CustomDropdownTile> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.defaultValue ?? widget.items[0];
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leadingIcon,
      title: Text(widget.title),
      subtitle: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 26,
          elevation: 16,
          isDense: true,
          style: const TextStyle(color: Kolors.primary),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
            widget.onChanged(newValue);
          },
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
