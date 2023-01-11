import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/form_field.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/result.dart';
import 'package:openredu_mobile_flutter/src/shared/utils/form_utils.dart';
import 'package:openredu_mobile_flutter/src/shared/utils/form_validators.dart';

part 'sign_in_form.freezed.dart';

@freezed
class SignInForm with _$SignInForm, FormUtils {
  const SignInForm._();
  const factory SignInForm({
    @Default(FormField<String>(name: 'email')) FormField<String> email,
    @Default(FormField<String>(name: 'password')) FormField<String> password,
    @Default(FormField<String>(name: 'installationId'))
        FormField<String> installationId,
  }) = _SignInForm;

  Result<String> get emailValidation => validateField(
        field: email.field,
        validators: FormValidators.email,
      );

  Result<String> get passwordValidation => validateField(
        field: password.field,
        validators: FormValidators.password,
      );

  bool get isValid => emailValidation.isSuccess && passwordValidation.isSuccess;

  Map<String, dynamic> toJson() => fieldsToJson(
        [
          email,
          password,
          installationId,
        ],
      );

  Map<String, dynamic> rememberUserToJson() => fieldsToJson(
        [
          email,
          password,
        ],
      );
}
