//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_exists200_response.g.dart';

/// StorageExists200Response
///
/// Properties:
/// * [exists] 
@BuiltValue()
abstract class StorageExists200Response implements Built<StorageExists200Response, StorageExists200ResponseBuilder> {
  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  StorageExists200Response._();

  factory StorageExists200Response([void updates(StorageExists200ResponseBuilder b)]) = _$StorageExists200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageExists200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageExists200Response> get serializer => _$StorageExists200ResponseSerializer();
}

class _$StorageExists200ResponseSerializer implements PrimitiveSerializer<StorageExists200Response> {
  @override
  final Iterable<Type> types = const [StorageExists200Response, _$StorageExists200Response];

  @override
  final String wireName = r'StorageExists200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageExists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    StorageExists200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageExists200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  StorageExists200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageExists200ResponseBuilder();
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

