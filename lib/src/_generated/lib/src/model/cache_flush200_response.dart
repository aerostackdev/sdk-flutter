//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_flush200_response.g.dart';

/// CacheFlush200Response
///
/// Properties:
/// * [success] 
/// * [deleted] - Number of keys deleted
@BuiltValue()
abstract class CacheFlush200Response implements Built<CacheFlush200Response, CacheFlush200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Number of keys deleted
  @BuiltValueField(wireName: r'deleted')
  int? get deleted;

  CacheFlush200Response._();

  factory CacheFlush200Response([void updates(CacheFlush200ResponseBuilder b)]) = _$CacheFlush200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheFlush200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheFlush200Response> get serializer => _$CacheFlush200ResponseSerializer();
}

class _$CacheFlush200ResponseSerializer implements PrimitiveSerializer<CacheFlush200Response> {
  @override
  final Iterable<Type> types = const [CacheFlush200Response, _$CacheFlush200Response];

  @override
  final String wireName = r'CacheFlush200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheFlush200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheFlush200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheFlush200ResponseBuilder result,
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
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deleted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheFlush200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheFlush200ResponseBuilder();
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

