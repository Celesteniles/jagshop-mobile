import '/backend/api_requests/api_calls.dart';
import '/components/o_t_p_component/o_t_p_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'phone_verified_page_widget.dart' show PhoneVerifiedPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PhoneVerifiedPageModel extends FlutterFlowModel<PhoneVerifiedPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '## ### ####');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // Stores action output result for [Backend Call - API (Send OTP)] action in Button widget.
  ApiCallResponse? apiResultp85;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
