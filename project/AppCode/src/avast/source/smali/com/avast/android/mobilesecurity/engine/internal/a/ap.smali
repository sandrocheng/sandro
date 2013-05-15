.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/aq;


# instance fields
.field private a:I

.field private b:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2390
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 2493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    .line 2391
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->f()V

    .line 2392
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ap;)Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    .locals 1
    .parameter

    .prologue
    .line 2385
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1

    .prologue
    .line 2385
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 2395
    return-void
.end method

.method private static k()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1

    .prologue
    .line 2397
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;-><init>()V

    return-object v0
.end method

.method private l()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    .locals 2

    .prologue
    .line 2425
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    .line 2426
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2427
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/al;->a()Lcom/google/a/x;

    move-result-object v0

    throw v0

    .line 2430
    :cond_0
    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 2496
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2497
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    .line 2498
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    .line 2500
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 2

    .prologue
    .line 2408
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 2529
    if-nez p1, :cond_0

    .line 2530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2532
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->m()V

    .line 2533
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2535
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 2
    .parameter

    .prologue
    .line 2445
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2456
    :cond_0
    :goto_0
    return-object p0

    .line 2446
    :cond_1
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2447
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2448
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    .line 2449
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    goto :goto_0

    .line 2451
    :cond_2
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->m()V

    .line 2452
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 2469
    sparse-switch v0, :sswitch_data_0

    .line 2474
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2476
    :sswitch_0
    return-object p0

    .line 2481
    :sswitch_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    .line 2482
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 2483
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    goto :goto_0

    .line 2469
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2385
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    .locals 1

    .prologue
    .line 2412
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2385
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    .locals 2

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    .line 2417
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2418
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 2420
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2385
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2385
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    .locals 3

    .prologue
    .line 2434
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ap;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 2435
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    .line 2436
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2437
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    .line 2438
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a:I

    .line 2440
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;Ljava/util/List;)Ljava/util/List;

    .line 2441
    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 2385
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 2385
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 2385
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 2385
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 2460
    const/4 v0, 0x1

    return v0
.end method
