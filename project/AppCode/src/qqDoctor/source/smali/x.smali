.class public final Lx;
.super Ljava/lang/Object;


# instance fields
.field a:Ly;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lx;->a()V

    iget-object v0, p0, Lx;->a:Ly;

    instance-of v0, v0, Lz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lx;->a:Ly;

    instance-of v0, v0, Laa;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lfm;->c:Z

    :cond_1
    return-void
.end method

.method private a()V
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lx;->a:Ly;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    new-instance v0, Lt;

    invoke-direct {v0}, Lt;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {}, Lft;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lft;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "xt800"

    aput-object v8, v0, v4

    const/4 v4, 0x1

    const-string v8, "xt882"

    aput-object v8, v0, v4

    const/4 v4, 0x2

    const-string v8, "xt806"

    aput-object v8, v0, v4

    const/4 v4, 0x3

    const-string v8, "xt928"

    aput-object v8, v0, v4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "i909"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "i809"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "i589"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "i929"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "n930"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "d539"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "r750"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "v889d"

    aput-object v11, v9, v10

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "motorola"

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "samsung"

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yulong"

    invoke-virtual {v10, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zte"

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v8, v0

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_8

    aget-object v9, v0, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_3

    invoke-static {v6, v7}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ly;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v0, v1

    move v1, v2

    :goto_2
    if-nez v1, :cond_1

    invoke-static {v6, v7}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ly;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ly;->d()[Lv;

    move-result-object v6

    if-eqz v6, :cond_6

    array-length v4, v6

    if-lez v4, :cond_6

    array-length v7, v6

    move v4, v3

    :goto_3
    if-ge v4, v7, :cond_5

    aget-object v1, v6, v4

    if-eqz v1, :cond_4

    aget-object v1, v6, v4

    iget-object v1, v1, Lv;->a:Lw;

    const/4 v8, 0x0

    invoke-interface {v1, v5, v8}, Lw;->a(Landroid/content/Context;Z)Ly;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v0, v1

    move v1, v2

    :goto_4
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ly;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->dv()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->dw()V

    :cond_1
    :goto_5
    iput-object v0, p0, Lx;->a:Ly;
    :try_end_1
    .catch Ls; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    iget-object v0, p0, Lx;->a:Ly;

    if-nez v0, :cond_2

    new-instance v0, Lai;

    invoke-direct {v0}, Lai;-><init>()V

    iput-object v0, p0, Lx;->a:Ly;

    :cond_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iget-object v1, p0, Lx;->a:Ly;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lho;->O(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v1, v5, v4}, Ly;->a(Landroid/content/Context;Z)Ly;
    :try_end_2
    .catch Ls; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v0, v1

    move v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    move-object v0, v1

    move v1, v3

    goto :goto_2

    :cond_9
    move-object v0, v1

    move v1, v3

    goto :goto_2

    :cond_a
    move-object v0, v1

    goto :goto_5
.end method
