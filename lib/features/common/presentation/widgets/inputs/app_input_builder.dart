part of app_inputs;

class _AppInputBuilder extends StatefulWidget {
  // final bool callOnSubmitted;
  final AppInputParameters parameters;
  final Widget Function(AppInputParameters) child;

  const _AppInputBuilder({
    // this.callOnSubmitted = false,
    required this.parameters,
    required this.child,
  });

  @override
  State<_AppInputBuilder> createState() => _AppInputBuilderState();
}

class _AppInputBuilderState extends State<_AppInputBuilder> {
  bool _isHidePassword = true;
  bool _showCancelIconInState = false;

  BorderRadius get _defaultBorder => BorderRadius.circular(8.0);

  AppInputParameters get _parameters => widget.parameters;

  @override
  Widget build(BuildContext context) {
    return widget.child.call(_parameters.copyWith(
      controller: _parameters.controller,
      textCapitalization: _parameters.textCapitalization,
      style: _parameters.style,
      textAlign: _parameters.textAlign,
      maxLength: _parameters.maxLength,
      textInputAction: _parameters.textInputAction,
      onChanged: _parameters.onChanged,
      inputFormatters: _parameters.inputFormatters,
      keyboardType: AppInputUtils.keyboardType(_parameters.inputType),
      validator: (String? value) => AppInputValidations.validate(
        value ?? "",
        widget.parameters,
      ),
      obscureText: _obscureText(),
      decoration: InputDecoration(
        isDense: true,
        prefixText: _parameters.prefixText,
        suffixIcon: _buildSuffixIconDecoration(),
        border: _defaultInputBorder(
          colorBorderSide: AppTheme.colors.inputDisabled,
        ),
        enabledBorder: _defaultInputBorder(
          colorBorderSide: AppTheme.colors.inputDisabled,
        ),
        focusedBorder: _defaultInputBorder(
          colorBorderSide: AppTheme.colors.primary,
        ),
      ),
    ));
  }

  InputBorder _defaultInputBorder({required Color colorBorderSide}) {
    return OutlineInputBorder(
      borderRadius: _defaultBorder,
      borderSide: BorderSide(color: colorBorderSide),
    );
  }

  bool _obscureText() {
    if (_parameters.showEyeIcon) {
      return _isHidePassword;
    }

    return _parameters.obscureText;
  }

  /// Handles hiding or showing the password.
  void _handleHidePassword() {
    if (_parameters.showEyeIcon) {
      setState(() => _isHidePassword = !_isHidePassword);
    }
  }

  /// Handles hiding the cancel icon.
  void handleHideCancelIcon() {
    if (_parameters.controller.text.isEmpty && _parameters.showCancelIcon) {
      if (_showCancelIconInState) {
        setState(() => _showCancelIconInState = false);
      }
    } else {
      if (!_showCancelIconInState && _parameters.showCancelIcon) {
        setState(() => _showCancelIconInState = true);
      }
    }
  }

  /// Builds the suffix icon decoration for the TextField.
  Widget? _buildSuffixIconDecoration() {
    if (widget.parameters.isReadOnly || !widget.parameters.isEnabled) {
      return null;
    }

    if (widget.parameters.suffixIcon != null) {
      return widget.parameters.suffixIcon;
    }

    if (_showCancelIconInState) {
      return GestureDetector(
        onTap: widget.parameters.controller.clear,
        child: Container(
          color: Colors.transparent,
          child: const Icon(
            Icons.cancel,
            size: 18,
            color: Colors.grey,
          ),
        ),
      );
    }

    if (widget.parameters.showEyeIcon) {
      if (_isHidePassword) {
        return GestureDetector(
          onTap: () => _handleHidePassword.call(),
          child: Container(
            color: Colors.transparent,
            child: const Icon(
              Icons.visibility_off,
              color: Colors.grey,
            ),
          ),
        );
      }

      return GestureDetector(
        onTap: () => _handleHidePassword.call(),
        child: Container(
          color: Colors.transparent,
          child: const Icon(
            Icons.visibility,
            color: Colors.grey,
          ),
        ),
      );
    }

    return widget.parameters.decoration.suffixIcon;
  }
}
