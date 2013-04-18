.class public final Lcom/keniu/security/main/bi;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/keniu/security/monitor/b;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8


# instance fields
.field final synthetic i:Lcom/keniu/security/main/MainActivity;

.field private j:Landroid/content/Context;

.field private k:Lcom/keniu/security/main/a/h;

.field private l:Landroid/view/LayoutInflater;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;Landroid/content/Context;Lcom/keniu/security/main/a/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2342
    iput-object p1, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2324
    iput-object v0, p0, Lcom/keniu/security/main/bi;->j:Landroid/content/Context;

    .line 2325
    iput-object v0, p0, Lcom/keniu/security/main/bi;->k:Lcom/keniu/security/main/a/h;

    .line 2326
    iput-object v0, p0, Lcom/keniu/security/main/bi;->l:Landroid/view/LayoutInflater;

    .line 2327
    iput-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    .line 2328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    .line 2343
    iput-object p2, p0, Lcom/keniu/security/main/bi;->j:Landroid/content/Context;

    .line 2344
    iput-object p3, p0, Lcom/keniu/security/main/bi;->k:Lcom/keniu/security/main/a/h;

    .line 2345
    iget-object v0, p0, Lcom/keniu/security/main/bi;->j:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keniu/security/main/bi;->l:Landroid/view/LayoutInflater;

    .line 2347
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    .line 2537
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/a/m;

    .line 2540
    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->b()I

    move-result v3

    sget v4, Lcom/keniu/security/main/a/k;->g:I

    if-ne v3, v4, :cond_0

    .line 2541
    new-instance v3, Lcom/keniu/security/main/bj;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bj;-><init>(Lcom/keniu/security/main/bi;)V

    .line 2542
    const/16 v4, 0x8

    iput v4, v3, Lcom/keniu/security/main/bj;->a:I

    .line 2543
    iput-object v0, v3, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    .line 2545
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2549
    :cond_1
    return-object v1
.end method

.method private a(Ljava/util/List;II)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2556
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/a/m;

    .line 2557
    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->a()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 2558
    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->b()I

    move-result v3

    sget v4, Lcom/keniu/security/main/a/k;->g:I

    if-eq v3, v4, :cond_0

    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->b()I

    move-result v3

    sget v4, Lcom/keniu/security/main/a/k;->h:I

    if-eq v3, v4, :cond_0

    .line 2560
    new-instance v3, Lcom/keniu/security/main/bj;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bj;-><init>(Lcom/keniu/security/main/bi;)V

    .line 2561
    iput p3, v3, Lcom/keniu/security/main/bj;->a:I

    .line 2562
    iput-object v0, v3, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    .line 2564
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2569
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/keniu/security/main/bi;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 2322
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_5

    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0, v7, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0, v7, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_9
    invoke-virtual {p0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2499
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2502
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2503
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2505
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2506
    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 2508
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2509
    :cond_2
    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 2511
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2513
    :cond_4
    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_5

    iget v5, v0, Lcom/keniu/security/main/bj;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 2515
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2519
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2521
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2522
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2524
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2525
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0, v7, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2527
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2528
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0, v7, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2530
    :cond_9
    invoke-virtual {p0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    .line 2533
    :cond_a
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2742
    sget v0, Lcom/keniu/security/monitor/a;->x:I

    if-ne p1, v0, :cond_0

    .line 2744
    sget-boolean v0, Lcom/keniu/security/main/MainActivity;->c:Z

    if-eqz v0, :cond_0

    .line 2745
    sput-boolean v2, Lcom/keniu/security/main/MainActivity;->c:Z

    .line 2746
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2747
    iget-object v1, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/main/MainActivity;->a(Z)V

    .line 2751
    :cond_0
    return v2
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2351
    sput-boolean v0, Lcom/keniu/security/main/a/a;->a:Z

    .line 2352
    sput-boolean v0, Lcom/keniu/security/main/a/n;->a:Z

    .line 2354
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2355
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    .line 2356
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/keniu/security/main/bi;->k:Lcom/keniu/security/main/a/h;

    invoke-virtual {v1}, Lcom/keniu/security/main/a/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2359
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    sget v1, Lcom/keniu/security/main/a/k;->c:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/main/bi;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 2362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2363
    iget-object v0, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    iget-object v2, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-interface {v0, v2}, Lcom/keniu/security/main/a/m;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 2365
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->e(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->c()V

    .line 2367
    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/main/bj;

    .line 2332
    invoke-virtual {p0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v1}, Lcom/keniu/security/main/a/m;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2334
    iget-object p0, p0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    check-cast p0, Lcom/keniu/security/main/a/ag;

    .line 2336
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/main/a/ag;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 2340
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2422
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2423
    invoke-virtual {v0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2424
    iget-object v2, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v2}, Lcom/keniu/security/main/a/m;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2425
    iget-object v0, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v0, p1}, Lcom/keniu/security/main/a/m;->a(Z)V

    goto :goto_0

    .line 2428
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    .line 2431
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2405
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2409
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2410
    invoke-virtual {v0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2411
    iget-object v2, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v2}, Lcom/keniu/security/main/a/m;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2412
    iget-object v0, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    iget-object v2, p0, Lcom/keniu/security/main/bi;->j:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/keniu/security/main/a/m;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 2415
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    .line 2417
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    .line 2436
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/keniu/security/main/bi;->k:Lcom/keniu/security/main/a/h;

    invoke-virtual {v1}, Lcom/keniu/security/main/a/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2438
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    sget v1, Lcom/keniu/security/main/a/k;->c:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/main/bi;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 2441
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2444
    new-instance v1, Lcom/keniu/security/main/bj;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bj;-><init>(Lcom/keniu/security/main/bi;)V

    .line 2445
    const/4 v2, 0x1

    iput v2, v1, Lcom/keniu/security/main/bj;->a:I

    .line 2446
    iget-object v2, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2449
    iget-object v1, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2452
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    sget v1, Lcom/keniu/security/main/a/k;->d:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/main/bi;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 2455
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2458
    new-instance v1, Lcom/keniu/security/main/bj;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bj;-><init>(Lcom/keniu/security/main/bi;)V

    .line 2459
    const/4 v2, 0x3

    iput v2, v1, Lcom/keniu/security/main/bj;->a:I

    .line 2460
    iget-object v2, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2463
    iget-object v1, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2466
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    sget v1, Lcom/keniu/security/main/a/k;->e:I

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/main/bi;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 2469
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2472
    new-instance v1, Lcom/keniu/security/main/bj;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bj;-><init>(Lcom/keniu/security/main/bi;)V

    .line 2473
    const/4 v2, 0x5

    iput v2, v1, Lcom/keniu/security/main/bj;->a:I

    .line 2474
    iget-object v2, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2477
    iget-object v1, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2481
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/keniu/security/main/bi;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2483
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2486
    new-instance v1, Lcom/keniu/security/main/bj;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bj;-><init>(Lcom/keniu/security/main/bi;)V

    .line 2487
    const/4 v2, 0x7

    iput v2, v1, Lcom/keniu/security/main/bj;->a:I

    .line 2488
    iget-object v2, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2491
    iget-object v1, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2494
    :cond_3
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2701
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0, v4}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;Z)Z

    .line 2703
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2704
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    .line 2705
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/keniu/security/main/bi;->k:Lcom/keniu/security/main/a/h;

    invoke-virtual {v1}, Lcom/keniu/security/main/a/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2708
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    sget v1, Lcom/keniu/security/main/a/k;->c:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/main/bi;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 2711
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2712
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->G(Lcom/keniu/security/main/MainActivity;)Z

    .line 2715
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/bi;->m:Ljava/util/List;

    sget v1, Lcom/keniu/security/main/a/k;->d:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/main/bi;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 2718
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2719
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byHandList size is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2720
    iget-object v1, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->H(Lcom/keniu/security/main/MainActivity;)Z

    .line 2722
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 2723
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2724
    invoke-virtual {v0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2725
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0, v5}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;Z)Z

    .line 2729
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2730
    invoke-virtual {v0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2731
    iget-object v2, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v2}, Lcom/keniu/security/main/a/m;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2732
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->I(Lcom/keniu/security/main/MainActivity;)Z

    goto :goto_0

    .line 2738
    :cond_5
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2576
    const/4 v0, 0x0

    .line 2578
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/keniu/security/main/bi;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 2588
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 2594
    iget-object v0, p0, Lcom/keniu/security/main/bi;->k:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_b

    .line 2596
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/bi;->l:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    .line 2600
    :goto_0
    invoke-virtual {p0, p1}, Lcom/keniu/security/main/bi;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2601
    const v1, 0x7f080275

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2602
    const v2, 0x7f080274

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2603
    const v3, 0x7f080276

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2604
    const v4, 0x7f080277

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2605
    const v5, 0x7f080273

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2607
    const v6, 0x7f080278

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 2610
    invoke-virtual {v0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2611
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2613
    iget-object v0, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    .line 2615
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2616
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2617
    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2619
    iget-object v1, p0, Lcom/keniu/security/main/bi;->k:Lcom/keniu/security/main/a/h;

    invoke-virtual {v1}, Lcom/keniu/security/main/a/h;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2620
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2621
    sget v1, Lcom/keniu/security/main/a/k;->l:I

    invoke-interface {v0, v1}, Lcom/keniu/security/main/a/m;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    .line 2665
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2667
    :goto_2
    invoke-virtual {p0}, Lcom/keniu/security/main/bi;->getCount()I

    move-result v0

    sub-int/2addr v0, v11

    if-ge p1, v0, :cond_1

    .line 2668
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/bi;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/main/bj;

    .line 2669
    invoke-virtual {p0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2670
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2676
    :cond_1
    :goto_3
    return-object v7

    .line 2626
    :cond_2
    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2627
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2628
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2629
    iget-object v1, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2632
    sget v1, Lcom/keniu/security/main/a/k;->n:I

    invoke-interface {v0, v1}, Lcom/keniu/security/main/a/m;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    goto :goto_1

    .line 2637
    :cond_3
    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2638
    iget-object v1, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2648
    :goto_4
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2649
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 2651
    sget v1, Lcom/keniu/security/main/a/k;->l:I

    invoke-interface {v0, v1}, Lcom/keniu/security/main/a/m;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2654
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2655
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 2643
    :cond_4
    iget-object v1, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 2660
    :cond_5
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2661
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2662
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 2663
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2664
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    iget v1, v0, Lcom/keniu/security/main/bj;->a:I

    if-ne v1, v11, :cond_6

    const-string v0, "\u4e00\u952e\u4f18\u5316\u9879"

    move-object v1, v2

    goto/16 :goto_1

    :cond_6
    iget v1, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    const-string v0, "\u624b\u52a8\u4f18\u5316\u9879"

    move-object v1, v2

    goto/16 :goto_1

    :cond_7
    iget v1, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_8

    const-string v0, "\u68c0\u6d4b\u63d0\u793a\u9879"

    move-object v1, v2

    goto/16 :goto_1

    :cond_8
    iget v0, v0, Lcom/keniu/security/main/bj;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const-string v0, "\u5b89\u5168\u9879"

    move-object v1, v2

    goto/16 :goto_1

    :cond_9
    const-string v0, ""

    move-object v1, v2

    goto/16 :goto_1

    .line 2672
    :cond_a
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    move-object v7, p2

    goto/16 :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 2681
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080277

    if-ne v0, v1, :cond_1

    .line 2682
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->F(Lcom/keniu/security/main/MainActivity;)Z

    .line 2683
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2684
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/bi;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bj;

    .line 2686
    invoke-virtual {v0}, Lcom/keniu/security/main/bj;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2687
    iget-object v1, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    iget-object v2, p0, Lcom/keniu/security/main/bi;->j:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/keniu/security/main/a/m;->a(Landroid/content/Context;)V

    .line 2688
    iget-object v1, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    invoke-interface {v1}, Lcom/keniu/security/main/a/m;->a()I

    move-result v1

    sget v2, Lcom/keniu/security/main/a/k;->e:I

    if-eq v1, v2, :cond_0

    .line 2689
    iget-object v0, v0, Lcom/keniu/security/main/bj;->b:Lcom/keniu/security/main/a/m;

    iget-object v1, p0, Lcom/keniu/security/main/bi;->j:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/keniu/security/main/a/m;->b(Landroid/content/Context;)V

    .line 2690
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->f(Lcom/keniu/security/main/MainActivity;)Z

    .line 2692
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    .line 2693
    iget-object v0, p0, Lcom/keniu/security/main/bi;->i:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->g(Lcom/keniu/security/main/MainActivity;)V

    .line 2697
    :cond_1
    return-void
.end method
