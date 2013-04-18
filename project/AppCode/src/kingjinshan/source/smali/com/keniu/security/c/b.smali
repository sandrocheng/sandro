.class public final Lcom/keniu/security/c/b;
.super Lcom/jxphone/mosecurity/b/b;
.source "MalwareDaoImpl.java"

# interfaces
.implements Lcom/keniu/security/c/a;


# static fields
.field private static final a:Ljava/lang/String; = "_id"

.field private static final b:Ljava/lang/String; = "md5"

.field private static final c:Ljava/lang/String; = "type"

.field private static final d:Ljava/lang/String; = "name"

.field private static final e:Ljava/lang/String; = "desc"

.field private static final f:Ljava/lang/String; = "datable"


# instance fields
.field private g:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/b;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 27
    if-eqz p2, :cond_0

    const-string v1, "antivirus_lw.db"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/c/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    return-void

    .line 27
    :cond_0
    const-string v1, "antivirus.db"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/keniu/security/d/d;
    .locals 2
    .parameter

    .prologue
    .line 52
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 78
    :cond_1
    :goto_0
    return-object v0

    .line 55
    :cond_2
    new-instance v0, Lcom/keniu/security/d/d;

    invoke-direct {v0}, Lcom/keniu/security/d/d;-><init>()V

    .line 56
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 59
    if-ltz v1, :cond_3

    .line 60
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/keniu/security/d/d;->p:I

    .line 62
    :cond_3
    const-string v1, "md5"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 63
    if-ltz v1, :cond_4

    .line 64
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/d/d;->q:Ljava/lang/String;

    .line 66
    :cond_4
    const-string v1, "type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 67
    if-ltz v1, :cond_5

    .line 68
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/keniu/security/d/d;->s:I

    .line 70
    :cond_5
    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 71
    if-ltz v1, :cond_6

    .line 72
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/d/d;->t:Ljava/lang/String;

    .line 74
    :cond_6
    const-string v1, "desc"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 75
    if-ltz v1, :cond_1

    .line 76
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/d/d;->u:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/keniu/security/d/d;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 117
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 140
    :goto_0
    return-object v0

    .line 123
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/c/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "md5"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "desc"

    aput-object v4, v2, v3

    const-string v3, "md5=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_1
    if-eqz v0, :cond_2

    .line 136
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    :cond_2
    invoke-static {v0}, Lcom/keniu/security/c/b;->b(Landroid/database/Cursor;)Lcom/keniu/security/d/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p1}, Lcom/keniu/security/c/b;->b(Landroid/database/Cursor;)Lcom/keniu/security/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/keniu/security/c/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/keniu/security/c/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/c/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    :cond_0
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method public final a(Lcom/keniu/security/d/d;)V
    .locals 5
    .parameter

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/keniu/security/d/d;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/c/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 96
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 98
    const-string v2, "type"

    iget v3, p1, Lcom/keniu/security/d/d;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v2, "name"

    iget-object v3, p1, Lcom/keniu/security/d/d;->t:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "desc"

    iget-object v3, p1, Lcom/keniu/security/d/d;->u:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "datable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "md5 = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/keniu/security/d/d;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 103
    if-nez v2, :cond_2

    .line 105
    const-string v2, "md5"

    iget-object v3, p1, Lcom/keniu/security/d/d;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "datable"

    const-string v3, "name"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 109
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 99
    :cond_3
    :try_start_1
    iget-object v3, p1, Lcom/keniu/security/d/d;->t:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_4
    iget-object v3, p1, Lcom/keniu/security/d/d;->u:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 111
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public final c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/keniu/security/c/b;->g:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
