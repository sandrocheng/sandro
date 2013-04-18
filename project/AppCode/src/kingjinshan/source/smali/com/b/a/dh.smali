.class final Lcom/b/a/dh;
.super Ljava/lang/Object;
.source "FieldSet.java"


# static fields
.field private static final c:Lcom/b/a/dh;


# instance fields
.field private final a:Lcom/b/a/fq;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/b/a/dh;

    invoke-direct {v0}, Lcom/b/a/dh;-><init>()V

    sput-object v0, Lcom/b/a/dh;->c:Lcom/b/a/dh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/b/a/fq;->a(I)Lcom/b/a/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    .line 83
    invoke-virtual {p0}, Lcom/b/a/dh;->c()V

    .line 84
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/b/a/fq;->a(I)Lcom/b/a/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    .line 75
    return-void
.end method

.method private static a(Lcom/b/a/gq;ILjava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    invoke-static {p1}, Lcom/b/a/n;->p(I)I

    move-result v0

    .line 713
    sget-object v1, Lcom/b/a/gq;->j:Lcom/b/a/gq;

    if-ne p0, v1, :cond_0

    .line 714
    mul-int/lit8 v0, v0, 0x2

    .line 716
    :cond_0
    invoke-static {p0, p2}, Lcom/b/a/dh;->b(Lcom/b/a/gq;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/b/a/gq;Z)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 411
    if-eqz p1, :cond_0

    .line 412
    const/4 v0, 0x2

    .line 414
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/gq;->b()I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/b/a/dh;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/b/a/dh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/dh;-><init>(B)V

    return-object v0
.end method

.method public static a(Lcom/b/a/m;Lcom/b/a/gq;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 483
    sget-object v0, Lcom/b/a/di;->b:[I

    invoke-virtual {p1}, Lcom/b/a/gq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 513
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :pswitch_0
    invoke-virtual {p0}, Lcom/b/a/m;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    .line 485
    :pswitch_1
    invoke-virtual {p0}, Lcom/b/a/m;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 486
    :pswitch_2
    invoke-virtual {p0}, Lcom/b/a/m;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 487
    :pswitch_3
    invoke-virtual {p0}, Lcom/b/a/m;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 488
    :pswitch_4
    invoke-virtual {p0}, Lcom/b/a/m;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 489
    :pswitch_5
    invoke-virtual {p0}, Lcom/b/a/m;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_6
    invoke-virtual {p0}, Lcom/b/a/m;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 491
    :pswitch_7
    invoke-virtual {p0}, Lcom/b/a/m;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_8
    invoke-virtual {p0}, Lcom/b/a/m;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 493
    :pswitch_9
    invoke-virtual {p0}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v0

    goto :goto_0

    .line 494
    :pswitch_a
    invoke-virtual {p0}, Lcom/b/a/m;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 495
    :pswitch_b
    invoke-virtual {p0}, Lcom/b/a/m;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_c
    invoke-virtual {p0}, Lcom/b/a/m;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 497
    :pswitch_d
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 498
    :pswitch_e
    invoke-virtual {p0}, Lcom/b/a/m;->s()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 501
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Lcom/b/a/dj;Ljava/lang/Object;Lcom/b/a/n;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 627
    invoke-interface {p0}, Lcom/b/a/dj;->j()Lcom/b/a/gq;

    move-result-object v0

    .line 628
    invoke-interface {p0}, Lcom/b/a/dj;->e()I

    move-result v1

    .line 629
    invoke-interface {p0}, Lcom/b/a/dj;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    check-cast p1, Ljava/util/List;

    .line 631
    invoke-interface {p0}, Lcom/b/a/dj;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Lcom/b/a/n;->f(II)V

    .line 634
    const/4 v1, 0x0

    .line 635
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 636
    invoke-static {v0, v3}, Lcom/b/a/dh;->b(Lcom/b/a/gq;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {p2, v1}, Lcom/b/a/n;->q(I)V

    .line 640
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 641
    invoke-static {p2, v0, v2}, Lcom/b/a/dh;->a(Lcom/b/a/n;Lcom/b/a/gq;Ljava/lang/Object;)V

    goto :goto_1

    .line 644
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 645
    invoke-static {p2, v0, v1, v3}, Lcom/b/a/dh;->a(Lcom/b/a/n;Lcom/b/a/gq;ILjava/lang/Object;)V

    goto :goto_2

    .line 649
    :cond_2
    invoke-static {p2, v0, v1, p1}, Lcom/b/a/dh;->a(Lcom/b/a/n;Lcom/b/a/gq;ILjava/lang/Object;)V

    .line 651
    :cond_3
    return-void
.end method

.method private static a(Lcom/b/a/gq;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 327
    sget-object v1, Lcom/b/a/di;->a:[I

    invoke-virtual {p0}, Lcom/b/a/gq;->a()Lcom/b/a/gv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/gv;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 345
    :goto_0
    if-nez v0, :cond_1

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 329
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 330
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 331
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 332
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 333
    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 334
    :pswitch_6
    instance-of v0, p1, Lcom/b/a/i;

    goto :goto_0

    .line 337
    :pswitch_7
    instance-of v0, p1, Lcom/b/a/eq;

    goto :goto_0

    .line 341
    :pswitch_8
    instance-of v0, p1, Lcom/b/a/ex;

    goto :goto_0

    .line 356
    :cond_1
    return-void

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Lcom/b/a/n;Lcom/b/a/gq;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    sget-object v0, Lcom/b/a/gq;->j:Lcom/b/a/gq;

    if-ne p1, v0, :cond_0

    .line 576
    check-cast p3, Lcom/b/a/ex;

    invoke-virtual {p0, p2, p3}, Lcom/b/a/n;->a(ILcom/b/a/ex;)V

    .line 581
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/b/a/n;->f(II)V

    .line 579
    invoke-static {p0, p1, p3}, Lcom/b/a/dh;->a(Lcom/b/a/n;Lcom/b/a/gq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/b/a/n;Lcom/b/a/gq;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    sget-object v0, Lcom/b/a/di;->b:[I

    invoke-virtual {p1}, Lcom/b/a/gq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 620
    :goto_0
    return-void

    .line 598
    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->b(D)V

    goto :goto_0

    .line 599
    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->a(F)V

    goto :goto_0

    .line 600
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->b(J)V

    goto :goto_0

    .line 601
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->a(J)V

    goto :goto_0

    .line 602
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->c(I)V

    goto :goto_0

    .line 603
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->c(J)V

    goto :goto_0

    .line 604
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->d(I)V

    goto :goto_0

    .line 605
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->a(Z)V

    goto :goto_0

    .line 606
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/b/a/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :pswitch_9
    check-cast p2, Lcom/b/a/ex;

    invoke-interface {p2, p0}, Lcom/b/a/ex;->a(Lcom/b/a/n;)V

    goto :goto_0

    .line 608
    :pswitch_a
    check-cast p2, Lcom/b/a/ex;

    invoke-virtual {p0, p2}, Lcom/b/a/n;->b(Lcom/b/a/ex;)V

    goto :goto_0

    .line 609
    :pswitch_b
    check-cast p2, Lcom/b/a/i;

    invoke-virtual {p0, p2}, Lcom/b/a/n;->a(Lcom/b/a/i;)V

    goto :goto_0

    .line 610
    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->e(I)V

    goto :goto_0

    .line 611
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->g(I)V

    goto :goto_0

    .line 612
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->d(J)V

    goto/16 :goto_0

    .line 613
    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->h(I)V

    goto/16 :goto_0

    .line 614
    :pswitch_10
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->e(J)V

    goto/16 :goto_0

    .line 617
    :pswitch_11
    check-cast p2, Lcom/b/a/eq;

    invoke-interface {p2}, Lcom/b/a/eq;->H_()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->f(I)V

    goto/16 :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Ljava/util/Map$Entry;Lcom/b/a/n;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    .line 549
    invoke-interface {v0}, Lcom/b/a/dj;->g()Lcom/b/a/gv;

    move-result-object v1

    sget-object v2, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/b/a/dj;->m()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/b/a/dj;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    invoke-interface {v0}, Lcom/b/a/dj;->e()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ex;

    invoke-virtual {p1, v0, p0}, Lcom/b/a/n;->c(ILcom/b/a/ex;)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;Lcom/b/a/n;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map$Entry;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    .line 386
    invoke-interface {v0}, Lcom/b/a/dj;->g()Lcom/b/a/gv;

    move-result-object v1

    sget-object v2, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    if-ne v1, v2, :cond_2

    .line 387
    invoke-interface {v0}, Lcom/b/a/dj;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ex;

    .line 390
    invoke-interface {p0}, Lcom/b/a/ex;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 400
    :goto_0
    return v0

    .line 395
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ex;

    invoke-interface {p0}, Lcom/b/a/ex;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 396
    goto :goto_0

    .line 400
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lcom/b/a/gq;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 731
    sget-object v0, Lcom/b/a/di;->b:[I

    invoke-virtual {p0}, Lcom/b/a/gq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 757
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move v0, v3

    .line 753
    :goto_0
    return v0

    .line 735
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move v0, v2

    goto :goto_0

    .line 736
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/b/a/n;->i(J)I

    move-result v0

    goto :goto_0

    .line 737
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/b/a/n;->i(J)I

    move-result v0

    goto :goto_0

    .line 738
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->l(I)I

    move-result v0

    goto :goto_0

    .line 739
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move v0, v3

    goto :goto_0

    .line 740
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move v0, v2

    goto :goto_0

    .line 741
    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_0

    .line 742
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/b/a/n;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 743
    :pswitch_9
    check-cast p1, Lcom/b/a/ex;

    invoke-interface {p1}, Lcom/b/a/ex;->b()I

    move-result v0

    goto :goto_0

    .line 744
    :pswitch_a
    check-cast p1, Lcom/b/a/ex;

    invoke-static {p1}, Lcom/b/a/n;->d(Lcom/b/a/ex;)I

    move-result v0

    goto :goto_0

    .line 745
    :pswitch_b
    check-cast p1, Lcom/b/a/i;

    invoke-static {p1}, Lcom/b/a/n;->b(Lcom/b/a/i;)I

    move-result v0

    goto :goto_0

    .line 746
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->r(I)I

    move-result v0

    goto :goto_0

    .line 747
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move v0, v2

    goto :goto_0

    .line 748
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move v0, v3

    goto :goto_0

    .line 749
    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->s(I)I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->r(I)I

    move-result v0

    goto/16 :goto_0

    .line 750
    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/b/a/n;->j(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/b/a/n;->i(J)I

    move-result v0

    goto/16 :goto_0

    .line 753
    :pswitch_11
    check-cast p1, Lcom/b/a/eq;

    invoke-interface {p1}, Lcom/b/a/eq;->H_()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->l(I)I

    move-result v0

    goto/16 :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method public static b()Lcom/b/a/dh;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/b/a/dh;->c:Lcom/b/a/dh;

    return-object v0
.end method

.method private b(Ljava/util/Map$Entry;)V
    .locals 5
    .parameter

    .prologue
    .line 434
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/dj;

    .line 435
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 437
    invoke-interface {v1}, Lcom/b/a/dj;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v3, v1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 439
    if-nez v3, :cond_0

    .line 443
    iget-object v3, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    new-instance v4, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object p0, v0

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1, v4}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_0
    return-void

    .line 446
    :cond_0
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object p0, v0

    check-cast v2, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 448
    :cond_1
    invoke-interface {v1}, Lcom/b/a/dj;->g()Lcom/b/a/gv;

    move-result-object v3

    sget-object v4, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    if-ne v3, v4, :cond_3

    .line 449
    iget-object v3, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v3, v1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 450
    if-nez v3, :cond_2

    .line 451
    iget-object v3, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v3, v1, v2}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_2
    iget-object v4, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    move-object v0, v3

    check-cast v0, Lcom/b/a/ex;

    move-object p0, v0

    invoke-interface {p0}, Lcom/b/a/ex;->F()Lcom/b/a/ey;

    move-result-object v3

    check-cast v2, Lcom/b/a/ex;

    invoke-interface {v1, v3, v2}, Lcom/b/a/dj;->a(Lcom/b/a/ey;Lcom/b/a/ex;)Lcom/b/a/ey;

    move-result-object v2

    invoke-interface {v2}, Lcom/b/a/ey;->M()Lcom/b/a/ex;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 462
    :cond_3
    iget-object v3, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v3, v1, v2}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static c(Lcom/b/a/dj;Ljava/lang/Object;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 766
    invoke-interface {p0}, Lcom/b/a/dj;->j()Lcom/b/a/gq;

    move-result-object v0

    .line 767
    invoke-interface {p0}, Lcom/b/a/dj;->e()I

    move-result v1

    .line 768
    invoke-interface {p0}, Lcom/b/a/dj;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 769
    invoke-interface {p0}, Lcom/b/a/dj;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 772
    invoke-static {v0, v4}, Lcom/b/a/dh;->b(Lcom/b/a/gq;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 774
    :cond_0
    invoke-static {v1}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v3}, Lcom/b/a/n;->r(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 785
    :goto_1
    return v0

    .line 779
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 780
    invoke-static {v0, v1, v4}, Lcom/b/a/dh;->a(Lcom/b/a/gq;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_2
    move v0, v3

    .line 782
    goto :goto_1

    .line 785
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/b/a/dh;->a(Lcom/b/a/gq;ILjava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method private static c(Ljava/util/Map$Entry;)I
    .locals 3
    .parameter

    .prologue
    .line 688
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    .line 689
    invoke-interface {v0}, Lcom/b/a/dj;->g()Lcom/b/a/gv;

    move-result-object v1

    sget-object v2, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/b/a/dj;->m()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/b/a/dj;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    invoke-interface {v0}, Lcom/b/a/dj;->e()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ex;

    invoke-static {v0, p0}, Lcom/b/a/n;->f(ILcom/b/a/ex;)I

    move-result v0

    .line 694
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/dh;->c(Lcom/b/a/dj;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/b/a/dj;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-interface {p1}, Lcom/b/a/dj;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, p1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 258
    if-nez p0, :cond_1

    .line 259
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 261
    :cond_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/dh;)V
    .locals 2
    .parameter

    .prologue
    .line 422
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1}, Lcom/b/a/fq;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    iget-object v1, p1, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1, v0}, Lcom/b/a/fq;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/b/a/dh;->b(Ljava/util/Map$Entry;)V

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p1, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 427
    invoke-direct {p0, v0}, Lcom/b/a/dh;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 429
    :cond_1
    return-void
.end method

.method public final a(Lcom/b/a/dj;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-interface {p1}, Lcom/b/a/dj;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, p1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 279
    if-nez p0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 283
    :cond_1
    invoke-interface {p1}, Lcom/b/a/dj;->j()Lcom/b/a/gq;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Ljava/lang/Object;)V

    .line 284
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public final a(Lcom/b/a/dj;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-interface {p1}, Lcom/b/a/dj;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 209
    invoke-interface {p1}, Lcom/b/a/dj;->j()Lcom/b/a/gq;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-interface {p1}, Lcom/b/a/dj;->j()Lcom/b/a/gq;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Ljava/lang/Object;)V

    move-object v0, p2

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1, p1, v0}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    .line 520
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, v1}, Lcom/b/a/fq;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 523
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;Lcom/b/a/n;)V

    .line 520
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 527
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;Lcom/b/a/n;)V

    goto :goto_1

    .line 529
    :cond_1
    return-void
.end method

.method public final a(Lcom/b/a/dj;)Z
    .locals 2
    .parameter

    .prologue
    .line 173
    invoke-interface {p1}, Lcom/b/a/dj;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, p1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/b/a/dj;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, p1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/b/a/dj;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-interface {p1}, Lcom/b/a/dj;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    invoke-interface {p1}, Lcom/b/a/dj;->j()Lcom/b/a/gq;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Ljava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1, p1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 303
    if-nez v1, :cond_1

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    iget-object v2, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v2, p1, v1}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-void

    .line 307
    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0
.end method

.method public final b(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    .line 536
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1}, Lcom/b/a/fq;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1, v0}, Lcom/b/a/fq;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/b/a/dh;->a(Ljava/util/Map$Entry;Lcom/b/a/n;)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 541
    invoke-static {p0, p1}, Lcom/b/a/dh;->a(Ljava/util/Map$Entry;Lcom/b/a/n;)V

    goto :goto_1

    .line 543
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/b/a/dh;->b:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->a()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/dh;->b:Z

    goto :goto_0
.end method

.method public final c(Lcom/b/a/dj;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, p1}, Lcom/b/a/fq;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/b/a/dh;->e()Lcom/b/a/dh;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/b/a/dj;)I
    .locals 2
    .parameter

    .prologue
    .line 232
    invoke-interface {p1}, Lcom/b/a/dj;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, p1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 238
    if-nez p0, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/b/a/dh;->b:Z

    return v0
.end method

.method public final e()Lcom/b/a/dh;
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/b/a/dh;->a()Lcom/b/a/dh;

    move-result-object v1

    .line 132
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->c()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, v2}, Lcom/b/a/fq;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 134
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    .line 135
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    .line 140
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    goto :goto_1

    .line 142
    :cond_1
    return-object v1
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->clear()V

    .line 150
    return-void
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1}, Lcom/b/a/fq;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v1, v0}, Lcom/b/a/fq;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/dh;->a(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 379
    :goto_1
    return v0

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 375
    invoke-static {p0}, Lcom/b/a/dh;->a(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 376
    goto :goto_1

    .line 379
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final j()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 658
    move v1, v0

    move v2, v0

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0, v1}, Lcom/b/a/fq;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 662
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/b/a/dh;->c(Lcom/b/a/dj;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    .line 659
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 666
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dj;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/b/a/dh;->c(Lcom/b/a/dj;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    .line 668
    :cond_1
    return v2
.end method

.method public final k()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 675
    move v1, v0

    .line 676
    :goto_0
    iget-object v2, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v2}, Lcom/b/a/fq;->c()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v2, v0}, Lcom/b/a/fq;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/dh;->c(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/b/a/dh;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 681
    invoke-static {p0}, Lcom/b/a/dh;->c(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 683
    :cond_1
    return v1
.end method
