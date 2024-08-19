import '/backend/api_requests/api_calls.dart';
import '/components/phone_verified/phone_verified_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'o_t_p_component_widget.dart' show OTPComponentWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OTPComponentModel extends FlutterFlowModel<OTPComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Verify OTP)] action in PinCode widget.
  ApiCallResponse? apiResultatPin;
  // Stores action output result for [Backend Call - API (Check JagShop account)] action in PinCode widget.
  ApiCallResponse? apiResultCheck;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
