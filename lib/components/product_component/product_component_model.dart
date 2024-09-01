import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'product_component_widget.dart' show ProductComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductComponentModel extends FlutterFlowModel<ProductComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Add to favorites)] action in IconButton widget.
  ApiCallResponse? apiResultesy;
  // Stores action output result for [Backend Call - API (Remove from favorites)] action in IconButton widget.
  ApiCallResponse? apiResultesC;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
