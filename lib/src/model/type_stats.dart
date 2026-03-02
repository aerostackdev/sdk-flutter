//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'type_stats.g.dart';

/// TypeStats
///
/// Properties:
/// * [type] 
/// * [count] 
@BuiltValue()
abstract class TypeStats implements Built<TypeStats, TypeStatsBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'count')
  int? get count;

  TypeStats._();

  factory TypeStats([void updates(TypeStatsBuilder b)]) = _$TypeStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TypeStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TypeStats> get serializer => _$TypeStatsSerializer();
}

class _$TypeStatsSerializer implements PrimitiveSerializer<TypeStats> {
  @override
  final Iterable<Type> types = const [TypeStats, _$TypeStats];

  @override
  final String wireName = r'TypeStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TypeStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
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
    TypeStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TypeStatsBuilder result,
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
  TypeStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypeStatsBuilder();
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

