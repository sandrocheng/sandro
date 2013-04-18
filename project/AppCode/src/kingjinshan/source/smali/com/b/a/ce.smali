.class public final Lcom/b/a/ce;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/cf;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14481
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 14627
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14482
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 14483
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 14467
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ce;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14486
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 14627
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14487
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 14488
    return-void
.end method

.method static synthetic a(Lcom/b/a/ce;)Lcom/b/a/cd;
    .locals 2
    .parameter

    .prologue
    .line 14467
    invoke-virtual {p0}, Lcom/b/a/ce;->m()Lcom/b/a/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/ce;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/ce;
    .locals 1
    .parameter

    .prologue
    .line 14642
    if-nez p1, :cond_0

    .line 14643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14645
    :cond_0
    iget v0, p0, Lcom/b/a/ce;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ce;->a:I

    .line 14646
    iput-object p1, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14647
    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    .line 14648
    return-object p0
.end method

.method private a(Z)Lcom/b/a/ce;
    .locals 1
    .parameter

    .prologue
    .line 14671
    iget v0, p0, Lcom/b/a/ce;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/ce;->a:I

    .line 14672
    iput-boolean p1, p0, Lcom/b/a/ce;->c:Z

    .line 14673
    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    .line 14674
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/ce;
    .locals 1
    .parameter

    .prologue
    .line 14555
    instance-of v0, p1, Lcom/b/a/cd;

    if-eqz v0, :cond_0

    .line 14556
    check-cast p1, Lcom/b/a/cd;

    invoke-virtual {p0, p1}, Lcom/b/a/ce;->a(Lcom/b/a/cd;)Lcom/b/a/ce;

    move-result-object v0

    .line 14559
    :goto_0
    return-object v0

    .line 14558
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 14559
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 14657
    iget v0, p0, Lcom/b/a/ce;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ce;->a:I

    .line 14658
    iput-object p1, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14659
    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    .line 14660
    return-void
.end method

.method static synthetic n()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14467
    new-instance v0, Lcom/b/a/ce;

    invoke-direct {v0}, Lcom/b/a/ce;-><init>()V

    return-object v0
.end method

.method private static o()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 14472
    invoke-static {}, Lcom/b/a/p;->J()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static p()V
    .locals 1

    .prologue
    .line 14490
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 14492
    return-void
.end method

.method private static q()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14494
    new-instance v0, Lcom/b/a/ce;

    invoke-direct {v0}, Lcom/b/a/ce;-><init>()V

    return-object v0
.end method

.method private r()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14498
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 14499
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14500
    iget v0, p0, Lcom/b/a/ce;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ce;->a:I

    .line 14501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ce;->c:Z

    .line 14502
    iget v0, p0, Lcom/b/a/ce;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ce;->a:I

    .line 14503
    return-object p0
.end method

.method private s()Lcom/b/a/ce;
    .locals 2

    .prologue
    .line 14507
    new-instance v0, Lcom/b/a/ce;

    invoke-direct {v0}, Lcom/b/a/ce;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/ce;->m()Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ce;->a(Lcom/b/a/cd;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/b/a/cd;
    .locals 1

    .prologue
    .line 14516
    invoke-static {}, Lcom/b/a/cd;->e()Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/b/a/cd;
    .locals 2

    .prologue
    .line 14529
    invoke-virtual {p0}, Lcom/b/a/ce;->m()Lcom/b/a/cd;

    move-result-object v0

    .line 14530
    invoke-virtual {v0}, Lcom/b/a/cd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14531
    invoke-static {v0}, Lcom/b/a/ce;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 14534
    :cond_0
    return-object v0
.end method

.method private v()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14651
    iget v0, p0, Lcom/b/a/ce;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ce;->a:I

    .line 14652
    invoke-static {}, Lcom/b/a/cd;->e()Lcom/b/a/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cd;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14653
    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    .line 14654
    return-object p0
.end method

.method private w()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14677
    iget v0, p0, Lcom/b/a/ce;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ce;->a:I

    .line 14678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ce;->c:Z

    .line 14679
    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    .line 14680
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 14477
    invoke-static {}, Lcom/b/a/p;->K()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 14512
    invoke-static {}, Lcom/b/a/cd;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->r()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->s()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final G_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14629
    iget v0, p0, Lcom/b/a/ce;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14467
    invoke-static {}, Lcom/b/a/cd;->e()Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14467
    invoke-static {}, Lcom/b/a/cd;->e()Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14467
    invoke-virtual {p0}, Lcom/b/a/ce;->m()Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14467
    invoke-virtual {p0}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14467
    invoke-virtual {p0}, Lcom/b/a/ce;->m()Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14467
    invoke-virtual {p0}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 14467
    invoke-direct {p0, p1}, Lcom/b/a/ce;->d(Lcom/b/a/ev;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14467
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ce;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/cd;)Lcom/b/a/ce;
    .locals 2
    .parameter

    .prologue
    .line 14564
    invoke-static {}, Lcom/b/a/cd;->e()Lcom/b/a/cd;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 14572
    :goto_0
    return-object v0

    .line 14565
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/cd;->G_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14566
    invoke-virtual {p1}, Lcom/b/a/cd;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/ce;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ce;->a:I

    iput-object v0, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    .line 14568
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/cd;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14569
    invoke-virtual {p1}, Lcom/b/a/cd;->k()Z

    move-result v0

    iget v1, p0, Lcom/b/a/ce;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ce;->a:I

    iput-boolean v0, p0, Lcom/b/a/ce;->c:Z

    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    .line 14571
    :cond_3
    invoke-virtual {p1}, Lcom/b/a/cd;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ce;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 14572
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14576
    invoke-virtual {p0}, Lcom/b/a/ce;->G_()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 14584
    :goto_0
    return v0

    .line 14580
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/ce;->j()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 14582
    goto :goto_0

    .line 14584
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->s()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14467
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ce;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->r()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 14467
    invoke-direct {p0, p1}, Lcom/b/a/ce;->d(Lcom/b/a/ev;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14467
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ce;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->s()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->s()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14467
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ce;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ce;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14591
    invoke-virtual {p0}, Lcom/b/a/ce;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 14595
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 14596
    sparse-switch v1, :sswitch_data_0

    .line 14602
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/ce;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14604
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ce;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 14605
    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    move-object v0, p0

    .line 14606
    :goto_1
    return-object v0

    .line 14598
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ce;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 14599
    invoke-virtual {p0}, Lcom/b/a/ce;->af_()V

    move-object v0, p0

    .line 14600
    goto :goto_1

    .line 14611
    :sswitch_1
    iget v1, p0, Lcom/b/a/ce;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ce;->a:I

    .line 14612
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    goto :goto_0

    .line 14616
    :sswitch_2
    iget v1, p0, Lcom/b/a/ce;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ce;->a:I

    .line 14617
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/ce;->c:Z

    goto :goto_0

    .line 14596
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->s()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->r()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->s()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14467
    invoke-direct {p0}, Lcom/b/a/ce;->r()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14632
    iget-object v0, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14633
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14634
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 14635
    iput-object v0, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    .line 14638
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 14665
    iget v0, p0, Lcom/b/a/ce;->a:I

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

.method public final k()Z
    .locals 1

    .prologue
    .line 14668
    iget-boolean v0, p0, Lcom/b/a/ce;->c:Z

    return v0
.end method

.method public final l()Lcom/b/a/cd;
    .locals 2

    .prologue
    .line 14520
    invoke-virtual {p0}, Lcom/b/a/ce;->m()Lcom/b/a/cd;

    move-result-object v0

    .line 14521
    invoke-virtual {v0}, Lcom/b/a/cd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14522
    invoke-static {v0}, Lcom/b/a/ce;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 14524
    :cond_0
    return-object v0
.end method

.method public final m()Lcom/b/a/cd;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 14538
    new-instance v0, Lcom/b/a/cd;

    invoke-direct {v0, p0}, Lcom/b/a/cd;-><init>(Lcom/b/a/ce;)V

    .line 14539
    iget v1, p0, Lcom/b/a/ce;->a:I

    .line 14540
    const/4 v2, 0x0

    .line 14541
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 14544
    :cond_0
    iget-object v3, p0, Lcom/b/a/ce;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/b/a/cd;->a(Lcom/b/a/cd;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14545
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 14546
    or-int/lit8 v1, v2, 0x2

    .line 14548
    :goto_0
    iget-boolean v2, p0, Lcom/b/a/ce;->c:Z

    invoke-static {v0, v2}, Lcom/b/a/cd;->a(Lcom/b/a/cd;Z)Z

    .line 14549
    invoke-static {v0, v1}, Lcom/b/a/cd;->a(Lcom/b/a/cd;I)I

    .line 14550
    invoke-virtual {p0}, Lcom/b/a/ce;->ab_()V

    .line 14551
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
