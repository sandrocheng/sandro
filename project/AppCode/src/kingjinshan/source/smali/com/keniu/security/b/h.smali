.class final Lcom/keniu/security/b/h;
.super Ljava/lang/Object;
.source "PhoneCallDaoImpl.java"

# interfaces
.implements Lcom/keniu/security/b/g;


# static fields
.field static final a:Lcom/jxphone/mosecurity/d/t; = null

.field private static final b:Ljava/lang/String; = "phone_call"

.field private static final c:Ljava/lang/String; = "date"

.field private static final d:Ljava/lang/String; = "ring_duration"

.field private static final e:Ljava/lang/String; = "talk_duration"

.field private static final f:Ljava/lang/String; = "phone_number"


# instance fields
.field private final g:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/keniu/security/b/i;

    const-string v1, "phone_call"

    invoke-direct {v0, v1}, Lcom/keniu/security/b/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/b/h;->a:Lcom/jxphone/mosecurity/d/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/b/h;-><init>(Landroid/content/Context;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p2, :cond_0

    const-string v0, "mosecurity_dummy_comm.db"

    :goto_0
    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/d/s;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    return-void

    .line 58
    :cond_0
    const-string v0, "mosecurity_comm.db"

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)[Lcom/jxphone/mosecurity/c/j;
    .locals 3
    .parameter

    .prologue
    .line 239
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Lcom/jxphone/mosecurity/c/j;

    .line 240
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {p0}, Lcom/jxphone/mosecurity/c/j;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 242
    :cond_0
    return-object v0
.end method

.method private static c(Lcom/jxphone/mosecurity/c/j;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 246
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 247
    const-string v1, "phone_number"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "date"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v1, "list_type"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->g()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "ring_duration"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v1, "talk_duration"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    return-object v0
.end method

.method private g(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from phone_call where list_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 166
    :try_start_0
    invoke-static {v0}, Lcom/keniu/security/b/h;->a(Landroid/database/Cursor;)[Lcom/jxphone/mosecurity/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/jxphone/mosecurity/c/j;)J
    .locals 4
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/keniu/security/b/h;->c(Lcom/jxphone/mosecurity/c/j;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)Lcom/jxphone/mosecurity/c/j;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v7, "date desc"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 73
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/j;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 76
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    move-object v1, v2

    .line 73
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(ILcom/jxphone/mosecurity/c/c;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    const-string v3, "id=? and list_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 88
    if-lez v1, :cond_0

    move v1, v9

    .line 90
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_0
    move v1, v8

    .line 88
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(IILcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/keniu/security/b/h;->g(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 1
    .parameter

    .prologue
    .line 116
    const-string v0, "0,2147483647"

    invoke-direct {p0, v0, p1}, Lcom/keniu/security/b/h;->g(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)[Lcom/jxphone/mosecurity/c/j;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    const-string v3, "phone_number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v7, "date desc"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 102
    new-array v2, v1, [Lcom/jxphone/mosecurity/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-nez v1, :cond_0

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move v1, v8

    .line 106
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    add-int/lit8 v3, v1, 0x1

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/j;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    const-string v3, "phone_number=? and list_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v7, "date desc"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    :try_start_0
    invoke-static {v0}, Lcom/keniu/security/b/h;->a(Landroid/database/Cursor;)[Lcom/jxphone/mosecurity/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final varargs a([Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    invoke-static {p1}, Lcom/jxphone/mosecurity/d/x;->a([Lcom/jxphone/mosecurity/c/c;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "date desc"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    :try_start_0
    invoke-static {v0}, Lcom/keniu/security/b/h;->a(Landroid/database/Cursor;)[Lcom/jxphone/mosecurity/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final b(I)I
    .locals 6
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 175
    return v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone_number like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 197
    return v0
.end method

.method public final varargs b([Lcom/jxphone/mosecurity/c/c;)I
    .locals 4
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    invoke-static {p1}, Lcom/jxphone/mosecurity/d/x;->a([Lcom/jxphone/mosecurity/c/c;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/jxphone/mosecurity/c/j;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    invoke-static {p1}, Lcom/keniu/security/b/h;->c(Lcom/jxphone/mosecurity/c/j;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "id=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 209
    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone_number like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "list_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "date desc"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    :try_start_0
    invoke-static {v0}, Lcom/keniu/security/b/h;->a(Landroid/database/Cursor;)[Lcom/jxphone/mosecurity/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    const-string v2, "phone_number=? and list_type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 183
    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/jxphone/mosecurity/b/a/a;
    .locals 8
    .parameter

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 232
    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone_number like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 235
    new-instance v1, Lcom/jxphone/mosecurity/b/d;

    invoke-direct {v1, v0}, Lcom/jxphone/mosecurity/b/d;-><init>(Landroid/database/Cursor;)V

    return-object v1

    :cond_0
    move-object v3, p1

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phone_call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone_number like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "list_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 190
    return v0
.end method

.method public final e(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 214
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 215
    const-string v1, "list_type"

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget-object v1, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "phone_call"

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

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 218
    return v0
.end method

.method public final f(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 224
    const-string v1, "list_type"

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    iget-object v1, p0, Lcom/keniu/security/b/h;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "phone_call"

    const-string v3, "phone_number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
