.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ab;


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;

.field private c:Lcom/google/a/c;

.field private d:Lcom/google/a/c;

.field private e:Lcom/google/a/c;

.field private f:Lcom/google/a/c;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4546
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 4712
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->b:Lcom/google/a/c;

    .line 4736
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c:Lcom/google/a/c;

    .line 4760
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d:Lcom/google/a/c;

    .line 4784
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->e:Lcom/google/a/c;

    .line 4808
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->f:Lcom/google/a/c;

    .line 4547
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->f()V

    .line 4548
    return-void
.end method

.method static synthetic e()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1

    .prologue
    .line 4541
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 4551
    return-void
.end method

.method private static k()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1

    .prologue
    .line 4553
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 2

    .prologue
    .line 4574
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4840
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4841
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->g:I

    .line 4843
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4632
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4651
    :cond_0
    :goto_0
    return-object p0

    .line 4633
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4634
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->c()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 4636
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4637
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->e()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->b(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 4639
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4640
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->g()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 4642
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4643
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->i()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 4645
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4646
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->k()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->e(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 4648
    :cond_6
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4649
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    goto :goto_0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4720
    if-nez p1, :cond_0

    .line 4721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4723
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4724
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->b:Lcom/google/a/c;

    .line 4726
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4663
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 4664
    sparse-switch v0, :sswitch_data_0

    .line 4669
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4671
    :sswitch_0
    return-object p0

    .line 4676
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4677
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->b:Lcom/google/a/c;

    goto :goto_0

    .line 4681
    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4682
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c:Lcom/google/a/c;

    goto :goto_0

    .line 4686
    :sswitch_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4687
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d:Lcom/google/a/c;

    goto :goto_0

    .line 4691
    :sswitch_4
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4692
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->e:Lcom/google/a/c;

    goto :goto_0

    .line 4696
    :sswitch_5
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4697
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->f:Lcom/google/a/c;

    goto :goto_0

    .line 4701
    :sswitch_6
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4702
    invoke-virtual {p1}, Lcom/google/a/d;->q()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->g:I

    goto :goto_0

    .line 4664
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 4541
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4744
    if-nez p1, :cond_0

    .line 4745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4747
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4748
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c:Lcom/google/a/c;

    .line 4750
    return-object p0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/z;
    .locals 1

    .prologue
    .line 4578
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4541
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4768
    if-nez p1, :cond_0

    .line 4769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4771
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4772
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d:Lcom/google/a/c;

    .line 4774
    return-object p0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/z;
    .locals 2

    .prologue
    .line 4582
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    .line 4583
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4584
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 4586
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4541
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4541
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4792
    if-nez p1, :cond_0

    .line 4793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4795
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4796
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->e:Lcom/google/a/c;

    .line 4798
    return-object p0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/z;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4600
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aa;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 4601
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4602
    const/4 v1, 0x0

    .line 4603
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    .line 4606
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4607
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 4608
    or-int/lit8 v0, v0, 0x2

    .line 4610
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4611
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 4612
    or-int/lit8 v0, v0, 0x4

    .line 4614
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->c(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4615
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 4616
    or-int/lit8 v0, v0, 0x8

    .line 4618
    :cond_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->d(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4619
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 4620
    or-int/lit8 v0, v0, 0x10

    .line 4622
    :cond_3
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->f:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->e(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4623
    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    .line 4624
    or-int/lit8 v0, v0, 0x20

    .line 4626
    :cond_4
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->g:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;I)I

    .line 4627
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/z;I)I

    .line 4628
    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public e(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4816
    if-nez p1, :cond_0

    .line 4817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4819
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a:I

    .line 4820
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->f:Lcom/google/a/c;

    .line 4822
    return-object p0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 4541
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 4541
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 4541
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 4541
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 4655
    const/4 v0, 0x1

    return v0
.end method
