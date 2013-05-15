.class public final Lcom/avast/android/generic/internet/c/a/u;
.super Lcom/google/a/n;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/aa;


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;

.field private c:Ljava/lang/Object;

.field private d:Lcom/avast/android/generic/internet/c/a/v;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3340
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 3468
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->b:Lcom/google/a/c;

    .line 3492
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->c:Ljava/lang/Object;

    .line 3528
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->a()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    .line 3341
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/u;->l()V

    .line 3342
    return-void
.end method

.method static synthetic k()Lcom/avast/android/generic/internet/c/a/u;
    .locals 1

    .prologue
    .line 3335
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/u;->m()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 3345
    return-void
.end method

.method private static m()Lcom/avast/android/generic/internet/c/a/u;
    .locals 1

    .prologue
    .line 3347
    new-instance v0, Lcom/avast/android/generic/internet/c/a/u;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/u;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/u;
    .locals 2

    .prologue
    .line 3362
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/u;->m()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->d()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;
    .locals 1
    .parameter

    .prologue
    .line 3408
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->a()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3418
    :cond_0
    :goto_0
    return-object p0

    .line 3409
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/t;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3410
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/t;->c()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/u;

    .line 3412
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/t;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3413
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/t;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/u;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/u;

    .line 3415
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3416
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/t;->g()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/u;->b(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/u;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/u;
    .locals 1
    .parameter

    .prologue
    .line 3536
    if-nez p1, :cond_0

    .line 3537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3539
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    .line 3541
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    .line 3542
    return-object p0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/u;
    .locals 1
    .parameter

    .prologue
    .line 3476
    if-nez p1, :cond_0

    .line 3477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3479
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    .line 3480
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/u;->b:Lcom/google/a/c;

    .line 3482
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/u;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 3431
    sparse-switch v0, :sswitch_data_0

    .line 3436
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3438
    :sswitch_0
    return-object p0

    .line 3443
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    .line 3444
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->b:Lcom/google/a/c;

    goto :goto_0

    .line 3448
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    .line 3449
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->c:Ljava/lang/Object;

    goto :goto_0

    .line 3453
    :sswitch_3
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->h()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    .line 3454
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3455
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->f()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;

    .line 3457
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 3458
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/w;->d()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/u;

    goto :goto_0

    .line 3431
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/u;
    .locals 1
    .parameter

    .prologue
    .line 3507
    if-nez p1, :cond_0

    .line 3508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3510
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    .line 3511
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/u;->c:Ljava/lang/Object;

    .line 3513
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 3335
    check-cast p1, Lcom/avast/android/generic/internet/c/a/t;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/t;
    .locals 1

    .prologue
    .line 3366
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->a()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/u;
    .locals 2
    .parameter

    .prologue
    .line 3552
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->a()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3554
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/v;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/w;->d()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    .line 3560
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    .line 3561
    return-object p0

    .line 3557
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    goto :goto_0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3335
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/t;
    .locals 2

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->d()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    .line 3371
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/t;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3372
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 3374
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3335
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3335
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->a()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/t;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3388
    new-instance v2, Lcom/avast/android/generic/internet/c/a/t;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/t;-><init>(Lcom/avast/android/generic/internet/c/a/u;Lcom/avast/android/generic/internet/c/a/b;)V

    .line 3389
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    .line 3390
    const/4 v1, 0x0

    .line 3391
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 3394
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/u;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/t;->a(Lcom/avast/android/generic/internet/c/a/t;Lcom/google/a/c;)Lcom/google/a/c;

    .line 3395
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3396
    or-int/lit8 v0, v0, 0x2

    .line 3398
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/u;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/t;->a(Lcom/avast/android/generic/internet/c/a/t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3399
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 3400
    or-int/lit8 v0, v0, 0x4

    .line 3402
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/t;->a(Lcom/avast/android/generic/internet/c/a/t;Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/v;

    .line 3403
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/t;->a(Lcom/avast/android/generic/internet/c/a/t;I)I

    .line 3404
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 3530
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/u;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/avast/android/generic/internet/c/a/v;
    .locals 1

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/u;->d:Lcom/avast/android/generic/internet/c/a/v;

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 3335
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->b()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 3335
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->a()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 3335
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->a()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 3335
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/u;->c()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 3422
    const/4 v0, 0x1

    return v0
.end method
