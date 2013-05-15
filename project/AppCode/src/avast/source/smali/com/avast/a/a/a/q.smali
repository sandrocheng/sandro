.class public final Lcom/avast/a/a/a/q;
.super Lcom/google/a/n;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/r;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/avast/a/a/a/a/ag;

.field private f:Lcom/avast/a/a/a/a/ag;

.field private g:Lcom/avast/a/a/a/a/ag;

.field private h:Lcom/avast/a/a/a/a/ag;

.field private i:Lcom/avast/a/a/a/a/ag;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/avast/a/a/a/a/c;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/avast/a/a/a/a/w;

.field private x:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5508
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 6003
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/q;->e:Lcom/avast/a/a/a/a/ag;

    .line 6027
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/q;->f:Lcom/avast/a/a/a/a/ag;

    .line 6051
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/q;->g:Lcom/avast/a/a/a/a/ag;

    .line 6075
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/q;->h:Lcom/avast/a/a/a/a/ag;

    .line 6099
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/q;->i:Lcom/avast/a/a/a/a/ag;

    .line 6144
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/q;->k:Ljava/lang/Object;

    .line 6306
    sget-object v0, Lcom/avast/a/a/a/a/c;->a:Lcom/avast/a/a/a/a/c;

    iput-object v0, p0, Lcom/avast/a/a/a/q;->r:Lcom/avast/a/a/a/a/c;

    .line 6414
    sget-object v0, Lcom/avast/a/a/a/a/w;->a:Lcom/avast/a/a/a/a/w;

    iput-object v0, p0, Lcom/avast/a/a/a/q;->w:Lcom/avast/a/a/a/a/w;

    .line 5509
    invoke-direct {p0}, Lcom/avast/a/a/a/q;->f()V

    .line 5510
    return-void
.end method

.method static synthetic e()Lcom/avast/a/a/a/q;
    .locals 1

    .prologue
    .line 5503
    invoke-static {}, Lcom/avast/a/a/a/q;->k()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 5513
    return-void
.end method

.method private static k()Lcom/avast/a/a/a/q;
    .locals 1

    .prologue
    .line 5515
    new-instance v0, Lcom/avast/a/a/a/q;

    invoke-direct {v0}, Lcom/avast/a/a/a/q;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/q;
    .locals 2

    .prologue
    .line 5570
    invoke-static {}, Lcom/avast/a/a/a/q;->k()Lcom/avast/a/a/a/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/q;->d()Lcom/avast/a/a/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/q;->a(Lcom/avast/a/a/a/p;)Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6011
    if-nez p1, :cond_0

    .line 6012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6014
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6015
    iput-object p1, p0, Lcom/avast/a/a/a/q;->e:Lcom/avast/a/a/a/a/ag;

    .line 6017
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/c;)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6314
    if-nez p1, :cond_0

    .line 6315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6317
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6318
    iput-object p1, p0, Lcom/avast/a/a/a/q;->r:Lcom/avast/a/a/a/a/c;

    .line 6320
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/w;)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6422
    if-nez p1, :cond_0

    .line 6423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6425
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6426
    iput-object p1, p0, Lcom/avast/a/a/a/q;->w:Lcom/avast/a/a/a/a/w;

    .line 6428
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/p;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 5696
    invoke-static {}, Lcom/avast/a/a/a/p;->a()Lcom/avast/a/a/a/p;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5766
    :cond_0
    :goto_0
    return-object p0

    .line 5697
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5698
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->a(Z)Lcom/avast/a/a/a/q;

    .line 5700
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5701
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->b(Z)Lcom/avast/a/a/a/q;

    .line 5703
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5704
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->c(Z)Lcom/avast/a/a/a/q;

    .line 5706
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5707
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->i()Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->a(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;

    .line 5709
    :cond_5
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5710
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->k()Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->b(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;

    .line 5712
    :cond_6
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5713
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->m()Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->c(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;

    .line 5715
    :cond_7
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5716
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->o()Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->d(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;

    .line 5718
    :cond_8
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5719
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->q()Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->e(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;

    .line 5721
    :cond_9
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5722
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->d(Z)Lcom/avast/a/a/a/q;

    .line 5724
    :cond_a
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5725
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->a(Ljava/lang/String;)Lcom/avast/a/a/a/q;

    .line 5727
    :cond_b
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5728
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->y()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->e(Z)Lcom/avast/a/a/a/q;

    .line 5730
    :cond_c
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->z()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5731
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->C()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->f(Z)Lcom/avast/a/a/a/q;

    .line 5733
    :cond_d
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->D()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5734
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->E()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->g(Z)Lcom/avast/a/a/a/q;

    .line 5736
    :cond_e
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->F()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5737
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->G()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->h(Z)Lcom/avast/a/a/a/q;

    .line 5739
    :cond_f
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->H()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5740
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->I()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->i(Z)Lcom/avast/a/a/a/q;

    .line 5742
    :cond_10
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->J()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5743
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->K()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->j(Z)Lcom/avast/a/a/a/q;

    .line 5745
    :cond_11
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->L()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5746
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->M()Lcom/avast/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->a(Lcom/avast/a/a/a/a/c;)Lcom/avast/a/a/a/q;

    .line 5748
    :cond_12
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->N()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5749
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->O()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->k(Z)Lcom/avast/a/a/a/q;

    .line 5751
    :cond_13
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->P()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5752
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->Q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->l(Z)Lcom/avast/a/a/a/q;

    .line 5754
    :cond_14
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->R()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5755
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->S()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->m(Z)Lcom/avast/a/a/a/q;

    .line 5757
    :cond_15
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->T()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5758
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->U()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->n(Z)Lcom/avast/a/a/a/q;

    .line 5760
    :cond_16
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->V()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5761
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->W()Lcom/avast/a/a/a/a/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->a(Lcom/avast/a/a/a/a/w;)Lcom/avast/a/a/a/q;

    .line 5763
    :cond_17
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5764
    invoke-virtual {p1}, Lcom/avast/a/a/a/p;->Y()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/q;->o(Z)Lcom/avast/a/a/a/q;

    goto/16 :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/q;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 5778
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 5779
    sparse-switch v0, :sswitch_data_0

    .line 5784
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/q;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5786
    :sswitch_0
    return-object p0

    .line 5791
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5792
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->b:Z

    goto :goto_0

    .line 5796
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5797
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->c:Z

    goto :goto_0

    .line 5801
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5802
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->d:Z

    goto :goto_0

    .line 5806
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5807
    invoke-static {v0}, Lcom/avast/a/a/a/a/ag;->a(I)Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    .line 5808
    if-eqz v0, :cond_0

    .line 5809
    iget v1, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5810
    iput-object v0, p0, Lcom/avast/a/a/a/q;->e:Lcom/avast/a/a/a/a/ag;

    goto :goto_0

    .line 5815
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5816
    invoke-static {v0}, Lcom/avast/a/a/a/a/ag;->a(I)Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    .line 5817
    if-eqz v0, :cond_0

    .line 5818
    iget v1, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5819
    iput-object v0, p0, Lcom/avast/a/a/a/q;->f:Lcom/avast/a/a/a/a/ag;

    goto :goto_0

    .line 5824
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5825
    invoke-static {v0}, Lcom/avast/a/a/a/a/ag;->a(I)Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    .line 5826
    if-eqz v0, :cond_0

    .line 5827
    iget v1, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5828
    iput-object v0, p0, Lcom/avast/a/a/a/q;->g:Lcom/avast/a/a/a/a/ag;

    goto :goto_0

    .line 5833
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5834
    invoke-static {v0}, Lcom/avast/a/a/a/a/ag;->a(I)Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    .line 5835
    if-eqz v0, :cond_0

    .line 5836
    iget v1, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5837
    iput-object v0, p0, Lcom/avast/a/a/a/q;->h:Lcom/avast/a/a/a/a/ag;

    goto :goto_0

    .line 5842
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5843
    invoke-static {v0}, Lcom/avast/a/a/a/a/ag;->a(I)Lcom/avast/a/a/a/a/ag;

    move-result-object v0

    .line 5844
    if-eqz v0, :cond_0

    .line 5845
    iget v1, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5846
    iput-object v0, p0, Lcom/avast/a/a/a/q;->i:Lcom/avast/a/a/a/a/ag;

    goto/16 :goto_0

    .line 5851
    :sswitch_9
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5852
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->j:Z

    goto/16 :goto_0

    .line 5856
    :sswitch_a
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5857
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/q;->k:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5861
    :sswitch_b
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5862
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->l:Z

    goto/16 :goto_0

    .line 5866
    :sswitch_c
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5867
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->m:Z

    goto/16 :goto_0

    .line 5871
    :sswitch_d
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5872
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->n:Z

    goto/16 :goto_0

    .line 5876
    :sswitch_e
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5877
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->o:Z

    goto/16 :goto_0

    .line 5881
    :sswitch_f
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5882
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->p:Z

    goto/16 :goto_0

    .line 5886
    :sswitch_10
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5887
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->q:Z

    goto/16 :goto_0

    .line 5891
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5892
    invoke-static {v0}, Lcom/avast/a/a/a/a/c;->a(I)Lcom/avast/a/a/a/a/c;

    move-result-object v0

    .line 5893
    if-eqz v0, :cond_0

    .line 5894
    iget v1, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v2, 0x1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5895
    iput-object v0, p0, Lcom/avast/a/a/a/q;->r:Lcom/avast/a/a/a/a/c;

    goto/16 :goto_0

    .line 5900
    :sswitch_12
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5901
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->s:Z

    goto/16 :goto_0

    .line 5905
    :sswitch_13
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5906
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->t:Z

    goto/16 :goto_0

    .line 5910
    :sswitch_14
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5911
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->u:Z

    goto/16 :goto_0

    .line 5915
    :sswitch_15
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5916
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->v:Z

    goto/16 :goto_0

    .line 5920
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5921
    invoke-static {v0}, Lcom/avast/a/a/a/a/w;->a(I)Lcom/avast/a/a/a/a/w;

    move-result-object v0

    .line 5922
    if-eqz v0, :cond_0

    .line 5923
    iget v1, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v2, 0x20

    or-int/2addr v1, v2

    iput v1, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5924
    iput-object v0, p0, Lcom/avast/a/a/a/q;->w:Lcom/avast/a/a/a/a/w;

    goto/16 :goto_0

    .line 5929
    :sswitch_17
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5930
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/q;->x:Z

    goto/16 :goto_0

    .line 5779
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6159
    if-nez p1, :cond_0

    .line 6160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6162
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6163
    iput-object p1, p0, Lcom/avast/a/a/a/q;->k:Ljava/lang/Object;

    .line 6165
    return-object p0
.end method

.method public a(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 5948
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5949
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->b:Z

    .line 5951
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 5503
    check-cast p1, Lcom/avast/a/a/a/p;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/q;->a(Lcom/avast/a/a/a/p;)Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/p;
    .locals 1

    .prologue
    .line 5574
    invoke-static {}, Lcom/avast/a/a/a/p;->a()Lcom/avast/a/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6035
    if-nez p1, :cond_0

    .line 6036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6038
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6039
    iput-object p1, p0, Lcom/avast/a/a/a/q;->f:Lcom/avast/a/a/a/a/ag;

    .line 6041
    return-object p0
.end method

.method public b(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 5969
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5970
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->c:Z

    .line 5972
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5503
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/q;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/p;
    .locals 2

    .prologue
    .line 5578
    invoke-virtual {p0}, Lcom/avast/a/a/a/q;->d()Lcom/avast/a/a/a/p;

    move-result-object v0

    .line 5579
    invoke-virtual {v0}, Lcom/avast/a/a/a/p;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5580
    invoke-static {v0}, Lcom/avast/a/a/a/q;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 5582
    :cond_0
    return-object v0
.end method

.method public c(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6059
    if-nez p1, :cond_0

    .line 6060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6062
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6063
    iput-object p1, p0, Lcom/avast/a/a/a/q;->g:Lcom/avast/a/a/a/a/ag;

    .line 6065
    return-object p0
.end method

.method public c(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 5990
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5991
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->d:Z

    .line 5993
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5503
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/q;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5503
    invoke-virtual {p0}, Lcom/avast/a/a/a/q;->a()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/p;
    .locals 10

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 5596
    new-instance v1, Lcom/avast/a/a/a/p;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/avast/a/a/a/p;-><init>(Lcom/avast/a/a/a/q;Lcom/avast/a/a/a/l;)V

    .line 5597
    iget v2, p0, Lcom/avast/a/a/a/q;->a:I

    .line 5598
    const/4 v0, 0x0

    .line 5599
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5600
    const/4 v0, 0x1

    .line 5602
    :cond_0
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->b:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->a(Lcom/avast/a/a/a/p;Z)Z

    .line 5603
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5604
    or-int/lit8 v0, v0, 0x2

    .line 5606
    :cond_1
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->c:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->b(Lcom/avast/a/a/a/p;Z)Z

    .line 5607
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5608
    or-int/lit8 v0, v0, 0x4

    .line 5610
    :cond_2
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->d:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->c(Lcom/avast/a/a/a/p;Z)Z

    .line 5611
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5612
    or-int/lit8 v0, v0, 0x8

    .line 5614
    :cond_3
    iget-object v3, p0, Lcom/avast/a/a/a/q;->e:Lcom/avast/a/a/a/a/ag;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->a(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;

    .line 5615
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 5616
    or-int/lit8 v0, v0, 0x10

    .line 5618
    :cond_4
    iget-object v3, p0, Lcom/avast/a/a/a/q;->f:Lcom/avast/a/a/a/a/ag;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->b(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;

    .line 5619
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 5620
    or-int/lit8 v0, v0, 0x20

    .line 5622
    :cond_5
    iget-object v3, p0, Lcom/avast/a/a/a/q;->g:Lcom/avast/a/a/a/a/ag;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->c(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;

    .line 5623
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 5624
    or-int/lit8 v0, v0, 0x40

    .line 5626
    :cond_6
    iget-object v3, p0, Lcom/avast/a/a/a/q;->h:Lcom/avast/a/a/a/a/ag;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->d(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;

    .line 5627
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 5628
    or-int/lit16 v0, v0, 0x80

    .line 5630
    :cond_7
    iget-object v3, p0, Lcom/avast/a/a/a/q;->i:Lcom/avast/a/a/a/a/ag;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->e(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;

    .line 5631
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 5632
    or-int/lit16 v0, v0, 0x100

    .line 5634
    :cond_8
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->j:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->d(Lcom/avast/a/a/a/p;Z)Z

    .line 5635
    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 5636
    or-int/lit16 v0, v0, 0x200

    .line 5638
    :cond_9
    iget-object v3, p0, Lcom/avast/a/a/a/q;->k:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->a(Lcom/avast/a/a/a/p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5639
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 5640
    or-int/lit16 v0, v0, 0x400

    .line 5642
    :cond_a
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->l:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->e(Lcom/avast/a/a/a/p;Z)Z

    .line 5643
    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 5644
    or-int/lit16 v0, v0, 0x800

    .line 5646
    :cond_b
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->m:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->f(Lcom/avast/a/a/a/p;Z)Z

    .line 5647
    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 5648
    or-int/lit16 v0, v0, 0x1000

    .line 5650
    :cond_c
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->n:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->g(Lcom/avast/a/a/a/p;Z)Z

    .line 5651
    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 5652
    or-int/lit16 v0, v0, 0x2000

    .line 5654
    :cond_d
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->o:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->h(Lcom/avast/a/a/a/p;Z)Z

    .line 5655
    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 5656
    or-int/lit16 v0, v0, 0x4000

    .line 5658
    :cond_e
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->p:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->i(Lcom/avast/a/a/a/p;Z)Z

    .line 5659
    and-int v3, v2, v5

    if-ne v3, v5, :cond_f

    .line 5660
    or-int/2addr v0, v5

    .line 5662
    :cond_f
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->q:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->j(Lcom/avast/a/a/a/p;Z)Z

    .line 5663
    and-int v3, v2, v6

    if-ne v3, v6, :cond_10

    .line 5664
    or-int/2addr v0, v6

    .line 5666
    :cond_10
    iget-object v3, p0, Lcom/avast/a/a/a/q;->r:Lcom/avast/a/a/a/a/c;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->a(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/c;)Lcom/avast/a/a/a/a/c;

    .line 5667
    and-int v3, v2, v7

    if-ne v3, v7, :cond_11

    .line 5668
    or-int/2addr v0, v7

    .line 5670
    :cond_11
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->s:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->k(Lcom/avast/a/a/a/p;Z)Z

    .line 5671
    and-int v3, v2, v8

    if-ne v3, v8, :cond_12

    .line 5672
    or-int/2addr v0, v8

    .line 5674
    :cond_12
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->t:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->l(Lcom/avast/a/a/a/p;Z)Z

    .line 5675
    and-int v3, v2, v9

    if-ne v3, v9, :cond_13

    .line 5676
    or-int/2addr v0, v9

    .line 5678
    :cond_13
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->u:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->m(Lcom/avast/a/a/a/p;Z)Z

    .line 5679
    const/high16 v3, 0x10

    and-int/2addr v3, v2

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_14

    .line 5680
    const/high16 v3, 0x10

    or-int/2addr v0, v3

    .line 5682
    :cond_14
    iget-boolean v3, p0, Lcom/avast/a/a/a/q;->v:Z

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->n(Lcom/avast/a/a/a/p;Z)Z

    .line 5683
    const/high16 v3, 0x20

    and-int/2addr v3, v2

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_15

    .line 5684
    const/high16 v3, 0x20

    or-int/2addr v0, v3

    .line 5686
    :cond_15
    iget-object v3, p0, Lcom/avast/a/a/a/q;->w:Lcom/avast/a/a/a/a/w;

    invoke-static {v1, v3}, Lcom/avast/a/a/a/p;->a(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/w;)Lcom/avast/a/a/a/a/w;

    .line 5687
    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_16

    .line 5688
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 5690
    :cond_16
    iget-boolean v2, p0, Lcom/avast/a/a/a/q;->x:Z

    invoke-static {v1, v2}, Lcom/avast/a/a/a/p;->o(Lcom/avast/a/a/a/p;Z)Z

    .line 5691
    invoke-static {v1, v0}, Lcom/avast/a/a/a/p;->a(Lcom/avast/a/a/a/p;I)I

    .line 5692
    return-object v1
.end method

.method public d(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6083
    if-nez p1, :cond_0

    .line 6084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6086
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6087
    iput-object p1, p0, Lcom/avast/a/a/a/q;->h:Lcom/avast/a/a/a/a/ag;

    .line 6089
    return-object p0
.end method

.method public d(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6131
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6132
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->j:Z

    .line 6134
    return-object p0
.end method

.method public e(Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6107
    if-nez p1, :cond_0

    .line 6108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6110
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6111
    iput-object p1, p0, Lcom/avast/a/a/a/q;->i:Lcom/avast/a/a/a/a/ag;

    .line 6113
    return-object p0
.end method

.method public e(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6188
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6189
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->l:Z

    .line 6191
    return-object p0
.end method

.method public f(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6209
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6210
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->m:Z

    .line 6212
    return-object p0
.end method

.method public g(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6230
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6231
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->n:Z

    .line 6233
    return-object p0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 5503
    invoke-virtual {p0}, Lcom/avast/a/a/a/q;->b()Lcom/avast/a/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6251
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6252
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->o:Z

    .line 6254
    return-object p0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 5503
    invoke-virtual {p0}, Lcom/avast/a/a/a/q;->a()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 6272
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6273
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->p:Z

    .line 6275
    return-object p0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 5503
    invoke-virtual {p0}, Lcom/avast/a/a/a/q;->a()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public j(Z)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6293
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6294
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->q:Z

    .line 6296
    return-object p0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 5503
    invoke-virtual {p0}, Lcom/avast/a/a/a/q;->c()Lcom/avast/a/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public k(Z)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6338
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6339
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->s:Z

    .line 6341
    return-object p0
.end method

.method public l(Z)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6359
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6360
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->t:Z

    .line 6362
    return-object p0
.end method

.method public m(Z)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6380
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6381
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->u:Z

    .line 6383
    return-object p0
.end method

.method public n(Z)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6401
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6402
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->v:Z

    .line 6404
    return-object p0
.end method

.method public o(Z)Lcom/avast/a/a/a/q;
    .locals 2
    .parameter

    .prologue
    .line 6446
    iget v0, p0, Lcom/avast/a/a/a/q;->a:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/a/a/a/q;->a:I

    .line 6447
    iput-boolean p1, p0, Lcom/avast/a/a/a/q;->x:Z

    .line 6449
    return-object p0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 5770
    const/4 v0, 0x1

    return v0
.end method
