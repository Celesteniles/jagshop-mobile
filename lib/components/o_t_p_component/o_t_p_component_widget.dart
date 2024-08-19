import '/backend/api_requests/api_calls.dart';
import '/components/phone_verified/phone_verified_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'o_t_p_component_model.dart';
export 'o_t_p_component_model.dart';

class OTPComponentWidget extends StatefulWidget {
  const OTPComponentWidget({
    super.key,
    required this.phone,
  });

  final String? phone;

  @override
  State<OTPComponentWidget> createState() => _OTPComponentWidgetState();
}

class _OTPComponentWidgetState extends State<OTPComponentWidget> {
  late OTPComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'zuz0grpq' /* Confirmation */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'DM Sans',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    'Saisissez l\'OTP que nous vous avons envoyé au ${widget!.phone}',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DM Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ].divide(SizedBox(width: 5.0)),
            ),
            Builder(
              builder: (context) => PinCodeTextField(
                autoDisposeControllers: false,
                appContext: context,
                length: 6,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'DM Sans',
                      color: Colors.black,
                      letterSpacing: 0.0,
                    ),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                enableActiveFill: true,
                autoFocus: true,
                enablePinAutofill: false,
                errorTextSpace: 16.0,
                showCursor: true,
                cursorColor: FlutterFlowTheme.of(context).primary,
                obscureText: false,
                hintCharacter: '-',
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  fieldHeight: 44.0,
                  fieldWidth: 44.0,
                  borderWidth: 2.0,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6.0),
                    bottomRight: Radius.circular(6.0),
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(6.0),
                  ),
                  shape: PinCodeFieldShape.box,
                  activeColor: Colors.white,
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  selectedColor: Colors.black,
                  activeFillColor: Colors.white,
                  inactiveFillColor: FlutterFlowTheme.of(context).alternate,
                  selectedFillColor: Colors.black,
                ),
                controller: _model.pinCodeController,
                onChanged: (_) {},
                onCompleted: (_) async {
                  var _shouldSetState = false;
                  await actions.customToast(
                    'Vérification en cours ...',
                  );
                  _model.apiResultatPin =
                      await APIJagShopGroup.verifyOTPCall.call(
                    telephone: FFAppState().phone,
                    digit: _model.pinCodeController!.text,
                  );

                  _shouldSetState = true;
                  if ((_model.apiResultatPin?.succeeded ?? true)) {
                    _model.apiResultCheck =
                        await APIJagShopGroup.checkJagShopAccountCall.call(
                      phone: FFAppState().phone,
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultCheck?.succeeded ?? true)) {
                      Navigator.pop(context);
                      await showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: Container(
                              width: double.infinity,
                              child: PhoneVerifiedWidget(),
                            ),
                          );
                        },
                      );
                    } else {
                      Navigator.pop(context);

                      context.pushNamed('RegisterPage');
                    }
                  } else {
                    await actions.customToast(
                      valueOrDefault<String>(
                        functions.arrayToString(APIJagShopGroup.verifyOTPCall
                            .msg(
                              (_model.apiResultatPin?.jsonBody ?? ''),
                            )
                            ?.toList()),
                        'Quelque chose ne s\'est pas bien passée.',
                      ),
                    );
                    if (_shouldSetState) setState(() {});
                    return;
                  }

                  if (_shouldSetState) setState(() {});
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:
                    _model.pinCodeControllerValidator.asValidator(context),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'xm2gbnzi' /* Vous n'avez pas reçu ? */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DM Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '4hrg8tb8' /* Renvoyer */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DM Sans',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ].divide(SizedBox(width: 5.0)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'sff8bbtp' /* Fermer */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DM Sans',
                            color: FlutterFlowTheme.of(context).error,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ].divide(SizedBox(width: 5.0)),
              ),
            ),
          ].divide(SizedBox(height: 20.0)),
        ),
      ),
    );
  }
}
