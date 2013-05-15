.class final Lcom/google/a/i;
.super Ljava/lang/Object;
.source "FieldSet.java"


# static fields
.field private static final c:Lcom/google/a/i;


# instance fields
.field private final a:Lcom/google/a/ad;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/a/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/a/i;-><init>(Z)V

    sput-object v0, Lcom/google/a/i;->c:Lcom/google/a/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/a/ad;->a(I)Lcom/google/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    .line 75
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/a/ad;->a(I)Lcom/google/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    .line 83
    invoke-virtual {p0}, Lcom/google/a/i;->c()V

    .line 84
    return-void
.end method

.method private static a(Lcom/google/a/ar;ILjava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 711
    invoke-static {p1}, Lcom/google/a/e;->n(I)I

    move-result v0

    .line 712
    sget-object v1, Lcom/google/a/ar;->j:Lcom/google/a/ar;

    if-ne p0, v1, :cond_0

    .line 713
    mul-int/lit8 v0, v0, 0x2

    .line 715
    :cond_0
    invoke-static {p0, p2}, Lcom/google/a/i;->b(Lcom/google/a/ar;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/google/a/ar;Z)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    const/4 v0, 0x2

    .line 413
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/ar;->b()I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/google/a/i;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/a/i;

    invoke-direct {v0}, Lcom/google/a/i;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/a/d;Lcom/google/a/ar;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 482
    sget-object v0, Lcom/google/a/j;->b:[I

    invoke-virtual {p1}, Lcom/google/a/ar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 512
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/a/d;->c()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 484
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/a/d;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 485
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/a/d;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 486
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/a/d;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 487
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/a/d;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 488
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/a/d;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 489
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/a/d;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/a/d;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 491
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/a/d;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    goto :goto_0

    .line 493
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/a/d;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 494
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/a/d;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 495
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/a/d;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/a/d;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 497
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/a/d;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 500
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
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

.method private static a(Lcom/google/a/ar;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 326
    sget-object v1, Lcom/google/a/j;->a:[I

    invoke-virtual {p0}, Lcom/google/a/ar;->a()Lcom/google/a/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/aw;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 344
    :goto_0
    if-nez v0, :cond_1

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 328
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 329
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 330
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 331
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 332
    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 333
    :pswitch_6
    instance-of v0, p1, Lcom/google/a/c;

    goto :goto_0

    .line 336
    :pswitch_7
    instance-of v0, p1, Lcom/google/a/v;

    goto :goto_0

    .line 340
    :pswitch_8
    instance-of v0, p1, Lcom/google/a/aa;

    goto :goto_0

    .line 355
    :cond_1
    return-void

    .line 326
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

.method private static a(Lcom/google/a/e;Lcom/google/a/ar;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    sget-object v0, Lcom/google/a/ar;->j:Lcom/google/a/ar;

    if-ne p1, v0, :cond_0

    .line 575
    check-cast p3, Lcom/google/a/aa;

    invoke-virtual {p0, p2, p3}, Lcom/google/a/e;->a(ILcom/google/a/aa;)V

    .line 580
    :goto_0
    return-void

    .line 577
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/a/i;->a(Lcom/google/a/ar;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/a/e;->i(II)V

    .line 578
    invoke-static {p0, p1, p3}, Lcom/google/a/i;->a(Lcom/google/a/e;Lcom/google/a/ar;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/a/e;Lcom/google/a/ar;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    sget-object v0, Lcom/google/a/j;->b:[I

    invoke-virtual {p1}, Lcom/google/a/ar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 619
    :goto_0
    return-void

    .line 597
    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->a(D)V

    goto :goto_0

    .line 598
    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->a(F)V

    goto :goto_0

    .line 599
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->b(J)V

    goto :goto_0

    .line 600
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->a(J)V

    goto :goto_0

    .line 601
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->a(I)V

    goto :goto_0

    .line 602
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->c(J)V

    goto :goto_0

    .line 603
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->b(I)V

    goto :goto_0

    .line 604
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->a(Z)V

    goto :goto_0

    .line 605
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :pswitch_9
    check-cast p2, Lcom/google/a/aa;

    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(Lcom/google/a/aa;)V

    goto :goto_0

    .line 607
    :pswitch_a
    check-cast p2, Lcom/google/a/aa;

    invoke-virtual {p0, p2}, Lcom/google/a/e;->b(Lcom/google/a/aa;)V

    goto :goto_0

    .line 608
    :pswitch_b
    check-cast p2, Lcom/google/a/c;

    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(Lcom/google/a/c;)V

    goto :goto_0

    .line 609
    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->c(I)V

    goto :goto_0

    .line 610
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->e(I)V

    goto :goto_0

    .line 611
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->d(J)V

    goto/16 :goto_0

    .line 612
    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->f(I)V

    goto/16 :goto_0

    .line 613
    :pswitch_10
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->e(J)V

    goto/16 :goto_0

    .line 616
    :pswitch_11
    check-cast p2, Lcom/google/a/v;

    invoke-interface {p2}, Lcom/google/a/v;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->d(I)V

    goto/16 :goto_0

    .line 596
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

.method public static a(Lcom/google/a/k;Ljava/lang/Object;Lcom/google/a/e;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    invoke-interface {p0}, Lcom/google/a/k;->b()Lcom/google/a/ar;

    move-result-object v1

    .line 627
    invoke-interface {p0}, Lcom/google/a/k;->a()I

    move-result v0

    .line 628
    invoke-interface {p0}, Lcom/google/a/k;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    check-cast p1, Ljava/util/List;

    .line 630
    invoke-interface {p0}, Lcom/google/a/k;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 631
    const/4 v2, 0x2

    invoke-virtual {p2, v0, v2}, Lcom/google/a/e;->i(II)V

    .line 633
    const/4 v0, 0x0

    .line 634
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 635
    invoke-static {v1, v3}, Lcom/google/a/i;->b(Lcom/google/a/ar;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/a/e;->o(I)V

    .line 639
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 640
    invoke-static {p2, v1, v2}, Lcom/google/a/i;->a(Lcom/google/a/e;Lcom/google/a/ar;Ljava/lang/Object;)V

    goto :goto_1

    .line 643
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 644
    invoke-static {p2, v1, v0, v3}, Lcom/google/a/i;->a(Lcom/google/a/e;Lcom/google/a/ar;ILjava/lang/Object;)V

    goto :goto_2

    .line 648
    :cond_2
    invoke-static {p2, v1, v0, p1}, Lcom/google/a/i;->a(Lcom/google/a/e;Lcom/google/a/ar;ILjava/lang/Object;)V

    .line 650
    :cond_3
    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    .line 385
    invoke-interface {v0}, Lcom/google/a/k;->c()Lcom/google/a/aw;

    move-result-object v2

    sget-object v3, Lcom/google/a/aw;->i:Lcom/google/a/aw;

    if-ne v2, v3, :cond_2

    .line 386
    invoke-interface {v0}, Lcom/google/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    .line 389
    invoke-interface {v0}, Lcom/google/a/aa;->v()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 399
    :goto_0
    return v0

    .line 394
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-interface {v0}, Lcom/google/a/aa;->v()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 395
    goto :goto_0

    .line 399
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lcom/google/a/ar;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 730
    sget-object v0, Lcom/google/a/j;->b:[I

    invoke-virtual {p0}, Lcom/google/a/ar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 756
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/a/e;->b(D)I

    move-result v0

    .line 752
    :goto_0
    return v0

    .line 734
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->b(F)I

    move-result v0

    goto :goto_0

    .line 735
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/a/e;->g(J)I

    move-result v0

    goto :goto_0

    .line 736
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/a/e;->f(J)I

    move-result v0

    goto :goto_0

    .line 737
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->g(I)I

    move-result v0

    goto :goto_0

    .line 738
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/a/e;->h(J)I

    move-result v0

    goto :goto_0

    .line 739
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->h(I)I

    move-result v0

    goto :goto_0

    .line 740
    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->b(Z)I

    move-result v0

    goto :goto_0

    .line 741
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/a/e;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 742
    :pswitch_9
    check-cast p1, Lcom/google/a/aa;

    invoke-static {p1}, Lcom/google/a/e;->c(Lcom/google/a/aa;)I

    move-result v0

    goto :goto_0

    .line 743
    :pswitch_a
    check-cast p1, Lcom/google/a/aa;

    invoke-static {p1}, Lcom/google/a/e;->d(Lcom/google/a/aa;)I

    move-result v0

    goto :goto_0

    .line 744
    :pswitch_b
    check-cast p1, Lcom/google/a/c;

    invoke-static {p1}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v0

    goto :goto_0

    .line 745
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->i(I)I

    move-result v0

    goto :goto_0

    .line 746
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->k(I)I

    move-result v0

    goto :goto_0

    .line 747
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/a/e;->i(J)I

    move-result v0

    goto/16 :goto_0

    .line 748
    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->l(I)I

    move-result v0

    goto/16 :goto_0

    .line 749
    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/a/e;->j(J)I

    move-result v0

    goto/16 :goto_0

    .line 752
    :pswitch_11
    check-cast p1, Lcom/google/a/v;

    invoke-interface {p1}, Lcom/google/a/v;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->j(I)I

    move-result v0

    goto/16 :goto_0

    .line 730
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

.method public static b()Lcom/google/a/i;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/a/i;->c:Lcom/google/a/i;

    return-object v0
.end method

.method private b(Ljava/util/Map$Entry;)V
    .locals 4
    .parameter

    .prologue
    .line 433
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    .line 434
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 436
    invoke-interface {v0}, Lcom/google/a/k;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v2, v0}, Lcom/google/a/ad;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    if-nez v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :goto_0
    return-void

    :cond_0
    move-object v0, v2

    .line 445
    check-cast v0, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 447
    :cond_1
    invoke-interface {v0}, Lcom/google/a/k;->c()Lcom/google/a/aw;

    move-result-object v2

    sget-object v3, Lcom/google/a/aw;->i:Lcom/google/a/aw;

    if-ne v2, v3, :cond_3

    .line 448
    iget-object v2, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v2, v0}, Lcom/google/a/ad;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 449
    if-nez v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v2, v0, v1}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 453
    :cond_2
    iget-object v3, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    check-cast v2, Lcom/google/a/aa;

    invoke-interface {v2}, Lcom/google/a/aa;->A()Lcom/google/a/ab;

    move-result-object v2

    check-cast v1, Lcom/google/a/aa;

    invoke-interface {v0, v2, v1}, Lcom/google/a/k;->a(Lcom/google/a/ab;Lcom/google/a/aa;)Lcom/google/a/ab;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/ab;->j()Lcom/google/a/aa;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 461
    :cond_3
    iget-object v2, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v2, v0, v1}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static c(Lcom/google/a/k;Ljava/lang/Object;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 765
    invoke-interface {p0}, Lcom/google/a/k;->b()Lcom/google/a/ar;

    move-result-object v1

    .line 766
    invoke-interface {p0}, Lcom/google/a/k;->a()I

    move-result v2

    .line 767
    invoke-interface {p0}, Lcom/google/a/k;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    invoke-interface {p0}, Lcom/google/a/k;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 770
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 771
    invoke-static {v1, v4}, Lcom/google/a/i;->b(Lcom/google/a/ar;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {v2}, Lcom/google/a/e;->n(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v0}, Lcom/google/a/e;->p(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 784
    :cond_1
    :goto_1
    return v0

    .line 778
    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 779
    invoke-static {v1, v2, v4}, Lcom/google/a/i;->a(Lcom/google/a/ar;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 784
    :cond_3
    invoke-static {v1, v2, p1}, Lcom/google/a/i;->a(Lcom/google/a/ar;ILjava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/google/a/k;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0, p1}, Lcom/google/a/ad;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/i;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v1}, Lcom/google/a/ad;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 422
    iget-object v1, p1, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v1, v0}, Lcom/google/a/ad;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/a/i;->b(Ljava/util/Map$Entry;)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p1, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->d()Ljava/lang/Iterable;

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

    .line 426
    invoke-direct {p0, v0}, Lcom/google/a/i;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 428
    :cond_1
    return-void
.end method

.method public a(Lcom/google/a/k;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-interface {p1}, Lcom/google/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 208
    invoke-interface {p1}, Lcom/google/a/k;->b()Lcom/google/a/ar;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/a/i;->a(Lcom/google/a/ar;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 215
    :goto_1
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void

    .line 212
    :cond_2
    invoke-interface {p1}, Lcom/google/a/k;->b()Lcom/google/a/ar;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/a/i;->a(Lcom/google/a/ar;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Lcom/google/a/k;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-interface {p1}, Lcom/google/a/k;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    invoke-interface {p1}, Lcom/google/a/k;->b()Lcom/google/a/ar;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/a/i;->a(Lcom/google/a/ar;Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0, p1}, Lcom/google/a/ad;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    iget-object v1, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v1, p1, v0}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    return-void

    .line 306
    :cond_1
    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/a/i;->b:Z

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->a()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/i;->b:Z

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/a/i;->d()Lcom/google/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/a/i;
    .locals 4

    .prologue
    .line 130
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v2

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0, v1}, Lcom/google/a/ad;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 133
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    .line 134
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/a/i;->a(Lcom/google/a/k;Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/k;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/a/i;->a(Lcom/google/a/k;Ljava/lang/Object;)V

    goto :goto_1

    .line 141
    :cond_1
    return-object v2
.end method

.method public e()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 367
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v2}, Lcom/google/a/ad;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v2, v0}, Lcom/google/a/ad;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/a/i;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    :goto_1
    return v1

    .line 367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 374
    invoke-direct {p0, v0}, Lcom/google/a/i;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 378
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public g()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 657
    move v1, v0

    move v2, v0

    .line 658
    :goto_0
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0, v1}, Lcom/google/a/ad;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 661
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/a/i;->c(Lcom/google/a/k;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 658
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/google/a/i;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 665
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/i;->c(Lcom/google/a/k;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 667
    :cond_1
    return v2
.end method
