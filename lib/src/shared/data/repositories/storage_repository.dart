// ignore_for_file: constant_identifier_names

import 'package:decision_board_system/src/decision_board/data/entities/complaint_entity.dart';
import 'package:decision_board_system/src/decision_board/data/entities/local_data_entity.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:decision_board_system/src/shared/data/entities/token_entity.dart';
import 'package:decision_board_system/src/shared/data/entities/user_credentials_entity.dart';
import 'package:decision_board_system/src/shared/data/errors/storage_error.dart';
import 'package:decision_board_system/src/shared/data/models/user_credentials_model.dart';
import 'dart:convert';

import 'package:decision_board_system/src/shared/data/types/result.dart';

const String TOKEN_KEY = 'PROJECT_AUTH_TOKEN';
const String USER_CREDENTIALS = 'USER_CREDENTIALS';
const String LOCAL_DATABASE_LOADED = 'LOCAL_DATABASE_LOADED';

class StorageRepository {
  final FlutterSecureStorage _storage;

  StorageRepository({required FlutterSecureStorage storage})
      : _storage = storage;

  Future<Result<String>> readToken() async {
    try {
      final String? value = await _storage.read(key: TOKEN_KEY);
      if (value == null) {
        return Failure<String>(StorageNotFoundError(slug: 'value_not_found'));
      } else {
        return Success<String>(value);
      }
    } catch (e) {
      return Failure<String>(
        StorageUnknownError(
          slug: 'unknown_error',
        ),
      );
    }
  }

  Future<Result> writeToken({required TokenEntity data}) async {
    try {
      await _storage.write(
        key: TOKEN_KEY,
        value: data.token,
      );
      return const Success(true);
    } catch (e) {
      return Failure(
        StorageUnknownError(
          slug: 'unknown_error',
        ),
      );
    }
  }

  Future<Result> clearToken() async {
    try {
      await _storage.delete(key: TOKEN_KEY);
      return const Success(true);
    } catch (e) {
      return Failure(StorageUnknownError(slug: "unknown_error"));
    }
  }

  Future<Result<UserCredentialsModel>> readUserCredential() async {
    try {
      final String? userCredentials = await _storage.read(
        key: USER_CREDENTIALS,
      );

      if ((userCredentials == null)) {
        return Failure<UserCredentialsModel>(
          StorageNotFoundError(slug: "value_not_found"),
        );
      } else {
        return Success<UserCredentialsModel>(
          UserCredentialsEntity.fromJson(
            json.decode(userCredentials),
          ).toDomain(),
        );
      }
    } catch (e) {
      return Failure(
        StorageUnknownError(slug: "unknown_error"),
      );
    }
  }

  Future<Result> writeUserCredential({
    required UserCredentialsEntity userCredentialsEntity,
  }) async {
    try {
      await _storage.write(
        key: USER_CREDENTIALS,
        value: json.encode(userCredentialsEntity.toJson()),
      );

      return const Success(true);
    } catch (e) {
      return Failure(StorageUnknownError(slug: "unknown_error"));
    }
  }

  Future<Result> clearUserCredential() async {
    try {
      await _storage.delete(key: USER_CREDENTIALS);

      return const Success(true);
    } catch (e) {
      return Failure(StorageUnknownError(slug: "unknown_error"));
    }
  }

  Future<Result<List<ComplaintModel>>> readLocalDatabase() async {
    try {
      final String? database = await _storage.read(
        key: LOCAL_DATABASE_LOADED,
      );

      if ((database == null)) {
        return Failure(
          StorageNotFoundError(slug: "value_not_found"),
        );
      } else {
        LocalDataEntity localDataEntity = LocalDataEntity.fromJson(
          json.decode(database),
        );

        List<ComplaintModel> complaintList = localDataEntity.complaintList!
            .map(
              (e) => e.toDomain(),
            )
            .toList();

        return Success(complaintList);
      }
    } catch (e) {
      return Failure(
        StorageUnknownError(slug: "unknown_error"),
      );
    }
  }

  Future<Result> writeLocalDatabase({
    required List<ComplaintModel> data,
  }) async {
    try {
      LocalDataEntity localData = LocalDataEntity(
        complaintList: data.map((e) => ComplaintEntity.fromDomain(e)).toList(),
      );

      String localDataSerialized = json.encoder.convert(
        localData.toJson(),
      );

      await _storage.write(
        key: LOCAL_DATABASE_LOADED,
        value: localDataSerialized,
      );

      return const Success(true);
    } catch (e) {
      return Failure(
        StorageUnknownError(slug: "unknown_error"),
      );
    }
  }
}
