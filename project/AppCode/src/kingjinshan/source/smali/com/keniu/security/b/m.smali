.class final Lcom/keniu/security/b/m;
.super Ljava/lang/Object;
.source "SmsDaoImpl.java"

# interfaces
.implements Lcom/keniu/security/b/l;


# static fields
.field static final a:Lcom/jxphone/mosecurity/d/t; = null

.field private static final b:Ljava/lang/String; = "sms"


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/keniu/security/b/n;

    const-string v1, "sms"

    invoke-direct {v0, v1}, Lcom/keniu/security/b/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/b/m;->a:Lcom/jxphone/mosecurity/d/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/b/m;-><init>(Landroid/content/Context;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p2, :cond_0

    const-string v0, "mosecurity_dummy_comm.db"

    :goto_0
    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/d/s;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    return-void

    .line 57
    :cond_0
    const-string v0, "mosecurity_comm.db"

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)[Lcom/jxphone/mosecurity/c/l;
    .locals 4
    .parameter

    .prologue
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-static {p0}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/l;

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/jxphone/mosecurity/c/l;

    return-object p0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Z)[Lcom/jxphone/mosecurity/c/l;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    if-eqz p3, :cond_1

    const-string v3, "date desc"

    move-object v7, v3

    :goto_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 128
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 130
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 126
    :cond_1
    const-string v3, "date"

    move-object v7, v3

    goto :goto_0

    .line 128
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/jxphone/mosecurity/c/l;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/jxphone/mosecurity/c/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0
.end method

.method private static c(Lcom/jxphone/mosecurity/c/l;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    const-string v1, "address"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "body"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "date"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/l;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v1, "list_type"

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/l;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address like \'%"

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

    .line 164
    return v0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/l;)J
    .locals 4
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/keniu/security/b/m;->c(Lcom/jxphone/mosecurity/c/l;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lcom/jxphone/mosecurity/c/l;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 140
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    move-object v1, v2

    .line 138
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(I)Lcom/jxphone/mosecurity/c/l;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

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

    .line 69
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 72
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    move-object v1, v2

    .line 69
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(II)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    const-string v1, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget-object v1, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sms"

    const-string v3, "id=? and status<>?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public final a(ILcom/jxphone/mosecurity/c/c;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

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

    .line 80
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 81
    if-lez v1, :cond_0

    move v1, v9

    .line 83
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_0
    move v1, v8

    .line 81
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(Lcom/jxphone/mosecurity/c/l;Lcom/jxphone/mosecurity/c/c;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    const-string v3, "address=? and date=? and list_type =?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 93
    if-lez v1, :cond_0

    move v1, v9

    .line 95
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_0
    move v1, v8

    .line 93
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 101
    const-string v0, "list_type=?"

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/keniu/security/b/m;->a(Ljava/lang/String;[Ljava/lang/String;Z)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/keniu/security/b/m;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;Z)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;Z)[Lcom/jxphone/mosecurity/c/l;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 116
    const-string v0, "address=? and list_type=? and type<>?"

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1, p3}, Lcom/keniu/security/b/m;->a(Ljava/lang/String;[Ljava/lang/String;Z)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a([Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;
    .locals 3
    .parameter

    .prologue
    .line 106
    invoke-static {p1}, Lcom/jxphone/mosecurity/d/x;->a([Lcom/jxphone/mosecurity/c/c;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/b/m;->a(Ljava/lang/String;[Ljava/lang/String;Z)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final varargs b([Lcom/jxphone/mosecurity/c/c;)I
    .locals 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    invoke-static {p1}, Lcom/jxphone/mosecurity/d/x;->a([Lcom/jxphone/mosecurity/c/c;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/jxphone/mosecurity/b/a/a;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and TYPE<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/jxphone/mosecurity/b/e;

    invoke-direct {v1, v0}, Lcom/jxphone/mosecurity/b/e;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public final b(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 151
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    const-string v2, "id=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 152
    if-ne v0, v5, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public final b(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 175
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    invoke-static {p1}, Lcom/keniu/security/b/m;->c(Lcom/jxphone/mosecurity/c/l;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "id=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 176
    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "address like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "list_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/b/m;->a(Ljava/lang/String;[Ljava/lang/String;Z)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    const-string v2, "address=? and list_type=?"

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

    .line 158
    return v0
.end method

.method public final d(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address like \'%"

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

    .line 170
    return v0
.end method

.method public final e(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 182
    const-string v1, "list_type"

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    iget-object v1, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address like \'%"

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

    .line 184
    return v0
.end method

.method public final f(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 197
    const-string v1, "list_type"

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    iget-object v1, p0, Lcom/keniu/security/b/m;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sms"

    const-string v3, "address=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
