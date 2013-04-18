.class public final Lcom/keniu/security/sync/d/d/a/kd;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ke;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8424
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 8588
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8624
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8660
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8425
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->p()Z

    .line 8426
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 8410
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/kd;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8429
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 8588
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8624
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8660
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8430
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->p()Z

    .line 8431
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8684
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8685
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->h()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kc;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8686
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8687
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 2
    .parameter

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->x()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kd;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1
    .parameter

    .prologue
    .line 8603
    if-nez p1, :cond_0

    .line 8604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8606
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8607
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8608
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8609
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1
    .parameter

    .prologue
    .line 8639
    if-nez p1, :cond_0

    .line 8640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8642
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8643
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8644
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8645
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1
    .parameter

    .prologue
    .line 8675
    if-nez p1, :cond_0

    .line 8676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8678
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8679
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8680
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8681
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1
    .parameter

    .prologue
    .line 8504
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/kc;

    if-eqz v0, :cond_0

    .line 8505
    check-cast p1, Lcom/keniu/security/sync/d/d/a/kc;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kc;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    .line 8508
    :goto_0
    return-object v0

    .line 8507
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 8508
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 8618
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8619
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8620
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8621
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 8654
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8655
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8656
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8657
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 8690
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8691
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8692
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8693
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8410
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kd;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8415
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->B()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static q()V
    .locals 0

    .prologue
    .line 8433
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->p()Z

    .line 8435
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8437
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kd;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8441
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 8442
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8443
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8444
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8445
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8446
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8447
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8448
    return-object p0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 2

    .prologue
    .line 8452
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kd;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->x()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kc;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1

    .prologue
    .line 8461
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->h()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/kc;
    .locals 2

    .prologue
    .line 8465
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->x()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    .line 8466
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8467
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kd;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 8469
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/kc;
    .locals 2

    .prologue
    .line 8474
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->x()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    .line 8475
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8476
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kd;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 8479
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/kc;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8483
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kc;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/kc;-><init>(Lcom/keniu/security/sync/d/d/a/kd;)V

    .line 8484
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8485
    const/4 v2, 0x0

    .line 8486
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 8489
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/kc;->a(Lcom/keniu/security/sync/d/d/a/kc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8490
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8491
    or-int/lit8 v2, v2, 0x2

    .line 8493
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/kc;->b(Lcom/keniu/security/sync/d/d/a/kc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8494
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 8495
    or-int/lit8 v1, v2, 0x4

    .line 8497
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/kc;->c(Lcom/keniu/security/sync/d/d/a/kc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8498
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/kc;->a(Lcom/keniu/security/sync/d/d/a/kc;I)I

    .line 8499
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->ab_()V

    .line 8500
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8612
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8613
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->h()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kc;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8614
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8615
    return-object p0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8648
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8649
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->h()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kc;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8650
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8651
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 8420
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->C()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8457
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->s()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->t()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8410
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->h()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8410
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->h()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->x()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->v()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->x()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->v()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 8410
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8410
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/kc;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 2
    .parameter

    .prologue
    .line 8513
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kc;->h()Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 8524
    :goto_0
    return-object v0

    .line 8514
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kc;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8515
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kc;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8517
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kc;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8518
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kc;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8520
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kc;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8521
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kc;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    .line 8523
    :cond_6
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/kd;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 8524
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8528
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 8540
    :goto_0
    return v0

    .line 8532
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 8534
    goto :goto_0

    .line 8536
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->n()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 8538
    goto :goto_0

    .line 8540
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->t()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8410
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->s()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 8410
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8410
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->t()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->t()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8410
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->t()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8547
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 8551
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 8552
    sparse-switch v1, :sswitch_data_0

    .line 8558
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8560
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/kd;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 8561
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    move-object v0, p0

    .line 8562
    :goto_1
    return-object v0

    .line 8554
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/kd;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 8555
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kd;->af_()V

    move-object v0, p0

    .line 8556
    goto :goto_1

    .line 8567
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8568
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    goto :goto_0

    .line 8572
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8573
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    goto :goto_0

    .line 8577
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    .line 8578
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    goto :goto_0

    .line 8552
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->s()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->t()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kd;->s()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8590
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8593
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8594
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8595
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 8596
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->b:Ljava/lang/Object;

    .line 8599
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 8626
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

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

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8629
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8630
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8631
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 8632
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->c:Ljava/lang/Object;

    .line 8635
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 8662
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->a:I

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

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8665
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8666
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8667
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 8668
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kd;->d:Ljava/lang/Object;

    .line 8671
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
