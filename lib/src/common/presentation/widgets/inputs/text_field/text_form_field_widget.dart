part of app_inputs;

class TextFormFieldWidget extends StatelessWidget {
  final AppInputParameters inputParameters;

  const TextFormFieldWidget({required this.inputParameters, super.key});

  void _onTapOutside(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputParameters.label,
          style: AppTheme.style.contentCaptions.copyWith(
            color: AppTheme.colors.secondary,
          ),
        ).paddingLeft(12),
        heightSpace5,
        _AppInputBuilder(
          // callOnSubmitted: true,
          parameters: inputParameters,
          child: (AppInputParameters params) {
            return TextFormField(
              textCapitalization: params.textCapitalization,
              enabled: params.isEnabled,
              readOnly: params.isReadOnly,
              style: params.style,
              textAlign: params.textAlign,
              maxLength: params.maxLength,
              autovalidateMode: params.autoValidateMode,
              textInputAction: params.textInputAction,
              controller: params.controller,
              obscureText: params.obscureText,
              cursorColor: Colors.black,
              decoration: params.decoration,
              inputFormatters: params.inputFormatters,
              validator: params.validator,
              onChanged: params.onChanged,
              keyboardType: AppInputUtils.keyboardType(params.inputType),
              onTapOutside:
                  params.onTapOutside ? (_) => _onTapOutside(context) : null,
            );
          },
        ),
      ],
    );
  }
}
