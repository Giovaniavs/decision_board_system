import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:openredu_mobile_flutter/src/shared/data/entities/api_state_entity.dart';
import 'package:openredu_mobile_flutter/src/shared/data/errors/http_error.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/token_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/result.dart';

// ignore: constant_identifier_names

class ApiRepository extends Cubit<ApiState> {
  final TokenRepository _tokenRepository;
  final String _apiScret;
  final Dio _httpClient;

  Future<Options> headers() async {
    final Result<String> response = await _tokenRepository.get();

    return response.handle(
      onSuccess: (data) => Options(
        headers: {
          "Authorization": 'Bearer $data',
          "access-key": _apiScret,
        },
      ),
      onFailure: (error) => Options(headers: {"access-key": _apiScret}),
    );
  }

  ApiRepository({
    Key? key,
    required TokenRepository tokenRepository,
    required Dio httpClient,
    required String apiSecret,
  })  : _tokenRepository = tokenRepository,
        _httpClient = httpClient,
        _apiScret = apiSecret,
        super(const AuthInit());

  _handleErrors(HttpError error) {
    if (error is HttpUnauthorizedError) {
      emit(const Unauthenticated());
    }
    if (error is HttpGoneError) {
      emit(const Gone());
    }
  }

  // Requests
  Future<Result> get({
    required String url,
    Map<String, dynamic> queryParams = const {},
  }) async {
    try {
      final Response response = await _httpClient.get(
        url,
        queryParameters: queryParams,
        options: await headers(),
      );

      emit(const Authenticated());
      return Success(response.data);
    } on DioError catch (e) {
      final HttpError error = parseHttpError(e);
      _handleErrors(error);
      return Failure(error);
    } catch (exception, stackTrace) {
      return Failure(HttpUnknownError(slug: "unknown_api"));
    }
  }

  Future<Result> post({
    String url = '',
    Map<String, dynamic> body = const {},
    bool returnHeaderField = false,
    String? headerField,
  }) async {
    try {
      final Response response = await _httpClient.post(
        url,
        data: body,
        options: await headers(),
      );

      emit(const Authenticated());
      if (returnHeaderField && headerField != null) {
        return Success(response.headers.value(headerField));
      }
      return Success(response.data);
    } on DioError catch (e) {
      final HttpError error = parseHttpError(e);
      _handleErrors(error);
      return Failure(error);
    } catch (exception, stackTrace) {
      return Failure(HttpUnknownError());
    }
  }

  Future<Result> patch({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.patch(
        url,
        data: body,
        options: await headers(),
      );

      emit(const Authenticated());
      return Success(response.data);
    } on DioError catch (e) {
      final HttpError error = parseHttpError(e);
      _handleErrors(error);
      return Failure(error);
    } catch (exception, stackTrace) {
      return Failure(HttpUnknownError());
    }
  }

  Future<Result> delete({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.delete(
        url,
        data: body,
        options: await headers(),
      );

      emit(const Authenticated());
      return Success(response.data);
    } on DioError catch (e) {
      final HttpError error = parseHttpError(e);
      _handleErrors(error);
      return Failure(error);
    } catch (exception, stackTrace) {
      return Failure(HttpUnknownError());
    }
  }

  Future<Result> put({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.put(
        url,
        data: body,
        options: await headers(),
      );

      emit(const Authenticated());
      return Success(response.data);
    } on DioError catch (e) {
      final HttpError error = parseHttpError(e);
      _handleErrors(error);
      return Failure(error);
    } catch (exception, stackTrace) {
      return Failure(HttpUnknownError());
    }
  }
}
