//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_request.g.dart';

/// IngestRequest
///
/// Properties:
/// * [content] - Text content to index
/// * [id] - Optional custom ID
/// * [type] - Category/type of content
/// * [metadata] 
@BuiltValue()
abstract class IngestRequest implements Built<IngestRequest, IngestRequestBuilder> {
  /// Text content to index
  @BuiltValueField(wireName: r'content')
  String get content;

  /// Optional custom ID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Category/type of content
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'metadata')
  BuiltMap<JsonObject?>? get metadata;

  IngestRequest._();

  factory IngestRequest([void updates(IngestRequestBuilder b)]) = _$IngestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestRequest> get serializer => _$IngestRequestSerializer();
}

class _$IngestRequestSerializer implements PrimitiveSerializer<IngestRequest> {
  @override
  final Iterable<Type> types = const [IngestRequest, _$IngestRequest];

  @override
  final String wireName = r'IngestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
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
    IngestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IngestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
  IngestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestRequestBuilder();
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

