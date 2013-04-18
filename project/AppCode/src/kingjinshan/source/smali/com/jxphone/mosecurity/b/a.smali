.class public Lcom/jxphone/mosecurity/b/a;
.super Lcom/jxphone/mosecurity/b/b;
.source "AppStatDAOImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/b/a/d;


# static fields
.field private static final a:Ljava/lang/String; = "package_name"

.field private static final b:Ljava/lang/String; = "count"

.field private static final c:Ljava/lang/String; = "app_id"

.field private static final d:Ljava/lang/String; = "app_stat"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/b;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private static b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/a;
    .locals 3
    .parameter

    .prologue
    .line 37
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 68
    :cond_1
    :goto_0
    return-object v0

    .line 41
    :cond_2
    new-instance v0, Lcom/jxphone/mosecurity/c/a;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/a;-><init>()V

    .line 43
    const-string v1, "id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 44
    if-ltz v1, :cond_3

    .line 45
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/a;->a(I)V

    .line 48
    :cond_3
    const-string v1, "NAME"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 49
    if-ltz v1, :cond_4

    .line 50
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/a;->c(Ljava/lang/String;)V

    .line 53
    :cond_4
    const-string v1, "package_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 54
    if-ltz v1, :cond_5

    .line 55
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/a;->a(Ljava/lang/String;)V

    .line 58
    :cond_5
    const-string v1, "app_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 59
    if-ltz v1, :cond_6

    .line 60
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/a;->b(Ljava/lang/String;)V

    .line 63
    :cond_6
    const-string v1, "count"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 64
    if-ltz v1, :cond_1

    .line 65
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/a;->a(J)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-static {p1}, Lcom/jxphone/mosecurity/b/a;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 5

    .prologue
    .line 116
    const-string v0, "app_stat"

    const-string v1, "count DESC"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "app_id"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string v1, "CREATE TABLE app_stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "package_name TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "count INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NAME TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_id TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    const/16 v0, 0x6f

    if-ge p2, v0, :cond_0

    .line 216
    const-string v0, "DROP TABLE IF EXISTS app_stat"

    .line 217
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 220
    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "app_stat"

    const-string v2, "id=?"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/a;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    if-nez p1, :cond_0

    move v0, v7

    .line 85
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->a()I

    move-result v0

    if-gtz v0, :cond_2

    .line 78
    invoke-virtual {p1, v2, v3}, Lcom/jxphone/mosecurity/c/a;->a(J)V

    .line 79
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "NAME"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "app_stat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->e()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/jxphone/mosecurity/c/a;->a(J)V

    .line 82
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->a()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "NAME"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "app_stat"

    const-string v3, "id=?"

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    move v0, v8

    goto/16 :goto_0

    :cond_5
    move v0, v7

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "app_stat"

    const-string v2, "package_name=?"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public final b(I)Lcom/jxphone/mosecurity/c/a;
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "app_stat"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v8

    const-string v3, "package_name"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const-string v3, "id=?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    :cond_0
    invoke-static {v0}, Lcom/jxphone/mosecurity/b/a;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/a;

    move-result-object v1

    .line 131
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final b(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/a;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 152
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 166
    :goto_0
    return-object v0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "app_stat"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v6

    const-string v3, "package_name"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const-string v3, "package_name=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    :cond_2
    invoke-static {v0}, Lcom/jxphone/mosecurity/b/a;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    :cond_0
    return-void
.end method

.method public final b(Lcom/jxphone/mosecurity/c/a;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    if-nez p1, :cond_0

    move v0, v6

    .line 100
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "app_stat"

    const-string v3, "id=?"

    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "app_stat"

    const-string v3, "package_name=?"

    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public final c(Lcom/jxphone/mosecurity/c/a;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 172
    if-nez p1, :cond_0

    move v0, v4

    .line 180
    :goto_0
    return v0

    .line 174
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "count"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v1, "NAME"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "app_stat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public final d(Lcom/jxphone/mosecurity/c/a;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->a()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v7

    .line 193
    :goto_0
    return v0

    .line 188
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    const-string v1, "NAME"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "count"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/a;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "app_stat"

    const-string v3, "id=?"

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/a;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0
.end method
