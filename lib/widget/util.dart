import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.blueGrey,
  minimumSize: const Size(88, 36),
  backgroundColor: Colors.transparent,
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

final maskFormatter = MaskTextInputFormatter(
  mask: '00.00',
  filter: {"0": RegExp(r'[0-9]')},
  type: MaskAutoCompletionType.eager,
);
