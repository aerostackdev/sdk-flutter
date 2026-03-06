//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_increment200_response.g.dart';

/// CacheIncrement200Response
///
/// Properties:
/// * [value] - New value after increment
@BuiltValue()
abstract class CacheIncrement200Response implements Built<CacheIncrement200Response, CacheIncrement200ResponseBuilder> {
  /// New value after increment
  @BuiltValueField(wireName: r'value')
  int? get value;

  CacheIncrement200Response._();

  factory CacheIncrement200Response([void updates(CacheIncrement200ResponseBuilder b)]) = _$CacheIncrement200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheIncrement200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheIncrement200Response> get serializer => _$CacheIncrement200ResponseSerializer();
}

class _$CacheIncrement200ResponseSerializer implements PrimitiveSerializer<CacheIncrement200Response> {
  @override
  final Iterable<Type> types = const [CacheIncrement200Response, _$CacheIncrement200Response];

  @override
  final String wireName = r'CacheIncrement200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheIncrement200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheIncrement200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheIncrement200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheIncrement200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheIncrement200ResponseBuilder();
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

