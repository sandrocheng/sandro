.class final Lcom/keniu/security/b/v;
.super Ljava/lang/Object;
.source "SystemSmsDaoImpl.java"

# interfaces
.implements Lcom/keniu/security/b/u;


# static fields
.field private static final a:Ljava/lang/String; = "address"

.field private static final b:Ljava/lang/String; = "date"

.field private static final c:Ljava/lang/String; = "body"

.field private static final d:Ljava/lang/String; = "read"


# instance fields
.field private e:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    .line 42
    return-void
.end method

.method static synthetic a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lcom/keniu/security/b/v;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    .locals 3
    .parameter

    .prologue
    .line 162
    new-instance v0, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 163
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->d(I)V

    .line 164
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->b(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/l;->a(J)V

    .line 167
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    .line 169
    return-object v0
.end method

.method private d()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

    sget-object v2, Lcom/keniu/security/e;->fD:[Ljava/lang/String;

    const-string v3, "type=1 or type=2"

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

    const-string v2, "address=? and date>=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(IJ)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

    const-string v2, "_id=? and date>=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    const-string v1, "address"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "body"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "date"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    iget-object v1, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    sget-object v2, Lcom/keniu/security/e;->fC:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

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

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[Lcom/jxphone/mosecurity/c/l;
    .locals 7

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/keniu/security/b/v;->d()Landroid/database/Cursor;

    move-result-object v0

    .line 48
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v4}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 57
    invoke-virtual {v4, v2}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/jxphone/mosecurity/c/l;->b(Ljava/lang/String;)V

    .line 59
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/jxphone/mosecurity/c/l;->a(J)V

    .line 60
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    .line 61
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/jxphone/mosecurity/c/l;->c(I)V

    .line 62
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 65
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/jxphone/mosecurity/c/l;

    .line 66
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public final b(Ljava/lang/String;)Lcom/jxphone/mosecurity/b/a/a;
    .locals 7
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

    sget-object v2, Lcom/keniu/security/e;->fD:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type in (?,?) and address like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/keniu/security/b/x;

    invoke-direct {v1, v0}, Lcom/keniu/security/b/x;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public final b()Lcom/jxphone/mosecurity/c/l;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 86
    const-string v3, "type=1 or type=2"

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/b/v;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/keniu/security/e;->fB:Landroid/net/Uri;

    sget-object v2, Lcom/keniu/security/e;->fD:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/keniu/security/b/v;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 97
    :goto_1
    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    .line 99
    goto :goto_0

    :cond_3
    move-object v1, v6

    .line 95
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_4
    throw v0

    .line 97
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method public final c()Lcom/jxphone/mosecurity/b/a/a;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/keniu/security/b/x;

    invoke-direct {p0}, Lcom/keniu/security/b/v;->d()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keniu/security/b/x;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/keniu/security/b/x;

    invoke-direct {p0}, Lcom/keniu/security/b/v;->d()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keniu/security/b/x;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
