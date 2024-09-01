import '/backend/api_requests/api_calls.dart';
import '/components/skeleton_list_component_widget.dart';
import '/components/valid_cart_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'favorite_page_widget.dart' show FavoritePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoritePageModel extends FlutterFlowModel<FavoritePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Add to favorites)] action in IconButton widget.
  ApiCallResponse? apiResultesy;
  // Stores action output result for [Backend Call - API (Remove from favorites)] action in IconButton widget.
  ApiCallResponse? apiResultesC;
  // Stores action output result for [Backend Call - API (Add items to cart)] action in IconButton widget.
  ApiCallResponse? apiResulthpg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
