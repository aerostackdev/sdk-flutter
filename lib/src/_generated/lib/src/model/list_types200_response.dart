//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/type_stats.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_types200_response.g.dart';

/// ListTypes200Response
///
/// Properties:
/// * [types] 
@BuiltValue()
abstract class ListTypes200Response implements Built<ListTypes200Response, ListTypes200ResponseBuilder> {
  @BuiltValueField(wireName: r'types')
  BuiltList<TypeStats>? get types;

  ListTypes200Response._();

  factory ListTypes200Response([void updates(ListTypes200ResponseBuilder b)]) = _$ListTypes200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListTypes200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListTypes200Response> get serializer => _$ListTypes200ResponseSerializer();
}

class _$ListTypes200ResponseSerializer implements PrimitiveSerializer<ListTypes200Response> {
  @override
  final Iterable<Type> types = const [ListTypes200Response, _$ListTypes200Response];

  @override
  final String wireName = r'ListTypes200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListTypes200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [FullType(TypeStats)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListTypes200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListTypes200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TypeStats)]),
          ) as BuiltList<TypeStats>;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListTypes200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTypes200ResponseBuilder();
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

