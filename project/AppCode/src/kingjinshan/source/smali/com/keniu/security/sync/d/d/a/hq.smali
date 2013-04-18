.class public final Lcom/keniu/security/sync/d/d/a/hq;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hr;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/gn;

.field private c:Lcom/b/a/fp;

.field private d:J

.field private e:J

.field private f:I

.field private g:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2516
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 2717
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2870
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2517
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->w()V

    .line 2518
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 2502
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hq;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2521
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 2717
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2870
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2522
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->w()V

    .line 2523
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1

    .prologue
    .line 2562
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->h()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/hp;
    .locals 2

    .prologue
    .line 2575
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->E()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    .line 2576
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hp;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2577
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 2580
    :cond_0
    return-object v0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/hp;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2584
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hp;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/hp;-><init>(Lcom/keniu/security/sync/d/d/a/hq;)V

    .line 2585
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2586
    const/4 v0, 0x0

    .line 2587
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_5

    move v3, v4

    .line 2590
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_3

    .line 2591
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hp;->a(Lcom/keniu/security/sync/d/d/a/hp;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    .line 2595
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 2596
    or-int/lit8 v0, v3, 0x2

    .line 2598
    :goto_2
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/hq;->d:J

    invoke-static {v1, v3, v4}, Lcom/keniu/security/sync/d/d/a/hp;->a(Lcom/keniu/security/sync/d/d/a/hp;J)J

    .line 2599
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2600
    or-int/lit8 v0, v0, 0x4

    .line 2602
    :cond_0
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/hq;->e:J

    invoke-static {v1, v3, v4}, Lcom/keniu/security/sync/d/d/a/hp;->b(Lcom/keniu/security/sync/d/d/a/hp;J)J

    .line 2603
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 2604
    or-int/lit8 v0, v0, 0x8

    .line 2606
    :cond_1
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/hq;->f:I

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hp;->a(Lcom/keniu/security/sync/d/d/a/hp;I)I

    .line 2607
    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 2608
    or-int/lit8 v0, v0, 0x10

    .line 2610
    :cond_2
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/hp;->a(Lcom/keniu/security/sync/d/d/a/hp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hp;->b(Lcom/keniu/security/sync/d/d/a/hp;I)I

    .line 2612
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->ab_()V

    .line 2613
    return-object v1

    .line 2593
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hp;->a(Lcom/keniu/security/sync/d/d/a/hp;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v3, v0

    goto :goto_0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2772
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2773
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2777
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2778
    return-object p0

    .line 2775
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/go;
    .locals 1

    .prologue
    .line 2781
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2782
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2783
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->V()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private V()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2796
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    .line 2801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2803
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private W()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 2

    .prologue
    .line 2821
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2822
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->d:J

    .line 2823
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2824
    return-object p0
.end method

.method private X()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 2

    .prologue
    .line 2842
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2843
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->e:J

    .line 2844
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2845
    return-object p0
.end method

.method private Y()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2863
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2864
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->f:I

    .line 2865
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2866
    return-object p0
.end method

.method private Z()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2894
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2895
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->h()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hp;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2896
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2897
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 2
    .parameter

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->E()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hp;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(J)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2815
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2816
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hq;->d:J

    .line 2817
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2818
    return-object p0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 2
    .parameter

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2746
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2747
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2751
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2752
    return-object p0

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2885
    if-nez p1, :cond_0

    .line 2886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2888
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2889
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2890
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2891
    return-object p0
.end method

.method private b(J)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2836
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2837
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hq;->e:J

    .line 2838
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2839
    return-object p0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 2
    .parameter

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2756
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2758
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2763
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2767
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2768
    return-object p0

    .line 2761
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0

    .line 2765
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2617
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/hp;

    if-eqz v0, :cond_0

    .line 2618
    check-cast p1, Lcom/keniu/security/sync/d/d/a/hp;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hp;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    .line 2621
    :goto_0
    return-object v0

    .line 2620
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 2621
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 2900
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2901
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2902
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2903
    return-void
.end method

.method static synthetic u()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2502
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hq;-><init>()V

    return-object v0
.end method

.method private static v()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2507
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 2525
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2526
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->V()Lcom/b/a/fp;

    .line 2528
    :cond_0
    return-void
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2530
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hq;-><init>()V

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 2534
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 2535
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2536
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2540
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2541
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->d:J

    .line 2542
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2543
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->e:J

    .line 2544
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2545
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->f:I

    .line 2546
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2547
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2548
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2549
    return-object p0

    .line 2538
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 2

    .prologue
    .line 2553
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hq;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->E()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hp;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2512
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2558
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->y()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->z()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2502
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->h()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2502
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->h()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->E()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2502
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->i()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->E()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2502
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->i()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 2502
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2502
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2857
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2858
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hq;->f:I

    .line 2859
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2860
    return-object p0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2732
    if-nez p1, :cond_0

    .line 2733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2735
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2736
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2740
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2741
    return-object p0

    .line 2738
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/hp;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 3
    .parameter

    .prologue
    .line 2626
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->h()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2643
    :goto_0
    return-object v0

    .line 2627
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2628
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2630
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2631
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->n()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->d:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2633
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2634
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->p()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->e:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2636
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2637
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hq;->a(I)Lcom/keniu/security/sync/d/d/a/hq;

    .line 2639
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2640
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->t()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2628
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 2640
    :cond_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    .line 2642
    :cond_8
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hp;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hq;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 2643
    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2647
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2655
    :goto_0
    return v0

    .line 2651
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2653
    goto :goto_0

    .line 2655
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->z()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2502
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->y()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2502
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2502
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->z()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->z()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2502
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->z()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2662
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 2666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 2667
    sparse-switch v1, :sswitch_data_0

    .line 2673
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2675
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hq;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2676
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    move-object v0, p0

    .line 2677
    :goto_1
    return-object v0

    .line 2669
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hq;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2670
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->af_()V

    move-object v0, p0

    .line 2671
    goto :goto_1

    .line 2682
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->Z()Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    .line 2683
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2684
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hq;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    .line 2686
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 2687
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;

    goto :goto_0

    .line 2691
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2692
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->d:J

    goto :goto_0

    .line 2696
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2697
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->e:J

    goto :goto_0

    .line 2701
    :sswitch_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2702
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->f:I

    goto :goto_0

    .line 2706
    :sswitch_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    .line 2707
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    goto :goto_0

    .line 2667
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->y()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->z()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->y()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/hp;
    .locals 2

    .prologue
    .line 2566
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hq;->E()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    .line 2567
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hp;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2568
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 2570
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2721
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2725
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2727
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    .line 2789
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 2809
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

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

.method public final n()J
    .locals 2

    .prologue
    .line 2812
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->d:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 2830
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

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

.method public final p()J
    .locals 2

    .prologue
    .line 2833
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->e:J

    return-wide v0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 2851
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 2854
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->f:I

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 2872
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2876
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2877
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2878
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hq;->g:Ljava/lang/Object;

    .line 2881
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
