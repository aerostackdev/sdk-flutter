//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_update_request.g.dart';

/// SearchUpdateRequest
///
/// Properties:
/// * [id] - ID of the item to update
/// * [content] - New text content to re-embed
/// * [type] - New type (replaces existing type)
/// * [metadata] - New metadata (replaces existing metadata)
@BuiltValue()
abstract class SearchUpdateRequest implements Built<SearchUpdateRequest, SearchUpdateRequestBuilder> {
  /// ID of the item to update
  @BuiltValueField(wireName: r'id')
  String get id;

  /// New text content to re-embed
  @BuiltValueField(wireName: r'content')
  String get content;

  /// New type (replaces existing type)
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// New metadata (replaces existing metadata)
  @BuiltValueField(wireName: r'metadata')
  BuiltMap<JsonObject?>? get metadata;

  SearchUpdateRequest._();

  factory SearchUpdateRequest([void updates(SearchUpdateRequestBuilder b)]) = _$SearchUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchUpdateRequest> get serializer => _$SearchUpdateRequestSerializer();
}

class _$SearchUpdateRequestSerializer implements PrimitiveSerializer<SearchUpdateRequest> {
  @override
  final Iterable<Type> types = const [SearchUpdateRequest, _$SearchUpdateRequest];

  @override
  final String wireName = r'SearchUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchUpdateRequestBuilder result,
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
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
          ) as BuiltMap<JsonObject?>?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchUpdateRequestBuilder();
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

