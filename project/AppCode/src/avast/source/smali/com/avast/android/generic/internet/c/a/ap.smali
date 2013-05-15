.class public final Lcom/avast/android/generic/internet/c/a/ap;
.super Lcom/google/a/l;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/ar;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/ap;


# instance fields
.field private b:I

.field private c:Lcom/avast/android/generic/internet/c/a/av;

.field private d:I

.field private e:I

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6904
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/ap;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ap;->a:Lcom/avast/android/generic/internet/c/a/ap;

    .line 6905
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ap;->a:Lcom/avast/android/generic/internet/c/a/ap;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ap;->k()V

    .line 6906
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/aq;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6527
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 6576
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->f:B

    .line 6599
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->g:I

    .line 6528
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/aq;Lcom/avast/android/generic/internet/c/a/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6522
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/ap;-><init>(Lcom/avast/android/generic/internet/c/a/aq;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6529
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 6576
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->f:B

    .line 6599
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->g:I

    .line 6529
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6522
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ap;->d:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/ap;
    .locals 1

    .prologue
    .line 6533
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ap;->a:Lcom/avast/android/generic/internet/c/a/ap;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 6698
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ap;->h()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/aq;->a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ap;Lcom/avast/android/generic/internet/c/a/av;)Lcom/avast/android/generic/internet/c/a/av;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6522
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ap;->c:Lcom/avast/android/generic/internet/c/a/av;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/ap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6522
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ap;->e:I

    return p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/ap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6522
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    return p1
.end method

.method public static h()Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1

    .prologue
    .line 6695
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aq;->e()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6572
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->c:Lcom/avast/android/generic/internet/c/a/av;

    .line 6573
    iput v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->d:I

    .line 6574
    iput v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->e:I

    .line 6575
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 6522
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ap;->j()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 6522
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ap;->i()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6587
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ap;->w()I

    .line 6588
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6589
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/av;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 6591
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6592
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(II)V

    .line 6594
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6595
    const/4 v0, 0x3

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 6597
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6545
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/av;
    .locals 1

    .prologue
    .line 6548
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->c:Lcom/avast/android/generic/internet/c/a/av;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 6555
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

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

.method public e()I
    .locals 1

    .prologue
    .line 6558
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->d:I

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 6565
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

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

.method public g()I
    .locals 1

    .prologue
    .line 6568
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->e:I

    return v0
.end method

.method public i()Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1

    .prologue
    .line 6696
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ap;->h()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/avast/android/generic/internet/c/a/aq;
    .locals 1

    .prologue
    .line 6700
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/ap;->a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6578
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->f:B

    .line 6579
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 6582
    :goto_0
    return v0

    .line 6579
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6581
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->f:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6601
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->g:I

    .line 6602
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6618
    :goto_0
    return v0

    .line 6604
    :cond_0
    const/4 v0, 0x0

    .line 6605
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 6606
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/av;->a()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6609
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 6610
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->d:I

    invoke-static {v3, v1}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6613
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ap;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 6614
    const/4 v1, 0x3

    iget v2, p0, Lcom/avast/android/generic/internet/c/a/ap;->e:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6617
    :cond_3
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ap;->g:I

    goto :goto_0
.end method
