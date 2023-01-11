import 'package:openredu_mobile_flutter/src/auth/sign_in/data/entities/sign_in_entity.dart';
import 'package:openredu_mobile_flutter/src/auth/sign_in/domain/models/sign_in_form.dart';
import 'package:openredu_mobile_flutter/src/auth/sign_in/domain/models/sign_in_model.dart';
import 'package:openredu_mobile_flutter/src/shared/data/errors/app_error.dart';
import 'package:openredu_mobile_flutter/src/shared/data/errors/exceptions.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/api_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/result.dart';

class SignInRepository {
  final ApiRepository _apiRepository;

  SignInRepository({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Future<Result<SignInModel>> signInWithEmail({
    required SignInForm signInForm,
  }) async {
    Result response = await _apiRepository.post(
      url: 'Endpoints.signInWithEmail',
      body: signInForm.toJson(),
    );

    return response.handle(
      onSuccess: (data) {
        try {
          SignInEntity entity = SignInEntity.fromJson(data);

          return Success(entity.toDomain());
        } on ParseException catch (e) {
          return Failure(EntityNotFitError(slug: e.exception));
        } catch (e) {
          return Failure(ParseError(slug: e.toString()));
        }
      },
      onFailure: (error) {
        return Failure(error);
      },
    );
  }
}
