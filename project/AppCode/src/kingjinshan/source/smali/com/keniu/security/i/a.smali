.class final Lcom/keniu/security/i/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CacheManager.java"


# static fields
.field public static final a:Ljava/lang/String; = "path"

.field public static final b:Ljava/lang/String; = "sname"

.field public static final c:Ljava/lang/String; = "pname"

.field public static final d:Ljava/lang/String; = "vname"

.field public static final e:Ljava/lang/String; = "watcher"

.field public static final f:Ljava/lang/String; = "ftype"

.field public static final g:Ljava/lang/String; = "fsize"

.field public static final h:Ljava/lang/String; = "ftime"

.field public static final i:Ljava/lang/String; = "stime"

.field private static final j:Ljava/lang/String; = "fw_cache.db"

.field private static final k:I = 0x1

.field private static final l:Ljava/lang/String; = "items"

.field private static final m:[Ljava/lang/String; = null

.field private static final n:Ljava/lang/String; = "path=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "watcher"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ftype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fsize"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ftime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "stime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/keniu/security/i/a;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    const-string v0, "fw_cache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 109
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/keniu/security/i/b;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/keniu/security/i/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    const-string v1, "items"

    sget-object v2, Lcom/keniu/security/i/a;->m:[Ljava/lang/String;

    const-string v3, "path=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v7, "_id"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lcom/keniu/security/i/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/b;-><init>(Lcom/keniu/security/i/a;)V

    .line 87
    iput-object p1, v1, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

    .line 88
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    .line 90
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/keniu/security/i/b;->d:Ljava/lang/String;

    .line 91
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/keniu/security/i/b;->e:I

    .line 92
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/keniu/security/i/b;->f:I

    .line 93
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/i/b;->g:J

    .line 94
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/i/b;->i:J

    .line 95
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/i/b;->h:J

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v5

    .line 104
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/keniu/security/i/b;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/keniu/security/i/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/b;-><init>(Lcom/keniu/security/i/a;)V

    .line 125
    iput-object p1, v1, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

    .line 126
    iput-object p2, v1, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    .line 127
    iput-object p3, v1, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    .line 128
    iput-object p4, v1, Lcom/keniu/security/i/b;->d:Ljava/lang/String;

    .line 129
    iput p5, v1, Lcom/keniu/security/i/b;->e:I

    .line 130
    iput p6, v1, Lcom/keniu/security/i/b;->f:I

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/i/b;->g:J

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/i/b;->i:J

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/i/b;->h:J

    move-object v0, v1

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/i/b;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/keniu/security/i/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 146
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 148
    const-string v2, "sname"

    iget-object v3, p1, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/keniu/security/i/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "pname"

    iget-object v3, p1, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/keniu/security/i/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "vname"

    iget-object v3, p1, Lcom/keniu/security/i/b;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/keniu/security/i/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "watcher"

    iget v3, p1, Lcom/keniu/security/i/b;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v2, "ftype"

    iget v3, p1, Lcom/keniu/security/i/b;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v2, "fsize"

    iget-wide v3, p1, Lcom/keniu/security/i/b;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v2, "ftime"

    iget-wide v3, p1, Lcom/keniu/security/i/b;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    const-string v2, "stime"

    iget-wide v3, p1, Lcom/keniu/security/i/b;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const/4 v2, 0x0

    .line 158
    if-eqz p2, :cond_0

    .line 160
    const-string v2, "items"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

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

    .line 163
    :cond_0
    if-nez v2, :cond_1

    .line 165
    const-string v2, "path"

    iget-object v3, p1, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "items"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 169
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const-string v0, "CREATE TABLE items (_id INTEGER PRIMARY KEY, path TEXT, sname TEXT, pname TEXT, vname TEXT, watcher INTEGER, ftype INTEGER, fsize BIGINT, ftime BIGINT, stime BIGINT);"

    .line 62
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    return-void
.end method
