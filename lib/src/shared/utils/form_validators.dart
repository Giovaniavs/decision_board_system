const String _genericMandatoryFieldMessage = 'Campo obrigatório';
const emailRegex =
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
const cepRegex = r"^\d{5}-\d{3}$";

class FormValidators {
  static List<String? Function(String, String)> isEqual = [
    (String val, String valConfirmation) =>
        (val.isEmpty) || (valConfirmation.isEmpty)
            ? _genericMandatoryFieldMessage
            : null,
    (String val, String valConfirmation) =>
        !(val == valConfirmation) ? 'As senhas devem ser iguais' : null,
  ];

  static List<String? Function(String)> isRange = [
    (String val) => (val.isEmpty) ? _genericMandatoryFieldMessage : null,
    (String val) => !(int.parse(val) >= 5 && int.parse(val) <= 15)
        ? 'O Valor precisa ser entre 5 e 15'
        : null,
  ];

  static List<String? Function(String)> isEmpty = [
    (String val) => (val.isEmpty) ? _genericMandatoryFieldMessage : null,
  ];

  static List<String? Function(String)> email = [
    (String val) => (val.isEmpty) ? _genericMandatoryFieldMessage : null,
    (String value) =>
        !RegExp(emailRegex).hasMatch(value) ? 'Coloque um e-mail válido' : null,
  ];

  static List<String? Function(String)> password = [
    (String val) => (val.isEmpty) ? _genericMandatoryFieldMessage : null,
    (String value) => !(value.length >= 4)
        ? 'A senha deve conter ao menos 4 caracteres'
        : null,
  ];
}
