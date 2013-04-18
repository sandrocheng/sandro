.class public final Lcom/keniu/security/b/j;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteManager.java"


# static fields
.field private static a:Lcom/keniu/security/b/j;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/keniu/security/b/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/keniu/security/b/f;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    const/16 v1, 0x70

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    iput-object p3, p0, Lcom/keniu/security/b/j;->c:Lcom/keniu/security/b/f;

    .line 36
    iput-object p1, p0, Lcom/keniu/security/b/j;->b:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/keniu/security/b/f;)Lcom/keniu/security/b/j;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/keniu/security/b/j;->a:Lcom/keniu/security/b/j;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/keniu/security/b/j;

    invoke-interface {p1}, Lcom/keniu/security/b/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/keniu/security/b/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/keniu/security/b/f;)V

    sput-object v0, Lcom/keniu/security/b/j;->a:Lcom/keniu/security/b/j;

    .line 29
    :cond_0
    sget-object v0, Lcom/keniu/security/b/j;->a:Lcom/keniu/security/b/j;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/keniu/security/b/j;->c:Lcom/keniu/security/b/f;

    invoke-interface {v0}, Lcom/keniu/security/b/f;->d()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 44
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 45
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/keniu/security/b/j;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/b/k;

    .line 46
    invoke-interface {v1, p1}, Lcom/keniu/security/b/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    const-string v3, "SQLiteManager.onCreate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create table  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/keniu/security/b/j;->c:Lcom/keniu/security/b/f;

    invoke-interface {v0}, Lcom/keniu/security/b/f;->d()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 58
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 59
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/keniu/security/b/j;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/b/k;

    .line 60
    invoke-interface {v1, p1, p2, p3}, Lcom/keniu/security/b/k;->a(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string v3, "SQLiteManager.onUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
