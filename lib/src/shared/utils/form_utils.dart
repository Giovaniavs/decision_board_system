import 'package:openredu_mobile_flutter/src/shared/data/errors/form_error.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/form_field.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/maybe.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/result.dart';

class FormUtils {
  Result<String> validateField({
    required Maybe field,
    required List<String? Function(String)> validators,
  }) {
    List<String> errorMsgs = [];

    for (Function validator in validators) {
      String? error = validator(field.when(
        nothing: () => '',
        just: (val) => val != null ? val.toString() : '',
      ));
      if (error != null) errorMsgs.add(error);
    }

    return errorMsgs.isEmpty
        ? const Success('')
        : Failure(
            FormError(
              slug: errorMsgs.first,
            ),
          );
  }

  Map<String, dynamic> fieldsToJson(List<FormField> fields) {
    final data = <String, dynamic>{};

    for (var e in fields) {
      e.field.map(
        nothing: (_) => {},
        just: (val) {
          data[e.name] = val.value;
        },
      );
    }

    return data;
  }

  Map<String, dynamic> fieldsToJsonToOab({
    required Maybe<String> typeRequest,
    required Maybe<String> typeRelationship,
    required Maybe<List<FormField>> attributes,
    required Maybe<List<FormField>> relationships,
  }) {
    final data = <String, dynamic>{"data": {}};

    if (typeRequest.isJust) {
      data['data']['type'] = typeRequest.asJust.value;
    }

    if (attributes.isJust) {
      data['data']['attributes'] = {};

      for (var formField in attributes.asJust.value) {
        formField.field.map(
          nothing: (_) => {},
          just: (val) {
            data["data"]["attributes"][formField.name] = val.value;
          },
        );
      }
    }

    if (typeRelationship.isJust && relationships.isJust) {
      data['data']['relationships'] =
          relationshipsJSON(typeRelationship.asJust.value);

      for (var formField in relationships.asJust.value) {
        formField.field.map(
          nothing: (_) => {},
          just: (val) {
            data["data"]["relationships"][typeRelationship.asJust.value]["data"]
                ["attributes"][formField.name] = val.value;
          },
        );
      }
    }

    return data;
  }

  Map<String, dynamic> relationshipsJSON(
    String type,
  ) {
    final data = <String, dynamic>{};
    data[type] = {
      "data": {
        "type": type,
        "attributes": {},
      },
    };
    return data;
  }
}
