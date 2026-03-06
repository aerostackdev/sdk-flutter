//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_get_request.g.dart';

/// SearchGetRequest
///
/// Properties:
/// * [id] - ID of the item to retrieve
@BuiltValue()
abstract class SearchGetRequest implements Built<SearchGetRequest, SearchGetRequestBuilder> {
  /// ID of the item to retrieve
  @BuiltValueField(wireName: r'id')
  String get id;

  SearchGetRequest._();

  factory SearchGetRequest([void updates(SearchGetRequestBuilder b)]) = _$SearchGetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchGetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchGetRequest> get serializer => _$SearchGetRequestSerializer();
}

class _$SearchGetRequestSerializer implements PrimitiveSerializer<SearchGetRequest> {
  @override
  final Iterable<Type> types = const [SearchGetRequest, _$SearchGetRequest];

  @override
  final String wireName = r'SearchGetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchGetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchGetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchGetRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchGetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchGetRequestBuilder();
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

