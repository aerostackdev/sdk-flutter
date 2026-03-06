//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_count200_response.g.dart';

/// SearchCount200Response
///
/// Properties:
/// * [count] 
@BuiltValue()
abstract class SearchCount200Response implements Built<SearchCount200Response, SearchCount200ResponseBuilder> {
  @BuiltValueField(wireName: r'count')
  int? get count;

  SearchCount200Response._();

  factory SearchCount200Response([void updates(SearchCount200ResponseBuilder b)]) = _$SearchCount200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchCount200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchCount200Response> get serializer => _$SearchCount200ResponseSerializer();
}

class _$SearchCount200ResponseSerializer implements PrimitiveSerializer<SearchCount200Response> {
  @override
  final Iterable<Type> types = const [SearchCount200Response, _$SearchCount200Response];

  @override
  final String wireName = r'SearchCount200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchCount200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    SearchCount200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchCount200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  SearchCount200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchCount200ResponseBuilder();
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

