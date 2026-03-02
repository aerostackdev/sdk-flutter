//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_request.g.dart';

/// QueryRequest
///
/// Properties:
/// * [text] 
/// * [topK] 
/// * [types] 
/// * [filter] 
@BuiltValue()
abstract class QueryRequest implements Built<QueryRequest, QueryRequestBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'topK')
  int? get topK;

  @BuiltValueField(wireName: r'types')
  BuiltList<String>? get types;

  @BuiltValueField(wireName: r'filter')
  BuiltMap<JsonObject?>? get filter;

  QueryRequest._();

  factory QueryRequest([void updates(QueryRequestBuilder b)]) = _$QueryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryRequestBuilder b) => b
      ..topK = 5;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryRequest> get serializer => _$QueryRequestSerializer();
}

class _$QueryRequestSerializer implements PrimitiveSerializer<QueryRequest> {
  @override
  final Iterable<Type> types = const [QueryRequest, _$QueryRequest];

  @override
  final String wireName = r'QueryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.topK != null) {
      yield r'topK';
      yield serializers.serialize(
        object.topK,
        specifiedType: const FullType(int),
      );
    }
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueryRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'topK':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.topK = valueDes;
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.types.replace(valueDes);
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
          ) as BuiltMap<JsonObject?>?;
          if (valueDes == null) continue;
          result.filter.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryRequestBuilder();
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

