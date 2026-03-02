//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_set200_response.g.dart';

/// CacheSet200Response
///
/// Properties:
/// * [success] 
@BuiltValue()
abstract class CacheSet200Response implements Built<CacheSet200Response, CacheSet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  CacheSet200Response._();

  factory CacheSet200Response([void updates(CacheSet200ResponseBuilder b)]) = _$CacheSet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheSet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheSet200Response> get serializer => _$CacheSet200ResponseSerializer();
}

class _$CacheSet200ResponseSerializer implements PrimitiveSerializer<CacheSet200Response> {
  @override
  final Iterable<Type> types = const [CacheSet200Response, _$CacheSet200Response];

  @override
  final String wireName = r'CacheSet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheSet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheSet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheSet200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheSet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheSet200ResponseBuilder();
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

