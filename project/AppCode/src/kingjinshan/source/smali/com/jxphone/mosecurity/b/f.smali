.class public Lcom/jxphone/mosecurity/b/f;
.super Lcom/jxphone/mosecurity/b/b;
.source "StatInfoDAOImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/b/a/g;


# static fields
.field private static final a:Ljava/lang/String; = "id"

.field private static final b:Ljava/lang/String; = "name"

.field private static final c:Ljava/lang/String; = "count"

.field private static final d:Ljava/lang/String; = "stat_info"

.field private static final e:Ljava/lang/String; = "stat_count"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/b;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private a(J)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    const-string v1, "count"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "stat_info"

    const-string v3, "name=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "stat_count"

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private static b(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 32
    .line 33
    if-nez p0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 36
    const-string v0, "count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 37
    if-ltz v0, :cond_1

    .line 38
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 42
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-wide v0, v1

    goto :goto_1
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string v1, "count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "name"

    const-string v2, "stat_count"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "stat_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p1}, Lcom/jxphone/mosecurity/b/f;->b(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v1, "CREATE TABLE stat_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "count INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    const/16 v0, 0x70

    if-ne p3, v0, :cond_0

    .line 114
    const-string v0, "DROP TABLE IF EXISTS stat_info"

    .line 115
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/b/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "stat_info"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "count"

    aput-object v3, v2, v9

    const-string v3, "name=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "stat_count"

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 53
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "name"

    const-string v3, "stat_count"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "stat_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    move v1, v8

    .line 63
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_1
    move v1, v9

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    invoke-static {v0}, Lcom/jxphone/mosecurity/b/f;->b(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 58
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "count"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "stat_info"

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "stat_count"

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_3

    move v1, v8

    goto :goto_0

    :cond_3
    move v1, v9

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final b()J
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "stat_info"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "stat_count"

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/jxphone/mosecurity/b/f;->b(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    :cond_0
    return-void
.end method
