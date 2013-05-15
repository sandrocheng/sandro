.class public final Lcom/avast/android/generic/internet/c/a/aq;
.super Lcom/google/a/n;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/ar;


# instance fields
.field private a:I

.field private b:Lcom/avast/android/generic/internet/c/a/av;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6707
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 6835
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->b:Lcom/avast/android/generic/internet/c/a/av;

    .line 6708
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/aq;->f()V

    .line 6709
    return-void
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1

    .prologue
    .line 6702
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aq;->k()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 6712
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1

    .prologue
    .line 6714
    new-instance v0, Lcom/avast/android/generic/internet/c/a/aq;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/aq;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/aq;
    .locals 2

    .prologue
    .line 6729
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aq;->k()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aq;->d()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 6867
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    .line 6868
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/aq;->c:I

    .line 6870
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 6775
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ap;->a()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6785
    :cond_0
    :goto_0
    return-object p0

    .line 6776
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6777
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ap;->c()Lcom/avast/android/generic/internet/c/a/av;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/avast/android/generic/internet/c/a/av;)Lcom/avast/android/generic/internet/c/a/aq;

    .line 6779
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6780
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ap;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/aq;->a(I)Lcom/avast/android/generic/internet/c/a/aq;

    .line 6782
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6783
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ap;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/aq;->b(I)Lcom/avast/android/generic/internet/c/a/aq;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/av;)Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 6843
    if-nez p1, :cond_0

    .line 6844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6846
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    .line 6847
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/aq;->b:Lcom/avast/android/generic/internet/c/a/av;

    .line 6849
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/aq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 6798
    sparse-switch v0, :sswitch_data_0

    .line 6803
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6805
    :sswitch_0
    return-object p0

    .line 6810
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 6811
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/av;->a(I)Lcom/avast/android/generic/internet/c/a/av;

    move-result-object v0

    .line 6812
    if-eqz v0, :cond_0

    .line 6813
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    .line 6814
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->b:Lcom/avast/android/generic/internet/c/a/av;

    goto :goto_0

    .line 6819
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    .line 6820
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->c:I

    goto :goto_0

    .line 6824
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    .line 6825
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->d:I

    goto :goto_0

    .line 6798
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 6702
    check-cast p1, Lcom/avast/android/generic/internet/c/a/ap;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/ap;
    .locals 1

    .prologue
    .line 6733
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ap;->a()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 6888
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    .line 6889
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/aq;->d:I

    .line 6891
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6702
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/ap;
    .locals 2

    .prologue
    .line 6737
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aq;->d()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v0

    .line 6738
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ap;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6739
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 6741
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6702
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6702
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aq;->a()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/ap;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 6755
    new-instance v2, Lcom/avast/android/generic/internet/c/a/ap;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/ap;-><init>(Lcom/avast/android/generic/internet/c/a/aq;Lcom/avast/android/generic/internet/c/a/ac;)V

    .line 6756
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/aq;->a:I

    .line 6757
    const/4 v1, 0x0

    .line 6758
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 6761
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/aq;->b:Lcom/avast/android/generic/internet/c/a/av;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ap;->a(Lcom/avast/android/generic/internet/c/a/ap;Lcom/avast/android/generic/internet/c/a/av;)Lcom/avast/android/generic/internet/c/a/av;

    .line 6762
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 6763
    or-int/lit8 v0, v0, 0x2

    .line 6765
    :cond_0
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/aq;->c:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ap;->a(Lcom/avast/android/generic/internet/c/a/ap;I)I

    .line 6766
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 6767
    or-int/lit8 v0, v0, 0x4

    .line 6769
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/aq;->d:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ap;->b(Lcom/avast/android/generic/internet/c/a/ap;I)I

    .line 6770
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/ap;->c(Lcom/avast/android/generic/internet/c/a/ap;I)I

    .line 6771
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 6702
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aq;->b()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 6702
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aq;->a()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 6702
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aq;->a()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 6702
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aq;->c()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 6789
    const/4 v0, 0x1

    return v0
.end method
