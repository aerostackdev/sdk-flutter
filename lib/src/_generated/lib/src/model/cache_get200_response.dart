//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_get200_response.g.dart';

/// CacheGet200Response
///
/// Properties:
/// * [value] 
/// * [exists] 
@BuiltValue()
abstract class CacheGet200Response implements Built<CacheGet200Response, CacheGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  CacheGet200Response._();

  factory CacheGet200Response([void updates(CacheGet200ResponseBuilder b)]) = _$CacheGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheGet200Response> get serializer => _$CacheGet200ResponseSerializer();
}

class _$CacheGet200ResponseSerializer implements PrimitiveSerializer<CacheGet200Response> {
  @override
  final Iterable<Type> types = const [CacheGet200Response, _$CacheGet200Response];

  @override
  final String wireName = r'CacheGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exists != null) {
      yield r'exists';
      yield serializers.serialize(
        object.exists,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'exists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exists = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheGet200ResponseBuilder();
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

