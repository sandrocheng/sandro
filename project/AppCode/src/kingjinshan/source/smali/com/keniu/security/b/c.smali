.class final Lcom/keniu/security/b/c;
.super Ljava/lang/Object;
.source "ContactDaoImpl.java"

# interfaces
.implements Lcom/keniu/security/b/b;


# static fields
.field static final a:Lcom/jxphone/mosecurity/d/t; = null

.field private static final b:Ljava/lang/String; = "contact"

.field private static final c:Ljava/lang/String; = "id"

.field private static final d:Ljava/lang/String; = "name"

.field private static final e:Ljava/lang/String; = "phone_number"

.field private static final f:Ljava/lang/String; = "create_date"

.field private static final g:Ljava/lang/String; = "activity_date"

.field private static final h:Ljava/lang/String; = "photo"


# instance fields
.field private i:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/keniu/security/b/d;

    const-string v1, "contact"

    invoke-direct {v0, v1}, Lcom/keniu/security/b/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/b/c;->a:Lcom/jxphone/mosecurity/d/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/b/c;-><init>(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p2, :cond_0

    const-string v0, "mosecurity_dummy_comm.db"

    :goto_0
    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/d/s;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    return-void

    .line 64
    :cond_0
    const-string v0, "mosecurity_comm.db"

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/b;
    .locals 4
    .parameter

    .prologue
    .line 163
    invoke-static {p0}, Lcom/keniu/security/b/c;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 165
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Landroid/graphics/Bitmap;)V

    .line 169
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;Z)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/keniu/security/b/c;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 158
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    .line 153
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/keniu/security/b/c;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/b;
    .locals 3
    .parameter

    .prologue
    .line 173
    new-instance v0, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 174
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(I)V

    .line 175
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/jxphone/mosecurity/c/c;->values()[Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 178
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/b;->a(J)V

    .line 179
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/b;->b(J)V

    .line 180
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/jxphone/mosecurity/c/b;)J
    .locals 5
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "phone_number"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "list_type"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "create_date"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string v1, "activity_date"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 81
    const-string v2, "photo"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "contact"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)Lcom/jxphone/mosecurity/c/b;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 132
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/b/c;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 135
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    move-object v1, v2

    .line 132
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact"

    const-string v3, "phone_number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 119
    invoke-static {v0, p2}, Lcom/keniu/security/b/c;->a(Landroid/database/Cursor;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact"

    const-string v3, "list_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v7, v2

    :goto_0
    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 100
    :cond_0
    const-string v5, "name"

    move-object v7, v5

    goto :goto_0

    .line 107
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/b;

    .line 108
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v0}, Lcom/keniu/security/b/c;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 110
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/jxphone/mosecurity/c/c;)I
    .locals 6
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact"

    const-string v2, "list_type=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone_number like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    invoke-static {v0, p2}, Lcom/keniu/security/b/c;->a(Landroid/database/Cursor;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    iget-object v0, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact"

    const-string v2, "id=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 90
    if-lez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public final b(Lcom/jxphone/mosecurity/c/b;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "phone_number"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "list_type"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v1, "activity_date"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    iget-object v1, p0, Lcom/keniu/security/b/c;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "contact"

    const-string v3, "id=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 147
    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method
