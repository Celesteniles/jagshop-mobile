import '/backend/backend.dart';
import '/components/change_photo/change_photo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'edit_profile_model.dart';
export 'edit_profile_model.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({
    super.key,
    this.userProfile,
  });

  final UsersRecord? userProfile;

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  late EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.myBioTextController ??= TextEditingController();
    _model.myBioFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController1?.text = FFLocalizations.of(context).getText(
            '6acnukpu' /* [display_name] */,
          );
          _model.textController2?.text = FFLocalizations.of(context).getText(
            '6590ro17' /* [display_name] */,
          );
          _model.emailAddressTextController?.text =
              FFLocalizations.of(context).getText(
            'fw41h6av' /* [display_name] */,
          );
          _model.myBioTextController?.text =
              FFLocalizations.of(context).getText(
            'wow6q0q5' /* [bio] */,
          );
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Icons.keyboard_arrow_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'mkyy49g0' /* Modifier le profil */,
          ),
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'DM Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFDBE2E7),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          widget!.userProfile!.photoUrl,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        barrierColor: Color(0xB2090F13),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: Container(
                              height: 470.0,
                              child: ChangePhotoWidget(),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    text: FFLocalizations.of(context).getText(
                      '5g6b0ccj' /* Changer le profil */,
                    ),
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).lineGray,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
              child: TextFormField(
                controller: _model.textController1,
                focusNode: _model.textFieldFocusNode1,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    'guk9pvp2' /* Nom complet */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    'q7sjlwo5' /* Your full name... */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).lineGray,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'DM Sans',
                      letterSpacing: 0.0,
                    ),
                validator: _model.textController1Validator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
              child: TextFormField(
                controller: _model.textController2,
                focusNode: _model.textFieldFocusNode2,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    '68o9m76d' /* Numéro de téléphone */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    '9vafq9pu' /* Your full name... */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).lineGray,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'DM Sans',
                      letterSpacing: 0.0,
                    ),
                maxLength: 12,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        maxLength}) =>
                    null,
                keyboardType: TextInputType.number,
                validator: _model.textController2Validator.asValidator(context),
                inputFormatters: [_model.textFieldMask2],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
              child: TextFormField(
                controller: _model.emailAddressTextController,
                focusNode: _model.emailAddressFocusNode,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    'qxbdvtko' /* Adresse e-mail */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    'ztahepe8' /* Your email.. */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).lineGray,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'DM Sans',
                      letterSpacing: 0.0,
                    ),
                validator: _model.emailAddressTextControllerValidator
                    .asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
              child: TextFormField(
                controller: _model.myBioTextController,
                focusNode: _model.myBioFocusNode,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    '4cv7f3uf' /* Bio */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    '6s7qgww1' /* A little about you... */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).lineGray,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'DM Sans',
                      letterSpacing: 0.0,
                    ),
                textAlign: TextAlign.start,
                maxLines: 3,
                validator:
                    _model.myBioTextControllerValidator.asValidator(context),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.05),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'p6l0426i' /* Sauvégarder */,
                  ),
                  options: FFButtonOptions(
                    width: 340.0,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
