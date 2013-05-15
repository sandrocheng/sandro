.class public final Lcom/avast/a/a/a/t;
.super Lcom/google/a/n;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/u;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Lcom/avast/a/a/a/a/m;

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12349
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 12509
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/t;->b:Ljava/lang/Object;

    .line 12545
    sget-object v0, Lcom/avast/a/a/a/a/m;->a:Lcom/avast/a/a/a/a/m;

    iput-object v0, p0, Lcom/avast/a/a/a/t;->c:Lcom/avast/a/a/a/a/m;

    .line 12590
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/t;->e:Ljava/lang/Object;

    .line 12626
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/t;->f:Ljava/lang/Object;

    .line 12350
    invoke-direct {p0}, Lcom/avast/a/a/a/t;->k()V

    .line 12351
    return-void
.end method

.method static synthetic f()Lcom/avast/a/a/a/t;
    .locals 1

    .prologue
    .line 12344
    invoke-static {}, Lcom/avast/a/a/a/t;->l()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 0

    .prologue
    .line 12354
    return-void
.end method

.method private static l()Lcom/avast/a/a/a/t;
    .locals 1

    .prologue
    .line 12356
    new-instance v0, Lcom/avast/a/a/a/t;

    invoke-direct {v0}, Lcom/avast/a/a/a/t;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/t;
    .locals 2

    .prologue
    .line 12375
    invoke-static {}, Lcom/avast/a/a/a/t;->l()Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->d()Lcom/avast/a/a/a/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/t;->a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/a/a/a/a/m;)Lcom/avast/a/a/a/t;
    .locals 1
    .parameter

    .prologue
    .line 12553
    if-nez p1, :cond_0

    .line 12554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12556
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12557
    iput-object p1, p0, Lcom/avast/a/a/a/t;->c:Lcom/avast/a/a/a/a/m;

    .line 12559
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/t;
    .locals 1
    .parameter

    .prologue
    .line 12429
    invoke-static {}, Lcom/avast/a/a/a/s;->a()Lcom/avast/a/a/a/s;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 12445
    :cond_0
    :goto_0
    return-object p0

    .line 12430
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12431
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/t;->a(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    .line 12433
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12434
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->e()Lcom/avast/a/a/a/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/t;->a(Lcom/avast/a/a/a/a/m;)Lcom/avast/a/a/a/t;

    .line 12436
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12437
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/t;->a(Z)Lcom/avast/a/a/a/t;

    .line 12439
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12440
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/t;->b(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    .line 12442
    :cond_5
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12443
    invoke-virtual {p1}, Lcom/avast/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/t;->c(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/t;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12461
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 12462
    sparse-switch v0, :sswitch_data_0

    .line 12467
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/t;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12469
    :sswitch_0
    return-object p0

    .line 12474
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12475
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/t;->b:Ljava/lang/Object;

    goto :goto_0

    .line 12479
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 12480
    invoke-static {v0}, Lcom/avast/a/a/a/a/m;->a(I)Lcom/avast/a/a/a/a/m;

    move-result-object v0

    .line 12481
    if-eqz v0, :cond_0

    .line 12482
    iget v1, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12483
    iput-object v0, p0, Lcom/avast/a/a/a/t;->c:Lcom/avast/a/a/a/a/m;

    goto :goto_0

    .line 12488
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12489
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/t;->d:Z

    goto :goto_0

    .line 12493
    :sswitch_4
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12494
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/t;->e:Ljava/lang/Object;

    goto :goto_0

    .line 12498
    :sswitch_5
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12499
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/t;->f:Ljava/lang/Object;

    goto :goto_0

    .line 12462
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/t;
    .locals 1
    .parameter

    .prologue
    .line 12524
    if-nez p1, :cond_0

    .line 12525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12527
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12528
    iput-object p1, p0, Lcom/avast/a/a/a/t;->b:Ljava/lang/Object;

    .line 12530
    return-object p0
.end method

.method public a(Z)Lcom/avast/a/a/a/t;
    .locals 1
    .parameter

    .prologue
    .line 12577
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12578
    iput-boolean p1, p0, Lcom/avast/a/a/a/t;->d:Z

    .line 12580
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 12344
    check-cast p1, Lcom/avast/a/a/a/s;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/t;->a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/s;
    .locals 1

    .prologue
    .line 12379
    invoke-static {}, Lcom/avast/a/a/a/s;->a()Lcom/avast/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/t;
    .locals 1
    .parameter

    .prologue
    .line 12605
    if-nez p1, :cond_0

    .line 12606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12608
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12609
    iput-object p1, p0, Lcom/avast/a/a/a/t;->e:Ljava/lang/Object;

    .line 12611
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12344
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/t;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/s;
    .locals 2

    .prologue
    .line 12383
    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->d()Lcom/avast/a/a/a/s;

    move-result-object v0

    .line 12384
    invoke-virtual {v0}, Lcom/avast/a/a/a/s;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12385
    invoke-static {v0}, Lcom/avast/a/a/a/t;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 12387
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/a/a/a/t;
    .locals 1
    .parameter

    .prologue
    .line 12641
    if-nez p1, :cond_0

    .line 12642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12644
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12645
    iput-object p1, p0, Lcom/avast/a/a/a/t;->f:Ljava/lang/Object;

    .line 12647
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12344
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/t;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12344
    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->a()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/s;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 12401
    new-instance v2, Lcom/avast/a/a/a/s;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/s;-><init>(Lcom/avast/a/a/a/t;Lcom/avast/a/a/a/l;)V

    .line 12402
    iget v3, p0, Lcom/avast/a/a/a/t;->a:I

    .line 12403
    const/4 v1, 0x0

    .line 12404
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 12407
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/t;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/s;->a(Lcom/avast/a/a/a/s;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12408
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 12409
    or-int/lit8 v0, v0, 0x2

    .line 12411
    :cond_0
    iget-object v1, p0, Lcom/avast/a/a/a/t;->c:Lcom/avast/a/a/a/a/m;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/s;->a(Lcom/avast/a/a/a/s;Lcom/avast/a/a/a/a/m;)Lcom/avast/a/a/a/a/m;

    .line 12412
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 12413
    or-int/lit8 v0, v0, 0x4

    .line 12415
    :cond_1
    iget-boolean v1, p0, Lcom/avast/a/a/a/t;->d:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/s;->a(Lcom/avast/a/a/a/s;Z)Z

    .line 12416
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 12417
    or-int/lit8 v0, v0, 0x8

    .line 12419
    :cond_2
    iget-object v1, p0, Lcom/avast/a/a/a/t;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/s;->b(Lcom/avast/a/a/a/s;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12420
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 12421
    or-int/lit8 v0, v0, 0x10

    .line 12423
    :cond_3
    iget-object v1, p0, Lcom/avast/a/a/a/t;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/s;->c(Lcom/avast/a/a/a/s;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12424
    invoke-static {v2, v0}, Lcom/avast/a/a/a/s;->a(Lcom/avast/a/a/a/s;I)I

    .line 12425
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12511
    iget v1, p0, Lcom/avast/a/a/a/t;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 12344
    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->b()Lcom/avast/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 12344
    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->a()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 12344
    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->a()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 12344
    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->c()Lcom/avast/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 12449
    invoke-virtual {p0}, Lcom/avast/a/a/a/t;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12451
    const/4 v0, 0x0

    .line 12453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
