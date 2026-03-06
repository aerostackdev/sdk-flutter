//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_set_many200_response.g.dart';

/// CacheSetMany200Response
///
/// Properties:
/// * [success] 
/// * [count] - Number of entries stored
@BuiltValue()
abstract class CacheSetMany200Response implements Built<CacheSetMany200Response, CacheSetMany200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Number of entries stored
  @BuiltValueField(wireName: r'count')
  int? get count;

  CacheSetMany200Response._();

  factory CacheSetMany200Response([void updates(CacheSetMany200ResponseBuilder b)]) = _$CacheSetMany200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheSetMany200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheSetMany200Response> get serializer => _$CacheSetMany200ResponseSerializer();
}

class _$CacheSetMany200ResponseSerializer implements PrimitiveSerializer<CacheSetMany200Response> {
  @override
  final Iterable<Type> types = const [CacheSetMany200Response, _$CacheSetMany200Response];

  @override
  final String wireName = r'CacheSetMany200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheSetMany200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheSetMany200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheSetMany200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheSetMany200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheSetMany200ResponseBuilder();
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

