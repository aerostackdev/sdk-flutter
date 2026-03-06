//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_count_request.g.dart';

/// SearchCountRequest
///
/// Properties:
/// * [type] - Filter count by type (omit for total count)
@BuiltValue()
abstract class SearchCountRequest implements Built<SearchCountRequest, SearchCountRequestBuilder> {
  /// Filter count by type (omit for total count)
  @BuiltValueField(wireName: r'type')
  String? get type;

  SearchCountRequest._();

  factory SearchCountRequest([void updates(SearchCountRequestBuilder b)]) = _$SearchCountRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchCountRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchCountRequest> get serializer => _$SearchCountRequestSerializer();
}

class _$SearchCountRequestSerializer implements PrimitiveSerializer<SearchCountRequest> {
  @override
  final Iterable<Type> types = const [SearchCountRequest, _$SearchCountRequest];

  @override
  final String wireName = r'SearchCountRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchCountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchCountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchCountRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchCountRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchCountRequestBuilder();
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

