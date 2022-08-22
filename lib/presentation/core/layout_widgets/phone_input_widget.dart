// import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';
class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({
    Key? key,
    required this.phoneNoTEC,
    required this.hintText,
    required this.onChanged,
    required this.maskFormatter,
  }) : super(key: key);

  final String hintText;
  final MaskTextInputFormatter maskFormatter;
  final TextEditingController phoneNoTEC;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: phoneNoTEC,

      keyboardType: TextInputType.phone,
      // maxLength: 10,
      onChanged: (e) {
        onChanged();
      },
      style:  TextStyle(
        fontSize: MediaQuery.of(context).size.width < 360 ? 16 :22,
        fontWeight: FontWeight.bold,
      ),
      inputFormatters: [maskFormatter],
      decoration: InputDecoration.collapsed(
        hintText: hintText,
        hintStyle: GoogleFonts.arimo(
          color: Kolors.lightGrey,
          fontSize: MediaQuery.of(context).size.width < 360 ? 18 :24,
        ),
        focusColor: Kolors.primary,
      ),
      // decoration: InputDecoration(
      //   focusedBorder: OutlineInputBorder(
      //     borderSide: const BorderSide(color: Kolors.primary, width: 2.0),
      //     borderRadius: BorderRadius.circular(5.0),
      //   ),
      //   enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(5),
      //     borderSide: const BorderSide(
      //       width: 2,
      //       color: Kolors.primary,
      //     ),
      //   ),
      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(5),
      //   ),

      // ),
    );
  }
}
