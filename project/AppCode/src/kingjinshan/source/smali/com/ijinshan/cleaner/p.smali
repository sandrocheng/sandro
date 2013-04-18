.class final Lcom/ijinshan/cleaner/p;
.super Ljava/lang/Thread;
.source "CleanRubEngine.java"


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/ijinshan/cleaner/o;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/o;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/ijinshan/cleaner/p;->b:Lcom/ijinshan/cleaner/o;

    iput p2, p0, Lcom/ijinshan/cleaner/p;->a:F

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 386
    iget-object v0, p0, Lcom/ijinshan/cleaner/p;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v0}, Lcom/ijinshan/cleaner/o;->a(Lcom/ijinshan/cleaner/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 387
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 388
    new-instance v5, Lcom/ijinshan/cleaner/q;

    invoke-direct {v5, p0}, Lcom/ijinshan/cleaner/q;-><init>(Lcom/ijinshan/cleaner/p;)V

    .line 395
    const/4 v0, 0x0

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/p;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v1}, Lcom/ijinshan/cleaner/o;->c(Lcom/ijinshan/cleaner/o;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageSizeInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const-class v7, Landroid/content/pm/IPackageStatsObserver;

    aput-object v7, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v7, v0

    :goto_0
    move v8, v10

    .line 407
    :goto_1
    if-ge v8, v6, :cond_1

    .line 408
    iget-object v0, p0, Lcom/ijinshan/cleaner/p;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v0}, Lcom/ijinshan/cleaner/o;->a(Lcom/ijinshan/cleaner/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 409
    new-instance v2, Lcom/ijinshan/cleaner/a/a;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/a/a;-><init>()V

    .line 410
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/ijinshan/cleaner/a/a;->a(Ljava/lang/String;)V

    .line 414
    :try_start_1
    new-instance v0, Lcom/ijinshan/cleaner/t;

    iget-object v1, p0, Lcom/ijinshan/cleaner/p;->b:Lcom/ijinshan/cleaner/o;

    sub-int v3, v6, v11

    if-ne v8, v3, :cond_0

    move v3, v11

    :goto_2
    iget v4, p0, Lcom/ijinshan/cleaner/p;->a:F

    add-int/lit8 v9, v8, 0x1

    int-to-float v9, v9

    mul-float/2addr v4, v9

    int-to-float v9, v6

    div-float/2addr v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/ijinshan/cleaner/t;-><init>(Lcom/ijinshan/cleaner/o;Lcom/ijinshan/cleaner/a/a;ZFLandroid/os/Handler;)V

    .line 417
    iget-object v1, p0, Lcom/ijinshan/cleaner/p;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v1}, Lcom/ijinshan/cleaner/o;->c(Lcom/ijinshan/cleaner/o;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/a;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-virtual {v7, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 407
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 400
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v7, v0

    .line 406
    goto :goto_0

    .line 403
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move v3, v10

    .line 414
    goto :goto_2

    .line 423
    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 424
    return-void

    :catch_2
    move-exception v0

    goto :goto_3
.end method
