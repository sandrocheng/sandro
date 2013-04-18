.class public Lcom/jxphone/mosecurity/b/c;
.super Lcom/jxphone/mosecurity/b/b;
.source "HiddenProcessDAOImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/b/a/e;


# static fields
.field private static final a:Ljava/lang/String; = "id"

.field private static final b:Ljava/lang/String; = "process_name"

.field private static final c:Ljava/lang/String; = "title"

.field private static final d:Ljava/lang/String; = "checked"

.field private static final e:Ljava/lang/String; = "hidden_process"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/b;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 168
    const-string v1, "hidden_process"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/e;

    .line 171
    const-string v2, "hidden_process"

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/jxphone/mosecurity/b/c;->d(Lcom/keniu/security/d/e;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 188
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 190
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 184
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 190
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 190
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v1
.end method

.method private static b(Landroid/database/Cursor;)Lcom/keniu/security/d/e;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 38
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 67
    :cond_1
    :goto_0
    return-object v0

    .line 42
    :cond_2
    new-instance v0, Lcom/keniu/security/d/e;

    invoke-direct {v0}, Lcom/keniu/security/d/e;-><init>()V

    .line 44
    const-string v1, "id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 45
    if-ltz v1, :cond_3

    .line 46
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/d/e;->a(J)V

    .line 49
    :cond_3
    const-string v1, "process_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 50
    if-ltz v1, :cond_4

    .line 51
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    .line 54
    :cond_4
    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 55
    if-ltz v1, :cond_5

    .line 56
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->b(Ljava/lang/String;)V

    .line 59
    :cond_5
    const-string v1, "checked"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 60
    if-ltz v1, :cond_1

    .line 61
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 62
    invoke-virtual {v0, v3}, Lcom/keniu/security/d/e;->a(Z)V

    goto :goto_0

    .line 64
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Z)V

    goto :goto_0
.end method

.method private static d(Lcom/keniu/security/d/e;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/keniu/security/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 254
    const-string v2, "process_name"

    invoke-virtual {p0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    return-object v1
.end method


# virtual methods
.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 24
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/keniu/security/d/e;

    invoke-direct {v0}, Lcom/keniu/security/d/e;-><init>()V

    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/d/e;->a(J)V

    :cond_3
    const-string v1, "process_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    :cond_4
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->b(Ljava/lang/String;)V

    :cond_5
    const-string v1, "checked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-virtual {v0, v3}, Lcom/keniu/security/d/e;->a(Z)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Z)V

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 5

    .prologue
    .line 212
    const-string v0, "hidden_process"

    const-string v1, "id DESC"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "process_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "checked"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    const-string v1, "CREATE TABLE hidden_process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "id INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "title TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "process_name TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "checked INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 236
    const-string v0, "DROP TABLE IF EXISTS hidden_process"

    .line 237
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 240
    :cond_0
    return-void
.end method

.method public final a(Lcom/keniu/security/d/e;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 72
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hidden_process"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v8

    const-string v3, "process_name"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "checked"

    aput-object v4, v2, v3

    const-string v3, "process_name=?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const-string v7, "id DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "hidden_process"

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/jxphone/mosecurity/b/c;->d(Lcom/keniu/security/d/e;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(J)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hidden_process"

    const-string v2, "id=?"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

.method public final a(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 202
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    .line 206
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hidden_process"

    const-string v2, "process_name=?"

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

    if-lez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 246
    :cond_0
    return-void
.end method

.method public final b(Lcom/keniu/security/d/e;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    if-nez p1, :cond_0

    move v0, v8

    .line 124
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hidden_process"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v8

    const-string v3, "process_name"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "checked"

    aput-object v4, v2, v3

    const-string v3, "process_name=?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const-string v7, "id DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 117
    :cond_1
    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 124
    goto :goto_0
.end method

.method public final c(Lcom/keniu/security/d/e;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 128
    if-nez p1, :cond_0

    move v0, v8

    .line 160
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hidden_process"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v8

    const-string v3, "process_name"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "checked"

    aput-object v4, v2, v3

    const-string v3, "process_name=?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const-string v7, "id DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 140
    :cond_1
    if-eqz v0, :cond_2

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 144
    goto :goto_0

    .line 147
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    const-string v1, "checked"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 150
    if-ltz v1, :cond_5

    .line 151
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v9, :cond_4

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 156
    goto :goto_0

    .line 159
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 160
    goto :goto_0
.end method
