.class public final Lcom/avast/android/generic/internet/c/a/v;
.super Lcom/google/a/l;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/z;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/v;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Lcom/avast/android/generic/internet/c/a/x;

.field private e:Ljava/lang/Object;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3144
    new-instance v0, Lcom/avast/android/generic/internet/c/a/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/v;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/v;->a:Lcom/avast/android/generic/internet/c/a/v;

    .line 3145
    sget-object v0, Lcom/avast/android/generic/internet/c/a/v;->a:Lcom/avast/android/generic/internet/c/a/v;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/v;->m()V

    .line 3146
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/w;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2550
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 2786
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/v;->f:B

    .line 2809
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/v;->g:I

    .line 2551
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/w;Lcom/avast/android/generic/internet/c/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2545
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/v;-><init>(Lcom/avast/android/generic/internet/c/a/w;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2552
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 2786
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/v;->f:B

    .line 2809
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/v;->g:I

    .line 2552
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/v;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2545
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/v;
    .locals 1

    .prologue
    .line 2556
    sget-object v0, Lcom/avast/android/generic/internet/c/a/v;->a:Lcom/avast/android/generic/internet/c/a/v;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;
    .locals 1
    .parameter

    .prologue
    .line 2908
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->h()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/v;Lcom/avast/android/generic/internet/c/a/x;)Lcom/avast/android/generic/internet/c/a/x;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/v;->d:Lcom/avast/android/generic/internet/c/a/x;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/v;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/v;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/avast/android/generic/internet/c/a/w;
    .locals 1

    .prologue
    .line 2905
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/w;->e()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->c:Ljava/lang/Object;

    .line 2729
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2730
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 2732
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->c:Ljava/lang/Object;

    .line 2735
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private l()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->e:Ljava/lang/Object;

    .line 2771
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2772
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 2774
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->e:Ljava/lang/Object;

    .line 2777
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 2782
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->c:Ljava/lang/Object;

    .line 2783
    sget-object v0, Lcom/avast/android/generic/internet/c/a/x;->a:Lcom/avast/android/generic/internet/c/a/x;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->d:Lcom/avast/android/generic/internet/c/a/x;

    .line 2784
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->e:Ljava/lang/Object;

    .line 2785
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2545
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/v;->j()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2545
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/v;->i()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2797
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/v;->w()I

    .line 2798
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2799
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/v;->k()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2801
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2802
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->d:Lcom/avast/android/generic/internet/c/a/x;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/x;->a()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->c(II)V

    .line 2804
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2805
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/v;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2807
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2711
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->c:Ljava/lang/Object;

    .line 2715
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2716
    check-cast v0, Ljava/lang/String;

    .line 2724
    :goto_0
    return-object v0

    .line 2718
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 2720
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2721
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/v;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2724
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 2743
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

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

.method public e()Lcom/avast/android/generic/internet/c/a/x;
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->d:Lcom/avast/android/generic/internet/c/a/x;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 2753
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

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

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/v;->e:Ljava/lang/Object;

    .line 2757
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2758
    check-cast v0, Ljava/lang/String;

    .line 2766
    :goto_0
    return-object v0

    .line 2760
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 2762
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2763
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2764
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/v;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2766
    goto :goto_0
.end method

.method public i()Lcom/avast/android/generic/internet/c/a/w;
    .locals 1

    .prologue
    .line 2906
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->h()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/avast/android/generic/internet/c/a/w;
    .locals 1

    .prologue
    .line 2910
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/v;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2788
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/v;->f:B

    .line 2789
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2792
    :goto_0
    return v0

    .line 2789
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2791
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/v;->f:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2811
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/v;->g:I

    .line 2812
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2828
    :goto_0
    return v0

    .line 2814
    :cond_0
    const/4 v0, 0x0

    .line 2815
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2816
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/v;->k()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2819
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2820
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/v;->d:Lcom/avast/android/generic/internet/c/a/x;

    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/x;->a()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2823
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/v;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2824
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/v;->l()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2827
    :cond_3
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/v;->g:I

    goto :goto_0
.end method
