import '/backend/api_requests/api_calls.dart';
import '/components/o_t_p_component/o_t_p_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'phone_verified_page_model.dart';
export 'phone_verified_page_model.dart';

class PhoneVerifiedPageWidget extends StatefulWidget {
  /// La page de connexion
  const PhoneVerifiedPageWidget({super.key});

  @override
  State<PhoneVerifiedPageWidget> createState() =>
      _PhoneVerifiedPageWidgetState();
}

class _PhoneVerifiedPageWidgetState extends State<PhoneVerifiedPageWidget> {
  late PhoneVerifiedPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhoneVerifiedPageModel());

    _model.phoneTextController ??= TextEditingController();
    _model.phoneFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'w2pggfl3' /* Créer un compte */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DM Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '3g697hry' /* Pour commencer à créer votre c... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DM Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              width: 0.2,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'mxqq8w1b' /* +242 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'DM Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  height: 29.0,
                                  child: VerticalDivider(
                                    width: 5.0,
                                    thickness: 0.5,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.phoneTextController,
                                      focusNode: _model.phoneFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'DM Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'DM Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'DM Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      maxLength: 12,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .phoneTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [_model.phoneMask],
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 5.0)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (functions.verifiedPhone(
                                        functions.phoneFormatter(
                                            _model.phoneTextController.text)) ==
                                    true) {
                                  FFAppState().phone =
                                      '242${functions.phoneFormatter(_model.phoneTextController.text)}';
                                  setState(() {});
                                  _model.apiResultp85 =
                                      await APIJagShopGroup.sendOTPCall.call(
                                    phone: functions.phoneFormatter(
                                        _model.phoneTextController.text),
                                    dialCode: '242',
                                  );

                                  if ((_model.apiResultp85?.succeeded ??
                                      true)) {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      isDismissible: false,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: Container(
                                              height: 300.0,
                                              child: OTPComponentWidget(
                                                phone:
                                                    '242 ${_model.phoneTextController.text}',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          valueOrDefault<String>(
                                            functions.arrayToString(
                                                APIJagShopGroup.sendOTPCall
                                                    .msg(
                                                      (_model.apiResultp85
                                                              ?.jsonBody ??
                                                          ''),
                                                    )
                                                    ?.toList()),
                                            'Quelque chose ne s\'est pas bien passé.',
                                          ),
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 3000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }
                                } else {
                                  await actions.customToast(
                                    'Veuillez entrer un numéro de téléphone valide.',
                                  );
                                }

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                '3w4p11me' /* Suivant */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 52.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'DM Sans',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'knbr9qh9' /* Vous recevrez des notification... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'DM Sans',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
