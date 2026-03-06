//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/storage_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_list_result.g.dart';

/// StorageListResult
///
/// Properties:
/// * [objects] 
/// * [truncated] - True if more files exist beyond this page
/// * [cursor] - Use this cursor to fetch the next page
@BuiltValue()
abstract class StorageListResult implements Built<StorageListResult, StorageListResultBuilder> {
  @BuiltValueField(wireName: r'objects')
  BuiltList<StorageObject>? get objects;

  /// True if more files exist beyond this page
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  /// Use this cursor to fetch the next page
  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  StorageListResult._();

  factory StorageListResult([void updates(StorageListResultBuilder b)]) = _$StorageListResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageListResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageListResult> get serializer => _$StorageListResultSerializer();
}

class _$StorageListResultSerializer implements PrimitiveSerializer<StorageListResult> {
  @override
  final Iterable<Type> types = const [StorageListResult, _$StorageListResult];

  @override
  final String wireName = r'StorageListResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageListResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.objects != null) {
      yield r'objects';
      yield serializers.serialize(
        object.objects,
        specifiedType: const FullType(BuiltList, [FullType(StorageObject)]),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cursor != null) {
      yield r'cursor';
      yield serializers.serialize(
        object.cursor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StorageListResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageListResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'objects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StorageObject)]),
          ) as BuiltList<StorageObject>;
          result.objects.replace(valueDes);
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.truncated = valueDes;
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StorageListResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageListResultBuilder();
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

