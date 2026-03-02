//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/search_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query200_response.g.dart';

/// Query200Response
///
/// Properties:
/// * [results] 
@BuiltValue()
abstract class Query200Response implements Built<Query200Response, Query200ResponseBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<SearchResult>? get results;

  Query200Response._();

  factory Query200Response([void updates(Query200ResponseBuilder b)]) = _$Query200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Query200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Query200Response> get serializer => _$Query200ResponseSerializer();
}

class _$Query200ResponseSerializer implements PrimitiveSerializer<Query200Response> {
  @override
  final Iterable<Type> types = const [Query200Response, _$Query200Response];

  @override
  final String wireName = r'Query200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Query200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(SearchResult)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Query200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Query200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SearchResult)]),
          ) as BuiltList<SearchResult>;
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
  Query200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Query200ResponseBuilder();
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

