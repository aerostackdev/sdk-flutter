//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/cache_get_many_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_get_many200_response.g.dart';

/// CacheGetMany200Response
///
/// Properties:
/// * [results] 
@BuiltValue()
abstract class CacheGetMany200Response implements Built<CacheGetMany200Response, CacheGetMany200ResponseBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<CacheGetManyEntry>? get results;

  CacheGetMany200Response._();

  factory CacheGetMany200Response([void updates(CacheGetMany200ResponseBuilder b)]) = _$CacheGetMany200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheGetMany200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheGetMany200Response> get serializer => _$CacheGetMany200ResponseSerializer();
}

class _$CacheGetMany200ResponseSerializer implements PrimitiveSerializer<CacheGetMany200Response> {
  @override
  final Iterable<Type> types = const [CacheGetMany200Response, _$CacheGetMany200Response];

  @override
  final String wireName = r'CacheGetMany200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheGetMany200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(CacheGetManyEntry)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheGetMany200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheGetMany200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CacheGetManyEntry)]),
          ) as BuiltList<CacheGetManyEntry>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheGetMany200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheGetMany200ResponseBuilder();
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

