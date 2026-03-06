//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/search_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_get200_response.g.dart';

/// SearchGet200Response
///
/// Properties:
/// * [result] 
/// * [exists] 
@BuiltValue()
abstract class SearchGet200Response implements Built<SearchGet200Response, SearchGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'result')
  SearchResult? get result;

  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  SearchGet200Response._();

  factory SearchGet200Response([void updates(SearchGet200ResponseBuilder b)]) = _$SearchGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchGet200Response> get serializer => _$SearchGet200ResponseSerializer();
}

class _$SearchGet200ResponseSerializer implements PrimitiveSerializer<SearchGet200Response> {
  @override
  final Iterable<Type> types = const [SearchGet200Response, _$SearchGet200Response];

  @override
  final String wireName = r'SearchGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType.nullable(SearchResult),
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
    SearchGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SearchResult),
          ) as SearchResult?;
          if (valueDes == null) continue;
          result.result.replace(valueDes);
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
  SearchGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchGet200ResponseBuilder();
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

