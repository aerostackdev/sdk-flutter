//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response.g.dart';

/// ErrorResponse
///
/// Properties:
/// * [code] 
/// * [message] 
/// * [details] 
@BuiltValue()
abstract class ErrorResponse implements Built<ErrorResponse, ErrorResponseBuilder> {
  @BuiltValueField(wireName: r'code')
  ErrorResponseCodeEnum get code;
  // enum codeEnum {  AUTH_INVALID_KEY,  AUTH_INVALID_CREDENTIALS,  DB_QUERY_FAILED,  RATE_LIMIT_EXCEEDED,  VALIDATION_ERROR,  INTERNAL_ERROR,  FORBIDDEN,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'details')
  BuiltMap<JsonObject?>? get details;

  ErrorResponse._();

  factory ErrorResponse([void updates(ErrorResponseBuilder b)]) = _$ErrorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponse> get serializer => _$ErrorResponseSerializer();
}

class _$ErrorResponseSerializer implements PrimitiveSerializer<ErrorResponse> {
  @override
  final Iterable<Type> types = const [ErrorResponse, _$ErrorResponse];

  @override
  final String wireName = r'ErrorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(ErrorResponseCodeEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ErrorResponseCodeEnum),
          ) as ErrorResponseCodeEnum;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
          ) as BuiltMap<JsonObject?>?;
          if (valueDes == null) continue;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ErrorResponseCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'AUTH_INVALID_KEY')
  static const ErrorResponseCodeEnum AUTH_INVALID_KEY = _$errorResponseCodeEnum_AUTH_INVALID_KEY;
  @BuiltValueEnumConst(wireName: r'AUTH_INVALID_CREDENTIALS')
  static const ErrorResponseCodeEnum AUTH_INVALID_CREDENTIALS = _$errorResponseCodeEnum_AUTH_INVALID_CREDENTIALS;
  @BuiltValueEnumConst(wireName: r'DB_QUERY_FAILED')
  static const ErrorResponseCodeEnum DB_QUERY_FAILED = _$errorResponseCodeEnum_DB_QUERY_FAILED;
  @BuiltValueEnumConst(wireName: r'RATE_LIMIT_EXCEEDED')
  static const ErrorResponseCodeEnum RATE_LIMIT_EXCEEDED = _$errorResponseCodeEnum_RATE_LIMIT_EXCEEDED;
  @BuiltValueEnumConst(wireName: r'VALIDATION_ERROR')
  static const ErrorResponseCodeEnum VALIDATION_ERROR = _$errorResponseCodeEnum_VALIDATION_ERROR;
  @BuiltValueEnumConst(wireName: r'INTERNAL_ERROR')
  static const ErrorResponseCodeEnum INTERNAL_ERROR = _$errorResponseCodeEnum_INTERNAL_ERROR;
  @BuiltValueEnumConst(wireName: r'FORBIDDEN')
  static const ErrorResponseCodeEnum FORBIDDEN = _$errorResponseCodeEnum_FORBIDDEN;

  static Serializer<ErrorResponseCodeEnum> get serializer => _$errorResponseCodeEnumSerializer;

  const ErrorResponseCodeEnum._(String name): super(name);

  static BuiltSet<ErrorResponseCodeEnum> get values => _$errorResponseCodeEnumValues;
  static ErrorResponseCodeEnum valueOf(String name) => _$errorResponseCodeEnumValueOf(name);
}

