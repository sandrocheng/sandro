.class public final Lcom/avast/a/a/a/a/h;
.super Lcom/google/a/n;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/i;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Lcom/avast/a/a/a/a/e;

.field private e:J

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:J

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3561
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 3809
    sget-object v0, Lcom/avast/a/a/a/a/e;->a:Lcom/avast/a/a/a/a/e;

    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->d:Lcom/avast/a/a/a/a/e;

    .line 3854
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->f:Ljava/lang/Object;

    .line 3890
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->g:Ljava/lang/Object;

    .line 3947
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->i:Ljava/lang/Object;

    .line 3562
    invoke-direct {p0}, Lcom/avast/a/a/a/a/h;->l()V

    .line 3563
    return-void
.end method

.method static synthetic k()Lcom/avast/a/a/a/a/h;
    .locals 1

    .prologue
    .line 3556
    invoke-static {}, Lcom/avast/a/a/a/a/h;->m()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 3566
    return-void
.end method

.method private static m()Lcom/avast/a/a/a/a/h;
    .locals 1

    .prologue
    .line 3568
    new-instance v0, Lcom/avast/a/a/a/a/h;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/a/h;
    .locals 2

    .prologue
    .line 3593
    invoke-static {}, Lcom/avast/a/a/a/a/h;->m()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->d()Lcom/avast/a/a/a/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/a/h;->a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3775
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3776
    iput-wide p1, p0, Lcom/avast/a/a/a/a/h;->b:J

    .line 3778
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/e;)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3817
    if-nez p1, :cond_0

    .line 3818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3820
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3821
    iput-object p1, p0, Lcom/avast/a/a/a/a/h;->d:Lcom/avast/a/a/a/a/e;

    .line 3823
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/h;
    .locals 2
    .parameter

    .prologue
    .line 3659
    invoke-static {}, Lcom/avast/a/a/a/a/g;->a()Lcom/avast/a/a/a/a/g;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3684
    :cond_0
    :goto_0
    return-object p0

    .line 3660
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3661
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/h;->a(J)Lcom/avast/a/a/a/a/h;

    .line 3663
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3664
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/h;->b(J)Lcom/avast/a/a/a/a/h;

    .line 3666
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3667
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->g()Lcom/avast/a/a/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/h;->a(Lcom/avast/a/a/a/a/e;)Lcom/avast/a/a/a/a/h;

    .line 3669
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3670
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/h;->c(J)Lcom/avast/a/a/a/a/h;

    .line 3672
    :cond_5
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3673
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/h;->a(Ljava/lang/String;)Lcom/avast/a/a/a/a/h;

    .line 3675
    :cond_6
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3676
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/h;->b(Ljava/lang/String;)Lcom/avast/a/a/a/a/h;

    .line 3678
    :cond_7
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3679
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/h;->d(J)Lcom/avast/a/a/a/a/h;

    .line 3681
    :cond_8
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3682
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/g;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/h;->c(Ljava/lang/String;)Lcom/avast/a/a/a/a/h;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/h;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3704
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 3705
    sparse-switch v0, :sswitch_data_0

    .line 3710
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/a/h;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3712
    :sswitch_0
    return-object p0

    .line 3717
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3718
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/h;->b:J

    goto :goto_0

    .line 3722
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3723
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/h;->c:J

    goto :goto_0

    .line 3727
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 3728
    invoke-static {v0}, Lcom/avast/a/a/a/a/e;->a(I)Lcom/avast/a/a/a/a/e;

    move-result-object v0

    .line 3729
    if-eqz v0, :cond_0

    .line 3730
    iget v1, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3731
    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->d:Lcom/avast/a/a/a/a/e;

    goto :goto_0

    .line 3736
    :sswitch_4
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3737
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/h;->e:J

    goto :goto_0

    .line 3741
    :sswitch_5
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3742
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->f:Ljava/lang/Object;

    goto :goto_0

    .line 3746
    :sswitch_6
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3747
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->g:Ljava/lang/Object;

    goto :goto_0

    .line 3751
    :sswitch_7
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3752
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/h;->h:J

    goto :goto_0

    .line 3756
    :sswitch_8
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3757
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/h;->i:Ljava/lang/Object;

    goto :goto_0

    .line 3705
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3869
    if-nez p1, :cond_0

    .line 3870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3872
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3873
    iput-object p1, p0, Lcom/avast/a/a/a/a/h;->f:Ljava/lang/Object;

    .line 3875
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 3556
    check-cast p1, Lcom/avast/a/a/a/a/g;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/a/h;->a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/a/g;
    .locals 1

    .prologue
    .line 3597
    invoke-static {}, Lcom/avast/a/a/a/a/g;->a()Lcom/avast/a/a/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3796
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3797
    iput-wide p1, p0, Lcom/avast/a/a/a/a/h;->c:J

    .line 3799
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3905
    if-nez p1, :cond_0

    .line 3906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3908
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3909
    iput-object p1, p0, Lcom/avast/a/a/a/a/h;->g:Ljava/lang/Object;

    .line 3911
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3556
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/h;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/a/g;
    .locals 2

    .prologue
    .line 3601
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->d()Lcom/avast/a/a/a/a/g;

    move-result-object v0

    .line 3602
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/g;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3603
    invoke-static {v0}, Lcom/avast/a/a/a/a/h;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 3605
    :cond_0
    return-object v0
.end method

.method public c(J)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3841
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3842
    iput-wide p1, p0, Lcom/avast/a/a/a/a/h;->e:J

    .line 3844
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3962
    if-nez p1, :cond_0

    .line 3963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3965
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3966
    iput-object p1, p0, Lcom/avast/a/a/a/a/h;->i:Ljava/lang/Object;

    .line 3968
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3556
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/h;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3556
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->a()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/a/g;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 3619
    new-instance v2, Lcom/avast/a/a/a/a/g;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/a/g;-><init>(Lcom/avast/a/a/a/a/h;Lcom/avast/a/a/a/a/b;)V

    .line 3620
    iget v3, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3621
    const/4 v1, 0x0

    .line 3622
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    .line 3625
    :goto_0
    iget-wide v4, p0, Lcom/avast/a/a/a/a/h;->b:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/g;->a(Lcom/avast/a/a/a/a/g;J)J

    .line 3626
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3627
    or-int/lit8 v0, v0, 0x2

    .line 3629
    :cond_0
    iget-wide v4, p0, Lcom/avast/a/a/a/a/h;->c:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/g;->b(Lcom/avast/a/a/a/a/g;J)J

    .line 3630
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 3631
    or-int/lit8 v0, v0, 0x4

    .line 3633
    :cond_1
    iget-object v1, p0, Lcom/avast/a/a/a/a/h;->d:Lcom/avast/a/a/a/a/e;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/g;->a(Lcom/avast/a/a/a/a/g;Lcom/avast/a/a/a/a/e;)Lcom/avast/a/a/a/a/e;

    .line 3634
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 3635
    or-int/lit8 v0, v0, 0x8

    .line 3637
    :cond_2
    iget-wide v4, p0, Lcom/avast/a/a/a/a/h;->e:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/g;->c(Lcom/avast/a/a/a/a/g;J)J

    .line 3638
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 3639
    or-int/lit8 v0, v0, 0x10

    .line 3641
    :cond_3
    iget-object v1, p0, Lcom/avast/a/a/a/a/h;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/g;->a(Lcom/avast/a/a/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 3643
    or-int/lit8 v0, v0, 0x20

    .line 3645
    :cond_4
    iget-object v1, p0, Lcom/avast/a/a/a/a/h;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/g;->b(Lcom/avast/a/a/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3646
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 3647
    or-int/lit8 v0, v0, 0x40

    .line 3649
    :cond_5
    iget-wide v4, p0, Lcom/avast/a/a/a/a/h;->h:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/g;->d(Lcom/avast/a/a/a/a/g;J)J

    .line 3650
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    .line 3651
    or-int/lit16 v0, v0, 0x80

    .line 3653
    :cond_6
    iget-object v1, p0, Lcom/avast/a/a/a/a/h;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/g;->c(Lcom/avast/a/a/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    invoke-static {v2, v0}, Lcom/avast/a/a/a/a/g;->a(Lcom/avast/a/a/a/a/g;I)I

    .line 3655
    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public d(J)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3934
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/h;->a:I

    .line 3935
    iput-wide p1, p0, Lcom/avast/a/a/a/a/h;->h:J

    .line 3937
    return-object p0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3769
    iget v1, p0, Lcom/avast/a/a/a/a/h;->a:I

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
    .line 3790
    iget v0, p0, Lcom/avast/a/a/a/a/h;->a:I

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
    .line 3556
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->b()Lcom/avast/a/a/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 3556
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->a()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 3556
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->a()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 3556
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->c()Lcom/avast/a/a/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3688
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3696
    :cond_0
    :goto_0
    return v0

    .line 3692
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3696
    const/4 v0, 0x1

    goto :goto_0
.end method
