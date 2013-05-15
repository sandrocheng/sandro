.class public final Lcom/avast/android/generic/internet/c/a/f;
.super Lcom/google/a/l;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/h;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/f;


# instance fields
.field private b:I

.field private c:Lcom/google/a/c;

.field private d:Lcom/google/a/c;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/a/c;

.field private h:Lcom/avast/android/generic/internet/c/a/t;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4214
    new-instance v0, Lcom/avast/android/generic/internet/c/a/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/f;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/f;->a:Lcom/avast/android/generic/internet/c/a/f;

    .line 4215
    sget-object v0, Lcom/avast/android/generic/internet/c/a/f;->a:Lcom/avast/android/generic/internet/c/a/f;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/f;->r()V

    .line 4216
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/g;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3613
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 3717
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/f;->i:B

    .line 3749
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/f;->j:I

    .line 3614
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/g;Lcom/avast/android/generic/internet/c/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/f;-><init>(Lcom/avast/android/generic/internet/c/a/g;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3615
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 3717
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/f;->i:B

    .line 3749
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/f;->j:I

    .line 3615
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/f;->e:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/f;
    .locals 1

    .prologue
    .line 3619
    sget-object v0, Lcom/avast/android/generic/internet/c/a/f;->a:Lcom/avast/android/generic/internet/c/a/f;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/avast/android/generic/internet/c/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3815
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/f;->n()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/g;->a(Ljava/io/InputStream;)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/internet/c/a/g;

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/avast/android/generic/internet/c/a/g;)Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/f;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 3860
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/f;->n()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/avast/android/generic/internet/c/a/f;)Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/f;Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/t;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/f;->h:Lcom/avast/android/generic/internet/c/a/t;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/f;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/f;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/f;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/f;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/f;->d:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/f;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3608
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/f;->g:Lcom/google/a/c;

    return-object p1
.end method

.method public static n()Lcom/avast/android/generic/internet/c/a/g;
    .locals 1

    .prologue
    .line 3857
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/g;->k()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->f:Ljava/lang/Object;

    .line 3679
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3680
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3682
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->f:Ljava/lang/Object;

    .line 3685
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 3710
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->c:Lcom/google/a/c;

    .line 3711
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->d:Lcom/google/a/c;

    .line 3712
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/f;->e:I

    .line 3713
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->f:Ljava/lang/Object;

    .line 3714
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->g:Lcom/google/a/c;

    .line 3715
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->a()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->h:Lcom/avast/android/generic/internet/c/a/t;

    .line 3716
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3608
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/f;->p()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3608
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/f;->o()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3728
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/f;->w()I

    .line 3729
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3730
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3732
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3733
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->d:Lcom/google/a/c;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3735
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3736
    const/4 v0, 0x3

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 3738
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 3739
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->g:Lcom/google/a/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3741
    :cond_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 3742
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/f;->q()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3744
    :cond_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 3745
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/f;->h:Lcom/avast/android/generic/internet/c/a/t;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 3747
    :cond_5
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3631
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 3634
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->c:Lcom/google/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 3641
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

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

.method public e()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 3644
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->d:Lcom/google/a/c;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 3651
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

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
    .line 3654
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->e:I

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 3661
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->f:Ljava/lang/Object;

    .line 3665
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3666
    check-cast v0, Ljava/lang/String;

    .line 3674
    :goto_0
    return-object v0

    .line 3668
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3670
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3671
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3672
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/f;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3674
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 3693
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->g:Lcom/google/a/c;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 3703
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/avast/android/generic/internet/c/a/t;
    .locals 1

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/f;->h:Lcom/avast/android/generic/internet/c/a/t;

    return-object v0
.end method

.method public o()Lcom/avast/android/generic/internet/c/a/g;
    .locals 1

    .prologue
    .line 3858
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/f;->n()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/avast/android/generic/internet/c/a/g;
    .locals 1

    .prologue
    .line 3862
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/f;->a(Lcom/avast/android/generic/internet/c/a/f;)Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3719
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/f;->i:B

    .line 3720
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3723
    :goto_0
    return v0

    .line 3720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3722
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/f;->i:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3751
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/f;->j:I

    .line 3752
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3780
    :goto_0
    return v0

    .line 3754
    :cond_0
    const/4 v0, 0x0

    .line 3755
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3756
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/f;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3759
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3760
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/f;->d:Lcom/google/a/c;

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3763
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 3764
    const/4 v1, 0x3

    iget v2, p0, Lcom/avast/android/generic/internet/c/a/f;->e:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3767
    :cond_3
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 3768
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/f;->g:Lcom/google/a/c;

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3771
    :cond_4
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 3772
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/f;->q()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3775
    :cond_5
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/f;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 3776
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/f;->h:Lcom/avast/android/generic/internet/c/a/t;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3779
    :cond_6
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/f;->j:I

    goto :goto_0
.end method
