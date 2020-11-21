// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class WorkspaceLocalModel extends DataClass
    implements Insertable<WorkspaceLocalModel> {
  final int id;
  final String ownerId;
  final String name;
  final DateTime created;
  final int projectsRemaining;
  final int projectsCompletion;
  WorkspaceLocalModel(
      {@required this.id,
      @required this.ownerId,
      @required this.name,
      this.created,
      @required this.projectsRemaining,
      @required this.projectsCompletion});
  factory WorkspaceLocalModel.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return WorkspaceLocalModel(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      ownerId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}owner_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      created: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created']),
      projectsRemaining: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}projects_remaining']),
      projectsCompletion: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}projects_completion']),
    );
  }
  factory WorkspaceLocalModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WorkspaceLocalModel(
      id: serializer.fromJson<int>(json['id']),
      ownerId: serializer.fromJson<String>(json['ownerId']),
      name: serializer.fromJson<String>(json['name']),
      created: serializer.fromJson<DateTime>(json['created']),
      projectsRemaining: serializer.fromJson<int>(json['projectsRemaining']),
      projectsCompletion: serializer.fromJson<int>(json['projectsCompletion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ownerId': serializer.toJson<String>(ownerId),
      'name': serializer.toJson<String>(name),
      'created': serializer.toJson<DateTime>(created),
      'projectsRemaining': serializer.toJson<int>(projectsRemaining),
      'projectsCompletion': serializer.toJson<int>(projectsCompletion),
    };
  }

  @override
  WorkspaceTableCompanion createCompanion(bool nullToAbsent) {
    return WorkspaceTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      ownerId: ownerId == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      projectsRemaining: projectsRemaining == null && nullToAbsent
          ? const Value.absent()
          : Value(projectsRemaining),
      projectsCompletion: projectsCompletion == null && nullToAbsent
          ? const Value.absent()
          : Value(projectsCompletion),
    );
  }

  WorkspaceLocalModel copyWith(
          {int id,
          String ownerId,
          String name,
          DateTime created,
          int projectsRemaining,
          int projectsCompletion}) =>
      WorkspaceLocalModel(
        id: id ?? this.id,
        ownerId: ownerId ?? this.ownerId,
        name: name ?? this.name,
        created: created ?? this.created,
        projectsRemaining: projectsRemaining ?? this.projectsRemaining,
        projectsCompletion: projectsCompletion ?? this.projectsCompletion,
      );
  @override
  String toString() {
    return (StringBuffer('WorkspaceLocalModel(')
          ..write('id: $id, ')
          ..write('ownerId: $ownerId, ')
          ..write('name: $name, ')
          ..write('created: $created, ')
          ..write('projectsRemaining: $projectsRemaining, ')
          ..write('projectsCompletion: $projectsCompletion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          ownerId.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  created.hashCode,
                  $mrjc(projectsRemaining.hashCode,
                      projectsCompletion.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is WorkspaceLocalModel &&
          other.id == this.id &&
          other.ownerId == this.ownerId &&
          other.name == this.name &&
          other.created == this.created &&
          other.projectsRemaining == this.projectsRemaining &&
          other.projectsCompletion == this.projectsCompletion);
}

class WorkspaceTableCompanion extends UpdateCompanion<WorkspaceLocalModel> {
  final Value<int> id;
  final Value<String> ownerId;
  final Value<String> name;
  final Value<DateTime> created;
  final Value<int> projectsRemaining;
  final Value<int> projectsCompletion;
  const WorkspaceTableCompanion({
    this.id = const Value.absent(),
    this.ownerId = const Value.absent(),
    this.name = const Value.absent(),
    this.created = const Value.absent(),
    this.projectsRemaining = const Value.absent(),
    this.projectsCompletion = const Value.absent(),
  });
  WorkspaceTableCompanion.insert({
    this.id = const Value.absent(),
    this.ownerId = const Value.absent(),
    @required String name,
    this.created = const Value.absent(),
    @required int projectsRemaining,
    @required int projectsCompletion,
  })  : name = Value(name),
        projectsRemaining = Value(projectsRemaining),
        projectsCompletion = Value(projectsCompletion);
  WorkspaceTableCompanion copyWith(
      {Value<int> id,
      Value<String> ownerId,
      Value<String> name,
      Value<DateTime> created,
      Value<int> projectsRemaining,
      Value<int> projectsCompletion}) {
    return WorkspaceTableCompanion(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      name: name ?? this.name,
      created: created ?? this.created,
      projectsRemaining: projectsRemaining ?? this.projectsRemaining,
      projectsCompletion: projectsCompletion ?? this.projectsCompletion,
    );
  }
}

class $WorkspaceTableTable extends WorkspaceTable
    with TableInfo<$WorkspaceTableTable, WorkspaceLocalModel> {
  final GeneratedDatabase _db;
  final String _alias;
  $WorkspaceTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _ownerIdMeta = const VerificationMeta('ownerId');
  GeneratedTextColumn _ownerId;
  @override
  GeneratedTextColumn get ownerId => _ownerId ??= _constructOwnerId();
  GeneratedTextColumn _constructOwnerId() {
    return GeneratedTextColumn('owner_id', $tableName, false,
        defaultValue: const Constant(""));
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 250);
  }

  final VerificationMeta _createdMeta = const VerificationMeta('created');
  GeneratedDateTimeColumn _created;
  @override
  GeneratedDateTimeColumn get created => _created ??= _constructCreated();
  GeneratedDateTimeColumn _constructCreated() {
    return GeneratedDateTimeColumn(
      'created',
      $tableName,
      true,
    );
  }

  final VerificationMeta _projectsRemainingMeta =
      const VerificationMeta('projectsRemaining');
  GeneratedIntColumn _projectsRemaining;
  @override
  GeneratedIntColumn get projectsRemaining =>
      _projectsRemaining ??= _constructProjectsRemaining();
  GeneratedIntColumn _constructProjectsRemaining() {
    return GeneratedIntColumn(
      'projects_remaining',
      $tableName,
      false,
    );
  }

  final VerificationMeta _projectsCompletionMeta =
      const VerificationMeta('projectsCompletion');
  GeneratedIntColumn _projectsCompletion;
  @override
  GeneratedIntColumn get projectsCompletion =>
      _projectsCompletion ??= _constructProjectsCompletion();
  GeneratedIntColumn _constructProjectsCompletion() {
    return GeneratedIntColumn(
      'projects_completion',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, ownerId, name, created, projectsRemaining, projectsCompletion];
  @override
  $WorkspaceTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'workspace_table';
  @override
  final String actualTableName = 'workspace_table';
  @override
  VerificationContext validateIntegrity(WorkspaceTableCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.ownerId.present) {
      context.handle(_ownerIdMeta,
          ownerId.isAcceptableValue(d.ownerId.value, _ownerIdMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.created.present) {
      context.handle(_createdMeta,
          created.isAcceptableValue(d.created.value, _createdMeta));
    }
    if (d.projectsRemaining.present) {
      context.handle(
          _projectsRemainingMeta,
          projectsRemaining.isAcceptableValue(
              d.projectsRemaining.value, _projectsRemainingMeta));
    } else if (isInserting) {
      context.missing(_projectsRemainingMeta);
    }
    if (d.projectsCompletion.present) {
      context.handle(
          _projectsCompletionMeta,
          projectsCompletion.isAcceptableValue(
              d.projectsCompletion.value, _projectsCompletionMeta));
    } else if (isInserting) {
      context.missing(_projectsCompletionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, name};
  @override
  WorkspaceLocalModel map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WorkspaceLocalModel.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(WorkspaceTableCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.ownerId.present) {
      map['owner_id'] = Variable<String, StringType>(d.ownerId.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.created.present) {
      map['created'] = Variable<DateTime, DateTimeType>(d.created.value);
    }
    if (d.projectsRemaining.present) {
      map['projects_remaining'] =
          Variable<int, IntType>(d.projectsRemaining.value);
    }
    if (d.projectsCompletion.present) {
      map['projects_completion'] =
          Variable<int, IntType>(d.projectsCompletion.value);
    }
    return map;
  }

  @override
  $WorkspaceTableTable createAlias(String alias) {
    return $WorkspaceTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $WorkspaceTableTable _workspaceTable;
  $WorkspaceTableTable get workspaceTable =>
      _workspaceTable ??= $WorkspaceTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [workspaceTable];
}
