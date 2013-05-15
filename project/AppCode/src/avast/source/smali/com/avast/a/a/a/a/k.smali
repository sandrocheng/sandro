.class public final Lcom/avast/a/a/a/a/k;
.super Lcom/google/a/n;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/l;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/Object;

.field private d:Lcom/google/a/z;

.field private e:Lcom/google/a/z;

.field private f:J

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Lcom/google/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4371
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 4608
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->c:Ljava/lang/Object;

    .line 4644
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    .line 4700
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    .line 4777
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->g:Ljava/lang/Object;

    .line 4834
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->i:Lcom/google/a/c;

    .line 4372
    invoke-direct {p0}, Lcom/avast/a/a/a/a/k;->k()V

    .line 4373
    return-void
.end method

.method static synthetic f()Lcom/avast/a/a/a/a/k;
    .locals 1

    .prologue
    .line 4366
    invoke-static {}, Lcom/avast/a/a/a/a/k;->l()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 0

    .prologue
    .line 4376
    return-void
.end method

.method private static l()Lcom/avast/a/a/a/a/k;
    .locals 1

    .prologue
    .line 4378
    new-instance v0, Lcom/avast/a/a/a/a/k;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/k;-><init>()V

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 4646
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4647
    new-instance v0, Lcom/google/a/y;

    iget-object v1, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    invoke-direct {v0, v1}, Lcom/google/a/y;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    .line 4648
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4650
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 4702
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4703
    new-instance v0, Lcom/google/a/y;

    iget-object v1, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    invoke-direct {v0, v1}, Lcom/google/a/y;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    .line 4704
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4706
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/a/k;
    .locals 2

    .prologue
    .line 4403
    invoke-static {}, Lcom/avast/a/a/a/a/k;->l()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->d()Lcom/avast/a/a/a/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/a/k;->a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/a/a/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 4821
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4822
    iput p1, p0, Lcom/avast/a/a/a/a/k;->h:I

    .line 4824
    return-object p0
.end method

.method public a(J)Lcom/avast/a/a/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 4595
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4596
    iput-wide p1, p0, Lcom/avast/a/a/a/a/k;->b:J

    .line 4598
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/k;
    .locals 2
    .parameter

    .prologue
    .line 4473
    invoke-static {}, Lcom/avast/a/a/a/a/j;->a()Lcom/avast/a/a/a/a/j;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4512
    :cond_0
    :goto_0
    return-object p0

    .line 4474
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4475
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/k;->a(J)Lcom/avast/a/a/a/a/k;

    .line 4477
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4478
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/k;->a(Ljava/lang/String;)Lcom/avast/a/a/a/a/k;

    .line 4480
    :cond_3
    invoke-static {p1}, Lcom/avast/a/a/a/a/j;->b(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4481
    iget-object v0, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4482
    invoke-static {p1}, Lcom/avast/a/a/a/a/j;->b(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    .line 4483
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4490
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/avast/a/a/a/a/j;->c(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4491
    iget-object v0, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4492
    invoke-static {p1}, Lcom/avast/a/a/a/a/j;->c(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    .line 4493
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4500
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4501
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/k;->b(J)Lcom/avast/a/a/a/a/k;

    .line 4503
    :cond_6
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4504
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/k;->b(Ljava/lang/String;)Lcom/avast/a/a/a/a/k;

    .line 4506
    :cond_7
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4507
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/k;->a(I)Lcom/avast/a/a/a/a/k;

    .line 4509
    :cond_8
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4510
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/j;->o()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/k;->a(Lcom/google/a/c;)Lcom/avast/a/a/a/a/k;

    goto/16 :goto_0

    .line 4485
    :cond_9
    invoke-direct {p0}, Lcom/avast/a/a/a/a/k;->m()V

    .line 4486
    iget-object v0, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    invoke-static {p1}, Lcom/avast/a/a/a/a/j;->b(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4495
    :cond_a
    invoke-direct {p0}, Lcom/avast/a/a/a/a/k;->n()V

    .line 4496
    iget-object v0, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    invoke-static {p1}, Lcom/avast/a/a/a/a/j;->c(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/a/a/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 4842
    if-nez p1, :cond_0

    .line 4843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4845
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4846
    iput-object p1, p0, Lcom/avast/a/a/a/a/k;->i:Lcom/google/a/c;

    .line 4848
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/k;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4528
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 4529
    sparse-switch v0, :sswitch_data_0

    .line 4534
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/a/k;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4536
    :sswitch_0
    return-object p0

    .line 4541
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4542
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/k;->b:J

    goto :goto_0

    .line 4546
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4547
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->c:Ljava/lang/Object;

    goto :goto_0

    .line 4551
    :sswitch_3
    invoke-direct {p0}, Lcom/avast/a/a/a/a/k;->m()V

    .line 4552
    iget-object v0, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->a(Lcom/google/a/c;)V

    goto :goto_0

    .line 4556
    :sswitch_4
    invoke-direct {p0}, Lcom/avast/a/a/a/a/k;->n()V

    .line 4557
    iget-object v0, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->a(Lcom/google/a/c;)V

    goto :goto_0

    .line 4561
    :sswitch_5
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4562
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/k;->f:J

    goto :goto_0

    .line 4566
    :sswitch_6
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4567
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->g:Ljava/lang/Object;

    goto :goto_0

    .line 4571
    :sswitch_7
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4572
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/a/k;->h:I

    goto :goto_0

    .line 4576
    :sswitch_8
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4577
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/k;->i:Lcom/google/a/c;

    goto :goto_0

    .line 4529
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 4623
    if-nez p1, :cond_0

    .line 4624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4626
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4627
    iput-object p1, p0, Lcom/avast/a/a/a/a/k;->c:Ljava/lang/Object;

    .line 4629
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 4366
    check-cast p1, Lcom/avast/a/a/a/a/j;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/a/k;->a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/a/j;
    .locals 1

    .prologue
    .line 4407
    invoke-static {}, Lcom/avast/a/a/a/a/j;->a()Lcom/avast/a/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/avast/a/a/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 4764
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4765
    iput-wide p1, p0, Lcom/avast/a/a/a/a/k;->f:J

    .line 4767
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 4792
    if-nez p1, :cond_0

    .line 4793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4795
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4796
    iput-object p1, p0, Lcom/avast/a/a/a/a/k;->g:Ljava/lang/Object;

    .line 4798
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4366
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/k;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/a/j;
    .locals 2

    .prologue
    .line 4411
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->d()Lcom/avast/a/a/a/a/j;

    move-result-object v0

    .line 4412
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/j;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4413
    invoke-static {v0}, Lcom/avast/a/a/a/a/k;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 4415
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4366
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/k;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4366
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->a()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/a/j;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 4429
    new-instance v2, Lcom/avast/a/a/a/a/j;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/a/j;-><init>(Lcom/avast/a/a/a/a/k;Lcom/avast/a/a/a/a/b;)V

    .line 4430
    iget v3, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4431
    const/4 v1, 0x0

    .line 4432
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    .line 4435
    :goto_0
    iget-wide v4, p0, Lcom/avast/a/a/a/a/k;->b:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/j;->a(Lcom/avast/a/a/a/a/j;J)J

    .line 4436
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 4437
    or-int/lit8 v0, v0, 0x2

    .line 4439
    :cond_0
    iget-object v1, p0, Lcom/avast/a/a/a/a/k;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/j;->a(Lcom/avast/a/a/a/a/j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4440
    iget v1, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 4441
    new-instance v1, Lcom/google/a/am;

    iget-object v4, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    invoke-direct {v1, v4}, Lcom/google/a/am;-><init>(Lcom/google/a/z;)V

    iput-object v1, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    .line 4443
    iget v1, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4445
    :cond_1
    iget-object v1, p0, Lcom/avast/a/a/a/a/k;->d:Lcom/google/a/z;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/j;->a(Lcom/avast/a/a/a/a/j;Lcom/google/a/z;)Lcom/google/a/z;

    .line 4446
    iget v1, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 4447
    new-instance v1, Lcom/google/a/am;

    iget-object v4, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    invoke-direct {v1, v4}, Lcom/google/a/am;-><init>(Lcom/google/a/z;)V

    iput-object v1, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    .line 4449
    iget v1, p0, Lcom/avast/a/a/a/a/k;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/avast/a/a/a/a/k;->a:I

    .line 4451
    :cond_2
    iget-object v1, p0, Lcom/avast/a/a/a/a/k;->e:Lcom/google/a/z;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/j;->b(Lcom/avast/a/a/a/a/j;Lcom/google/a/z;)Lcom/google/a/z;

    .line 4452
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 4453
    or-int/lit8 v0, v0, 0x4

    .line 4455
    :cond_3
    iget-wide v4, p0, Lcom/avast/a/a/a/a/k;->f:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/j;->b(Lcom/avast/a/a/a/a/j;J)J

    .line 4456
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 4457
    or-int/lit8 v0, v0, 0x8

    .line 4459
    :cond_4
    iget-object v1, p0, Lcom/avast/a/a/a/a/k;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/j;->b(Lcom/avast/a/a/a/a/j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4460
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 4461
    or-int/lit8 v0, v0, 0x10

    .line 4463
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/a/k;->h:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/j;->a(Lcom/avast/a/a/a/a/j;I)I

    .line 4464
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    .line 4465
    or-int/lit8 v0, v0, 0x20

    .line 4467
    :cond_6
    iget-object v1, p0, Lcom/avast/a/a/a/a/k;->i:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/j;->a(Lcom/avast/a/a/a/a/j;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4468
    invoke-static {v2, v0}, Lcom/avast/a/a/a/a/j;->b(Lcom/avast/a/a/a/a/j;I)I

    .line 4469
    return-object v2

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4589
    iget v1, p0, Lcom/avast/a/a/a/a/k;->a:I

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
    .line 4366
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->b()Lcom/avast/a/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 4366
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->a()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 4366
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->a()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 4366
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->c()Lcom/avast/a/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 4516
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/k;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4518
    const/4 v0, 0x0

    .line 4520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
