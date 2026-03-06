//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_move200_response.g.dart';

/// StorageMove200Response
///
/// Properties:
/// * [success] 
/// * [url] - CDN URL of the file at its new location
@BuiltValue()
abstract class StorageMove200Response implements Built<StorageMove200Response, StorageMove200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// CDN URL of the file at its new location
  @BuiltValueField(wireName: r'url')
  String? get url;

  StorageMove200Response._();

  factory StorageMove200Response([void updates(StorageMove200ResponseBuilder b)]) = _$StorageMove200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageMove200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageMove200Response> get serializer => _$StorageMove200ResponseSerializer();
}

class _$StorageMove200ResponseSerializer implements PrimitiveSerializer<StorageMove200Response> {
  @override
  final Iterable<Type> types = const [StorageMove200Response, _$StorageMove200Response];

  @override
  final String wireName = r'StorageMove200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageMove200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StorageMove200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageMove200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StorageMove200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageMove200ResponseBuilder();
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

