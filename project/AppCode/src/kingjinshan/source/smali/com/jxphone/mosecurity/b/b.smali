.class public abstract Lcom/jxphone/mosecurity/b/b;
.super Ljava/lang/Object;
.source "BaseDAO.java"

# interfaces
.implements Lcom/keniu/security/b/k;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/b/b;->a:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private a(Landroid/database/Cursor;I)Ljava/util/List;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    if-ge v1, p2, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/b/b;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    return-object v0
.end method

.method private b(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .parameter

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/b/b;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
.end method

.method protected final varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/b;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/b/b;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    return-object v2
.end method

.method protected c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/b/a;->a()Lcom/keniu/security/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/b/j;->a(Landroid/content/Context;Lcom/keniu/security/b/f;)Lcom/keniu/security/b/j;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/keniu/security/b/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
