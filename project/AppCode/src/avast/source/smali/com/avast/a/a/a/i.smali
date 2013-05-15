.class public final Lcom/avast/a/a/a/i;
.super Lcom/google/a/n;
.source "AvastToDevice.java"

# interfaces
.implements Lcom/avast/a/a/a/j;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/google/a/z;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 892
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    .line 567
    invoke-direct {p0}, Lcom/avast/a/a/a/i;->k()V

    .line 568
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/i;)Lcom/avast/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/avast/a/a/a/i;->m()Lcom/avast/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Lcom/avast/a/a/a/i;
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/avast/a/a/a/i;->l()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method private static l()Lcom/avast/a/a/a/i;
    .locals 1

    .prologue
    .line 573
    new-instance v0, Lcom/avast/a/a/a/i;

    invoke-direct {v0}, Lcom/avast/a/a/a/i;-><init>()V

    return-object v0
.end method

.method private m()Lcom/avast/a/a/a/h;
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->d()Lcom/avast/a/a/a/h;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Lcom/avast/a/a/a/h;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    invoke-static {v0}, Lcom/avast/a/a/a/i;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/al;->a()Lcom/google/a/x;

    move-result-object v0

    throw v0

    .line 634
    :cond_0
    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 894
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 895
    new-instance v0, Lcom/google/a/y;

    iget-object v1, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    invoke-direct {v0, v1}, Lcom/google/a/y;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    .line 896
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 898
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/i;
    .locals 2

    .prologue
    .line 612
    invoke-static {}, Lcom/avast/a/a/a/i;->l()Lcom/avast/a/a/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->d()Lcom/avast/a/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/i;->a(Lcom/avast/a/a/a/h;)Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 879
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 880
    iput p1, p0, Lcom/avast/a/a/a/i;->b:I

    .line 882
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/h;)Lcom/avast/a/a/a/i;
    .locals 2
    .parameter

    .prologue
    .line 708
    invoke-static {}, Lcom/avast/a/a/a/h;->a()Lcom/avast/a/a/a/h;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-object p0

    .line 709
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->a(I)Lcom/avast/a/a/a/i;

    .line 712
    :cond_2
    invoke-static {p1}, Lcom/avast/a/a/a/h;->b(Lcom/avast/a/a/a/h;)Lcom/google/a/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 713
    iget-object v0, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 714
    invoke-static {p1}, Lcom/avast/a/a/a/h;->b(Lcom/avast/a/a/a/h;)Lcom/google/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    .line 715
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 722
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->a(Z)Lcom/avast/a/a/a/i;

    .line 725
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 726
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->b(Z)Lcom/avast/a/a/a/i;

    .line 728
    :cond_5
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 729
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->c(Z)Lcom/avast/a/a/a/i;

    .line 731
    :cond_6
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 732
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->m()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->d(Z)Lcom/avast/a/a/a/i;

    .line 734
    :cond_7
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 735
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->e(Z)Lcom/avast/a/a/a/i;

    .line 737
    :cond_8
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 738
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->f(Z)Lcom/avast/a/a/a/i;

    .line 740
    :cond_9
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 741
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->g(Z)Lcom/avast/a/a/a/i;

    .line 743
    :cond_a
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 744
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->u()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->h(Z)Lcom/avast/a/a/a/i;

    .line 746
    :cond_b
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 747
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->y()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->i(Z)Lcom/avast/a/a/a/i;

    .line 749
    :cond_c
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->z()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 750
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->C()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->j(Z)Lcom/avast/a/a/a/i;

    .line 752
    :cond_d
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->D()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 753
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->E()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->k(Z)Lcom/avast/a/a/a/i;

    .line 755
    :cond_e
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->F()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 756
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->G()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->b(I)Lcom/avast/a/a/a/i;

    .line 758
    :cond_f
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->I()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/i;->l(Z)Lcom/avast/a/a/a/i;

    goto/16 :goto_0

    .line 717
    :cond_10
    invoke-direct {p0}, Lcom/avast/a/a/a/i;->n()V

    .line 718
    iget-object v0, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    invoke-static {p1}, Lcom/avast/a/a/a/h;->b(Lcom/avast/a/a/a/h;)Lcom/google/a/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 777
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 778
    sparse-switch v0, :sswitch_data_0

    .line 783
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/i;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    :sswitch_0
    return-object p0

    .line 790
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 791
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/i;->b:I

    goto :goto_0

    .line 795
    :sswitch_2
    invoke-direct {p0}, Lcom/avast/a/a/a/i;->n()V

    .line 796
    iget-object v0, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->a(Lcom/google/a/c;)V

    goto :goto_0

    .line 800
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 801
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->d:Z

    goto :goto_0

    .line 805
    :sswitch_4
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 806
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->e:Z

    goto :goto_0

    .line 810
    :sswitch_5
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 811
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->f:Z

    goto :goto_0

    .line 815
    :sswitch_6
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 816
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->g:Z

    goto :goto_0

    .line 820
    :sswitch_7
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 821
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->h:Z

    goto :goto_0

    .line 825
    :sswitch_8
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 826
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->i:Z

    goto :goto_0

    .line 830
    :sswitch_9
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 831
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->j:Z

    goto/16 :goto_0

    .line 835
    :sswitch_a
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 836
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->k:Z

    goto/16 :goto_0

    .line 840
    :sswitch_b
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 841
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->l:Z

    goto/16 :goto_0

    .line 845
    :sswitch_c
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 846
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->m:Z

    goto/16 :goto_0

    .line 850
    :sswitch_d
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 851
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->n:Z

    goto/16 :goto_0

    .line 855
    :sswitch_e
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 856
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/i;->o:I

    goto/16 :goto_0

    .line 860
    :sswitch_f
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 861
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/i;->p:Z

    goto/16 :goto_0

    .line 778
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch
.end method

.method public a(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 956
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 957
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->d:Z

    .line 959
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 561
    check-cast p1, Lcom/avast/a/a/a/h;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/i;->a(Lcom/avast/a/a/a/h;)Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/h;
    .locals 1

    .prologue
    .line 616
    invoke-static {}, Lcom/avast/a/a/a/h;->a()Lcom/avast/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1187
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1188
    iput p1, p0, Lcom/avast/a/a/a/i;->o:I

    .line 1190
    return-object p0
.end method

.method public b(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 977
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 978
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->e:Z

    .line 980
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/i;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/h;
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->d()Lcom/avast/a/a/a/h;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/avast/a/a/a/h;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    invoke-static {v0}, Lcom/avast/a/a/a/i;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 624
    :cond_0
    return-object v0
.end method

.method public c(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 998
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 999
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->f:Z

    .line 1001
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/i;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->a()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/h;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 638
    new-instance v2, Lcom/avast/a/a/a/h;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/h;-><init>(Lcom/avast/a/a/a/i;Lcom/avast/a/a/a/b;)V

    .line 639
    iget v3, p0, Lcom/avast/a/a/a/i;->a:I

    .line 640
    const/4 v1, 0x0

    .line 641
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e

    .line 644
    :goto_0
    iget v1, p0, Lcom/avast/a/a/a/i;->b:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->a(Lcom/avast/a/a/a/h;I)I

    .line 645
    iget v1, p0, Lcom/avast/a/a/a/i;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 646
    new-instance v1, Lcom/google/a/am;

    iget-object v4, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    invoke-direct {v1, v4}, Lcom/google/a/am;-><init>(Lcom/google/a/z;)V

    iput-object v1, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    .line 648
    iget v1, p0, Lcom/avast/a/a/a/i;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avast/a/a/a/i;->a:I

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/avast/a/a/a/i;->c:Lcom/google/a/z;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->a(Lcom/avast/a/a/a/h;Lcom/google/a/z;)Lcom/google/a/z;

    .line 651
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 652
    or-int/lit8 v0, v0, 0x2

    .line 654
    :cond_1
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->d:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->a(Lcom/avast/a/a/a/h;Z)Z

    .line 655
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 656
    or-int/lit8 v0, v0, 0x4

    .line 658
    :cond_2
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->e:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->b(Lcom/avast/a/a/a/h;Z)Z

    .line 659
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 660
    or-int/lit8 v0, v0, 0x8

    .line 662
    :cond_3
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->f:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->c(Lcom/avast/a/a/a/h;Z)Z

    .line 663
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 664
    or-int/lit8 v0, v0, 0x10

    .line 666
    :cond_4
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->g:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->d(Lcom/avast/a/a/a/h;Z)Z

    .line 667
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 668
    or-int/lit8 v0, v0, 0x20

    .line 670
    :cond_5
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->h:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->e(Lcom/avast/a/a/a/h;Z)Z

    .line 671
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 672
    or-int/lit8 v0, v0, 0x40

    .line 674
    :cond_6
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->i:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->f(Lcom/avast/a/a/a/h;Z)Z

    .line 675
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 676
    or-int/lit16 v0, v0, 0x80

    .line 678
    :cond_7
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->j:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->g(Lcom/avast/a/a/a/h;Z)Z

    .line 679
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 680
    or-int/lit16 v0, v0, 0x100

    .line 682
    :cond_8
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->k:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->h(Lcom/avast/a/a/a/h;Z)Z

    .line 683
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 684
    or-int/lit16 v0, v0, 0x200

    .line 686
    :cond_9
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->l:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->i(Lcom/avast/a/a/a/h;Z)Z

    .line 687
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 688
    or-int/lit16 v0, v0, 0x400

    .line 690
    :cond_a
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->m:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->j(Lcom/avast/a/a/a/h;Z)Z

    .line 691
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 692
    or-int/lit16 v0, v0, 0x800

    .line 694
    :cond_b
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->n:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->k(Lcom/avast/a/a/a/h;Z)Z

    .line 695
    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    .line 696
    or-int/lit16 v0, v0, 0x1000

    .line 698
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/i;->o:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->b(Lcom/avast/a/a/a/h;I)I

    .line 699
    and-int/lit16 v1, v3, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_d

    .line 700
    or-int/lit16 v0, v0, 0x2000

    .line 702
    :cond_d
    iget-boolean v1, p0, Lcom/avast/a/a/a/i;->p:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/h;->l(Lcom/avast/a/a/a/h;Z)Z

    .line 703
    invoke-static {v2, v0}, Lcom/avast/a/a/a/h;->c(Lcom/avast/a/a/a/h;I)I

    .line 704
    return-object v2

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method public d(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1019
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1020
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->g:Z

    .line 1022
    return-object p0
.end method

.method public e(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1040
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1041
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->h:Z

    .line 1043
    return-object p0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 873
    iget v1, p0, Lcom/avast/a/a/a/i;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1061
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1062
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->i:Z

    .line 1064
    return-object p0
.end method

.method public g(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1082
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1083
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->j:Z

    .line 1085
    return-object p0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->b()Lcom/avast/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1103
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1104
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->k:Z

    .line 1106
    return-object p0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->a()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1124
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1125
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->l:Z

    .line 1127
    return-object p0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->a()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public j(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1145
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1146
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->m:Z

    .line 1148
    return-object p0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->c()Lcom/avast/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public k(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1166
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1167
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->n:Z

    .line 1169
    return-object p0
.end method

.method public l(Z)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1208
    iget v0, p0, Lcom/avast/a/a/a/i;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avast/a/a/a/i;->a:I

    .line 1209
    iput-boolean p1, p0, Lcom/avast/a/a/a/i;->p:Z

    .line 1211
    return-object p0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/avast/a/a/a/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    const/4 v0, 0x0

    .line 769
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
