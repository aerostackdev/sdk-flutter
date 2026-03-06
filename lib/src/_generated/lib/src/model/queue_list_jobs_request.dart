//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_list_jobs_request.g.dart';

/// QueueListJobsRequest
///
/// Properties:
/// * [status] - Filter by job status
/// * [type] - Filter by job type
/// * [limit] 
/// * [cursor] - Pagination cursor from previous response
@BuiltValue()
abstract class QueueListJobsRequest implements Built<QueueListJobsRequest, QueueListJobsRequestBuilder> {
  /// Filter by job status
  @BuiltValueField(wireName: r'status')
  QueueListJobsRequestStatusEnum? get status;
  // enum statusEnum {  queued,  processing,  completed,  failed,  cancelled,  };

  /// Filter by job type
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Pagination cursor from previous response
  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  QueueListJobsRequest._();

  factory QueueListJobsRequest([void updates(QueueListJobsRequestBuilder b)]) = _$QueueListJobsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueListJobsRequestBuilder b) => b
      ..limit = 50;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueListJobsRequest> get serializer => _$QueueListJobsRequestSerializer();
}

class _$QueueListJobsRequestSerializer implements PrimitiveSerializer<QueueListJobsRequest> {
  @override
  final Iterable<Type> types = const [QueueListJobsRequest, _$QueueListJobsRequest];

  @override
  final String wireName = r'QueueListJobsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueListJobsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(QueueListJobsRequestStatusEnum),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
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
    QueueListJobsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueListJobsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QueueListJobsRequestStatusEnum),
          ) as QueueListJobsRequestStatusEnum;
          result.status = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
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
  QueueListJobsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueListJobsRequestBuilder();
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

class QueueListJobsRequestStatusEnum extends EnumClass {

  /// Filter by job status
  @BuiltValueEnumConst(wireName: r'queued')
  static const QueueListJobsRequestStatusEnum queued = _$queueListJobsRequestStatusEnum_queued;
  /// Filter by job status
  @BuiltValueEnumConst(wireName: r'processing')
  static const QueueListJobsRequestStatusEnum processing = _$queueListJobsRequestStatusEnum_processing;
  /// Filter by job status
  @BuiltValueEnumConst(wireName: r'completed')
  static const QueueListJobsRequestStatusEnum completed = _$queueListJobsRequestStatusEnum_completed;
  /// Filter by job status
  @BuiltValueEnumConst(wireName: r'failed')
  static const QueueListJobsRequestStatusEnum failed = _$queueListJobsRequestStatusEnum_failed;
  /// Filter by job status
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const QueueListJobsRequestStatusEnum cancelled = _$queueListJobsRequestStatusEnum_cancelled;

  static Serializer<QueueListJobsRequestStatusEnum> get serializer => _$queueListJobsRequestStatusEnumSerializer;

  const QueueListJobsRequestStatusEnum._(String name): super(name);

  static BuiltSet<QueueListJobsRequestStatusEnum> get values => _$queueListJobsRequestStatusEnumValues;
  static QueueListJobsRequestStatusEnum valueOf(String name) => _$queueListJobsRequestStatusEnumValueOf(name);
}

