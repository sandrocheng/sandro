.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ah;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3709
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 3851
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->b:Ljava/lang/Object;

    .line 3887
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->c:Ljava/lang/Object;

    .line 3923
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    .line 3710
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->l()V

    .line 3711
    return-void
.end method

.method static synthetic k()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1

    .prologue
    .line 3704
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->m()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 3714
    return-void
.end method

.method private static m()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1

    .prologue
    .line 3716
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 2

    .prologue
    .line 3733
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->m()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 3783
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3796
    :cond_0
    :goto_0
    return-object p0

    .line 3784
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3785
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    .line 3787
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3788
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    .line 3790
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3791
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->g()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    .line 3793
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3794
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Z)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 3931
    if-nez p1, :cond_0

    .line 3932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3934
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    .line 3936
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3937
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3808
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 3809
    sparse-switch v0, :sswitch_data_0

    .line 3814
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3816
    :sswitch_0
    return-object p0

    .line 3821
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3822
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->b:Ljava/lang/Object;

    goto :goto_0

    .line 3826
    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3827
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->c:Ljava/lang/Object;

    goto :goto_0

    .line 3831
    :sswitch_3
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    .line 3832
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3833
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    .line 3835
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 3836
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    goto :goto_0

    .line 3840
    :sswitch_4
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3841
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->e:Z

    goto :goto_0

    .line 3809
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 3866
    if-nez p1, :cond_0

    .line 3867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3869
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3870
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->b:Ljava/lang/Object;

    .line 3872
    return-object p0
.end method

.method public a(Z)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 3974
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3975
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->e:Z

    .line 3977
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 3704
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    .locals 1

    .prologue
    .line 3737
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 2
    .parameter

    .prologue
    .line 3947
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3949
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    .line 3955
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3956
    return-object p0

    .line 3952
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 3902
    if-nez p1, :cond_0

    .line 3903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3905
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3906
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->c:Ljava/lang/Object;

    .line 3908
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3704
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    .locals 2

    .prologue
    .line 3741
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    .line 3742
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3743
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 3745
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3704
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3704
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3759
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ag;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 3760
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

    .line 3761
    const/4 v1, 0x0

    .line 3762
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 3765
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3766
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3767
    or-int/lit8 v0, v0, 0x2

    .line 3769
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 3771
    or-int/lit8 v0, v0, 0x4

    .line 3773
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    .line 3774
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 3775
    or-int/lit8 v0, v0, 0x8

    .line 3777
    :cond_2
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->e:Z

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Z)Z

    .line 3778
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;I)I

    .line 3779
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 3925
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a:I

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

.method public f()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 1

    .prologue
    .line 3928
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 3704
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 3704
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 3704
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 3704
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 3800
    const/4 v0, 0x1

    return v0
.end method
