//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_delete_many200_response.g.dart';

/// CacheDeleteMany200Response
///
/// Properties:
/// * [success] 
/// * [count] - Number of keys requested for deletion
/// * [deleted] - Number of keys actually deleted
@BuiltValue()
abstract class CacheDeleteMany200Response implements Built<CacheDeleteMany200Response, CacheDeleteMany200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Number of keys requested for deletion
  @BuiltValueField(wireName: r'count')
  int? get count;

  /// Number of keys actually deleted
  @BuiltValueField(wireName: r'deleted')
  int? get deleted;

  CacheDeleteMany200Response._();

  factory CacheDeleteMany200Response([void updates(CacheDeleteMany200ResponseBuilder b)]) = _$CacheDeleteMany200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheDeleteMany200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheDeleteMany200Response> get serializer => _$CacheDeleteMany200ResponseSerializer();
}

class _$CacheDeleteMany200ResponseSerializer implements PrimitiveSerializer<CacheDeleteMany200Response> {
  @override
  final Iterable<Type> types = const [CacheDeleteMany200Response, _$CacheDeleteMany200Response];

  @override
  final String wireName = r'CacheDeleteMany200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheDeleteMany200Response object, {
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
    CacheDeleteMany200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheDeleteMany200ResponseBuilder result,
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
  CacheDeleteMany200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheDeleteMany200ResponseBuilder();
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

