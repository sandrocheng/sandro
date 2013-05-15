.class public final Lcom/avast/a/a/a/an;
.super Lcom/google/a/n;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/as;


# instance fields
.field private a:I

.field private b:Lcom/avast/a/a/a/aq;

.field private c:J

.field private d:Ljava/lang/Object;

.field private e:Lcom/avast/a/a/a/ao;

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11531
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 11755
    sget-object v0, Lcom/avast/a/a/a/aq;->a:Lcom/avast/a/a/a/aq;

    iput-object v0, p0, Lcom/avast/a/a/a/an;->b:Lcom/avast/a/a/a/aq;

    .line 11800
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/an;->d:Ljava/lang/Object;

    .line 11836
    sget-object v0, Lcom/avast/a/a/a/ao;->a:Lcom/avast/a/a/a/ao;

    iput-object v0, p0, Lcom/avast/a/a/a/an;->e:Lcom/avast/a/a/a/ao;

    .line 11860
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/a/a/a/an;->f:I

    .line 11881
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/an;->g:Ljava/lang/Object;

    .line 11917
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/an;->h:Ljava/lang/Object;

    .line 11953
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/an;->i:Ljava/lang/Object;

    .line 11989
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/an;->j:Ljava/lang/Object;

    .line 11532
    invoke-direct {p0}, Lcom/avast/a/a/a/an;->l()V

    .line 11533
    return-void
.end method

.method static synthetic k()Lcom/avast/a/a/a/an;
    .locals 1

    .prologue
    .line 11526
    invoke-static {}, Lcom/avast/a/a/a/an;->m()Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 11536
    return-void
.end method

.method private static m()Lcom/avast/a/a/a/an;
    .locals 1

    .prologue
    .line 11538
    new-instance v0, Lcom/avast/a/a/a/an;

    invoke-direct {v0}, Lcom/avast/a/a/a/an;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/an;
    .locals 2

    .prologue
    .line 11565
    invoke-static {}, Lcom/avast/a/a/a/an;->m()Lcom/avast/a/a/a/an;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->d()Lcom/avast/a/a/a/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/an;->a(Lcom/avast/a/a/a/am;)Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11868
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11869
    iput p1, p0, Lcom/avast/a/a/a/an;->f:I

    .line 11871
    return-object p0
.end method

.method public a(J)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11787
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11788
    iput-wide p1, p0, Lcom/avast/a/a/a/an;->c:J

    .line 11790
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/am;)Lcom/avast/a/a/a/an;
    .locals 2
    .parameter

    .prologue
    .line 11635
    invoke-static {}, Lcom/avast/a/a/a/am;->a()Lcom/avast/a/a/a/am;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11663
    :cond_0
    :goto_0
    return-object p0

    .line 11636
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11637
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->c()Lcom/avast/a/a/a/aq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->a(Lcom/avast/a/a/a/aq;)Lcom/avast/a/a/a/an;

    .line 11639
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11640
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/an;->a(J)Lcom/avast/a/a/a/an;

    .line 11642
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11643
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->a(Ljava/lang/String;)Lcom/avast/a/a/a/an;

    .line 11645
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11646
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->i()Lcom/avast/a/a/a/ao;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->a(Lcom/avast/a/a/a/ao;)Lcom/avast/a/a/a/an;

    .line 11648
    :cond_5
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11649
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->a(I)Lcom/avast/a/a/a/an;

    .line 11651
    :cond_6
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11652
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->b(Ljava/lang/String;)Lcom/avast/a/a/a/an;

    .line 11654
    :cond_7
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11655
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->c(Ljava/lang/String;)Lcom/avast/a/a/a/an;

    .line 11657
    :cond_8
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11658
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->d(Ljava/lang/String;)Lcom/avast/a/a/a/an;

    .line 11660
    :cond_9
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11661
    invoke-virtual {p1}, Lcom/avast/a/a/a/am;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/an;->e(Ljava/lang/String;)Lcom/avast/a/a/a/an;

    goto :goto_0
.end method

.method public a(Lcom/avast/a/a/a/ao;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11844
    if-nez p1, :cond_0

    .line 11845
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11847
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11848
    iput-object p1, p0, Lcom/avast/a/a/a/an;->e:Lcom/avast/a/a/a/ao;

    .line 11850
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/aq;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11763
    if-nez p1, :cond_0

    .line 11764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11766
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11767
    iput-object p1, p0, Lcom/avast/a/a/a/an;->b:Lcom/avast/a/a/a/aq;

    .line 11769
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/an;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11683
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 11684
    sparse-switch v0, :sswitch_data_0

    .line 11689
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/an;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11691
    :sswitch_0
    return-object p0

    .line 11696
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 11697
    invoke-static {v0}, Lcom/avast/a/a/a/aq;->a(I)Lcom/avast/a/a/a/aq;

    move-result-object v0

    .line 11698
    if-eqz v0, :cond_0

    .line 11699
    iget v1, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11700
    iput-object v0, p0, Lcom/avast/a/a/a/an;->b:Lcom/avast/a/a/a/aq;

    goto :goto_0

    .line 11705
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11706
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/an;->c:J

    goto :goto_0

    .line 11710
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11711
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/an;->d:Ljava/lang/Object;

    goto :goto_0

    .line 11715
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 11716
    invoke-static {v0}, Lcom/avast/a/a/a/ao;->a(I)Lcom/avast/a/a/a/ao;

    move-result-object v0

    .line 11717
    if-eqz v0, :cond_0

    .line 11718
    iget v1, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11719
    iput-object v0, p0, Lcom/avast/a/a/a/an;->e:Lcom/avast/a/a/a/ao;

    goto :goto_0

    .line 11724
    :sswitch_5
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11725
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/an;->f:I

    goto :goto_0

    .line 11729
    :sswitch_6
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11730
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/an;->g:Ljava/lang/Object;

    goto :goto_0

    .line 11734
    :sswitch_7
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11735
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/an;->h:Ljava/lang/Object;

    goto :goto_0

    .line 11739
    :sswitch_8
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11740
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/an;->i:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11744
    :sswitch_9
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11745
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/an;->j:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11684
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11815
    if-nez p1, :cond_0

    .line 11816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11818
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11819
    iput-object p1, p0, Lcom/avast/a/a/a/an;->d:Ljava/lang/Object;

    .line 11821
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 11526
    check-cast p1, Lcom/avast/a/a/a/am;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/an;->a(Lcom/avast/a/a/a/am;)Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/am;
    .locals 1

    .prologue
    .line 11569
    invoke-static {}, Lcom/avast/a/a/a/am;->a()Lcom/avast/a/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11896
    if-nez p1, :cond_0

    .line 11897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11899
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11900
    iput-object p1, p0, Lcom/avast/a/a/a/an;->g:Ljava/lang/Object;

    .line 11902
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11526
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/an;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/am;
    .locals 2

    .prologue
    .line 11573
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->d()Lcom/avast/a/a/a/am;

    move-result-object v0

    .line 11574
    invoke-virtual {v0}, Lcom/avast/a/a/a/am;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11575
    invoke-static {v0}, Lcom/avast/a/a/a/an;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 11577
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11932
    if-nez p1, :cond_0

    .line 11933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11935
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11936
    iput-object p1, p0, Lcom/avast/a/a/a/an;->h:Ljava/lang/Object;

    .line 11938
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11526
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/an;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11526
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->a()Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/am;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 11591
    new-instance v2, Lcom/avast/a/a/a/am;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/am;-><init>(Lcom/avast/a/a/a/an;Lcom/avast/a/a/a/l;)V

    .line 11592
    iget v3, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11593
    const/4 v1, 0x0

    .line 11594
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    .line 11597
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/an;->b:Lcom/avast/a/a/a/aq;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->a(Lcom/avast/a/a/a/am;Lcom/avast/a/a/a/aq;)Lcom/avast/a/a/a/aq;

    .line 11598
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 11599
    or-int/lit8 v0, v0, 0x2

    .line 11601
    :cond_0
    iget-wide v4, p0, Lcom/avast/a/a/a/an;->c:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/am;->a(Lcom/avast/a/a/a/am;J)J

    .line 11602
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 11603
    or-int/lit8 v0, v0, 0x4

    .line 11605
    :cond_1
    iget-object v1, p0, Lcom/avast/a/a/a/an;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->a(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11606
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 11607
    or-int/lit8 v0, v0, 0x8

    .line 11609
    :cond_2
    iget-object v1, p0, Lcom/avast/a/a/a/an;->e:Lcom/avast/a/a/a/ao;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->a(Lcom/avast/a/a/a/am;Lcom/avast/a/a/a/ao;)Lcom/avast/a/a/a/ao;

    .line 11610
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 11611
    or-int/lit8 v0, v0, 0x10

    .line 11613
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/an;->f:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->a(Lcom/avast/a/a/a/am;I)I

    .line 11614
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 11615
    or-int/lit8 v0, v0, 0x20

    .line 11617
    :cond_4
    iget-object v1, p0, Lcom/avast/a/a/a/an;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->b(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11618
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 11619
    or-int/lit8 v0, v0, 0x40

    .line 11621
    :cond_5
    iget-object v1, p0, Lcom/avast/a/a/a/an;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->c(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11622
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 11623
    or-int/lit16 v0, v0, 0x80

    .line 11625
    :cond_6
    iget-object v1, p0, Lcom/avast/a/a/a/an;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->d(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11626
    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    .line 11627
    or-int/lit16 v0, v0, 0x100

    .line 11629
    :cond_7
    iget-object v1, p0, Lcom/avast/a/a/a/an;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/am;->e(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11630
    invoke-static {v2, v0}, Lcom/avast/a/a/a/am;->b(Lcom/avast/a/a/a/am;I)I

    .line 11631
    return-object v2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11968
    if-nez p1, :cond_0

    .line 11969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11971
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 11972
    iput-object p1, p0, Lcom/avast/a/a/a/an;->i:Ljava/lang/Object;

    .line 11974
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 12004
    if-nez p1, :cond_0

    .line 12005
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12007
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/an;->a:I

    .line 12008
    iput-object p1, p0, Lcom/avast/a/a/a/an;->j:Ljava/lang/Object;

    .line 12010
    return-object p0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11757
    iget v1, p0, Lcom/avast/a/a/a/an;->a:I

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
    .line 11781
    iget v0, p0, Lcom/avast/a/a/a/an;->a:I

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
    .line 11526
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->b()Lcom/avast/a/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 11526
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->a()Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 11526
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->a()Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 11526
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->c()Lcom/avast/a/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11667
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11675
    :cond_0
    :goto_0
    return v0

    .line 11671
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/an;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11675
    const/4 v0, 0x1

    goto :goto_0
.end method
