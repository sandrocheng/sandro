.class public final Lcom/avast/android/generic/internet/c/a/m;
.super Lcom/google/a/n;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/p;


# instance fields
.field private a:I

.field private b:Lcom/avast/android/generic/internet/c/a/n;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2363
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 2463
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->a:Lcom/avast/android/generic/internet/c/a/n;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/m;->b:Lcom/avast/android/generic/internet/c/a/n;

    .line 2364
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/m;->f()V

    .line 2365
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/m;)Lcom/avast/android/generic/internet/c/a/l;
    .locals 1
    .parameter

    .prologue
    .line 2358
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/m;->l()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/m;
    .locals 1

    .prologue
    .line 2358
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/m;->k()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 2368
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/m;
    .locals 1

    .prologue
    .line 2370
    new-instance v0, Lcom/avast/android/generic/internet/c/a/m;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/m;-><init>()V

    return-object v0
.end method

.method private l()Lcom/avast/android/generic/internet/c/a/l;
    .locals 2

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->d()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    .line 2399
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/l;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2400
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/al;->a()Lcom/google/a/x;

    move-result-object v0

    throw v0

    .line 2403
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/m;
    .locals 2

    .prologue
    .line 2381
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/m;->k()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->d()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/avast/android/generic/internet/c/a/l;)Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/l;)Lcom/avast/android/generic/internet/c/a/m;
    .locals 1
    .parameter

    .prologue
    .line 2419
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/l;->a()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2423
    :cond_0
    :goto_0
    return-object p0

    .line 2420
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/l;->c()Lcom/avast/android/generic/internet/c/a/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/avast/android/generic/internet/c/a/n;)Lcom/avast/android/generic/internet/c/a/m;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/n;)Lcom/avast/android/generic/internet/c/a/m;
    .locals 1
    .parameter

    .prologue
    .line 2471
    if-nez p1, :cond_0

    .line 2472
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2474
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/m;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/m;->a:I

    .line 2475
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/m;->b:Lcom/avast/android/generic/internet/c/a/n;

    .line 2477
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2435
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 2436
    sparse-switch v0, :sswitch_data_0

    .line 2441
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2443
    :sswitch_0
    return-object p0

    .line 2448
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 2449
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/n;->a(I)Lcom/avast/android/generic/internet/c/a/n;

    move-result-object v0

    .line 2450
    if-eqz v0, :cond_0

    .line 2451
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/m;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/m;->a:I

    .line 2452
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/m;->b:Lcom/avast/android/generic/internet/c/a/n;

    goto :goto_0

    .line 2436
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2358
    check-cast p1, Lcom/avast/android/generic/internet/c/a/l;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/avast/android/generic/internet/c/a/l;)Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/l;
    .locals 1

    .prologue
    .line 2385
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/l;->a()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2358
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/l;
    .locals 2

    .prologue
    .line 2389
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->d()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    .line 2390
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/l;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2391
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 2393
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2358
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->a()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/l;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2407
    new-instance v2, Lcom/avast/android/generic/internet/c/a/l;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/l;-><init>(Lcom/avast/android/generic/internet/c/a/m;Lcom/avast/android/generic/internet/c/a/b;)V

    .line 2408
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/m;->a:I

    .line 2409
    const/4 v1, 0x0

    .line 2410
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 2413
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/m;->b:Lcom/avast/android/generic/internet/c/a/n;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/l;->a(Lcom/avast/android/generic/internet/c/a/l;Lcom/avast/android/generic/internet/c/a/n;)Lcom/avast/android/generic/internet/c/a/n;

    .line 2414
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/l;->a(Lcom/avast/android/generic/internet/c/a/l;I)I

    .line 2415
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->b()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->a()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->a()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/m;->c()Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 2427
    const/4 v0, 0x1

    return v0
.end method
