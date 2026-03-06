//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_record.g.dart';

/// JobRecord
///
/// Properties:
/// * [id] - Unique job ID
/// * [type] - Job type (e.g. \"send-email\")
/// * [data] - Job payload
/// * [status] 
/// * [projectId] 
/// * [createdAt] 
@BuiltValue()
abstract class JobRecord implements Built<JobRecord, JobRecordBuilder> {
  /// Unique job ID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Job type (e.g. \"send-email\")
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Job payload
  @BuiltValueField(wireName: r'data')
  BuiltMap<JsonObject?>? get data;

  @BuiltValueField(wireName: r'status')
  JobRecordStatusEnum? get status;
  // enum statusEnum {  queued,  processing,  completed,  failed,  cancelled,  };

  @BuiltValueField(wireName: r'projectId')
  String? get projectId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  JobRecord._();

  factory JobRecord([void updates(JobRecordBuilder b)]) = _$JobRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JobRecord> get serializer => _$JobRecordSerializer();
}

class _$JobRecordSerializer implements PrimitiveSerializer<JobRecord> {
  @override
  final Iterable<Type> types = const [JobRecord, _$JobRecord];

  @override
  final String wireName = r'JobRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JobRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(JobRecordStatusEnum),
      );
    }
    if (object.projectId != null) {
      yield r'projectId';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JobRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobRecordBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
          ) as BuiltMap<JsonObject?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JobRecordStatusEnum),
          ) as JobRecordStatusEnum;
          result.status = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JobRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobRecordBuilder();
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

class JobRecordStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'queued')
  static const JobRecordStatusEnum queued = _$jobRecordStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'processing')
  static const JobRecordStatusEnum processing = _$jobRecordStatusEnum_processing;
  @BuiltValueEnumConst(wireName: r'completed')
  static const JobRecordStatusEnum completed = _$jobRecordStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const JobRecordStatusEnum failed = _$jobRecordStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const JobRecordStatusEnum cancelled = _$jobRecordStatusEnum_cancelled;

  static Serializer<JobRecordStatusEnum> get serializer => _$jobRecordStatusEnumSerializer;

  const JobRecordStatusEnum._(String name): super(name);

  static BuiltSet<JobRecordStatusEnum> get values => _$jobRecordStatusEnumValues;
  static JobRecordStatusEnum valueOf(String name) => _$jobRecordStatusEnumValueOf(name);
}

