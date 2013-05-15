.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/r;
.super Lcom/google/a/n;
.source "VpsInfoProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/s;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->b:Ljava/lang/Object;

    .line 490
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->c:Ljava/lang/Object;

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d:Ljava/lang/Object;

    .line 319
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->m()V

    .line 320
    return-void
.end method

.method static synthetic l()Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method private static n()Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1
    .parameter

    .prologue
    .line 386
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-object p0

    .line 387
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    .line 390
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    .line 393
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->c(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 420
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 421
    sparse-switch v0, :sswitch_data_0

    .line 426
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    :sswitch_0
    return-object p0

    .line 433
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    .line 434
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->b:Ljava/lang/Object;

    goto :goto_0

    .line 438
    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    .line 439
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->c:Ljava/lang/Object;

    goto :goto_0

    .line 443
    :sswitch_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    .line 444
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d:Ljava/lang/Object;

    goto :goto_0

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1
    .parameter

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 472
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    .line 473
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->b:Ljava/lang/Object;

    .line 475
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 313
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1
    .parameter

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 508
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    .line 509
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->c:Ljava/lang/Object;

    .line 511
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 352
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1
    .parameter

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 544
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    .line 545
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d:Ljava/lang/Object;

    .line 547
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 366
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/r;Lcom/avast/android/mobilesecurity/engine/internal/a/n;)V

    .line 367
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    .line 368
    const/4 v1, 0x0

    .line 369
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 372
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 374
    or-int/lit8 v0, v0, 0x2

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 378
    or-int/lit8 v0, v0, 0x4

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c(Lcom/avast/android/mobilesecurity/engine/internal/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;I)I

    .line 382
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 456
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 528
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a:I

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

.method public final v()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const/4 v0, 0x1

    goto :goto_0
.end method
