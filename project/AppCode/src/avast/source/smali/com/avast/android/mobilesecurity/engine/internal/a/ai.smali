.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ak;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;


# instance fields
.field private b:I

.field private c:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

.field private d:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

.field private e:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

.field private f:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2215
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    .line 2216
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->m()V

    .line 2217
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aj;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1688
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 1748
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->g:B

    .line 1774
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->h:I

    .line 1689
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aj;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1683
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aj;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1690
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 1748
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->g:B

    .line 1774
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->h:I

    .line 1690
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1683
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    return-object p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 1

    .prologue
    .line 1694
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 1877
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    return-object p1
.end method

.method public static j()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1

    .prologue
    .line 1874
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->q()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 1743
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    .line 1744
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    .line 1745
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    .line 1746
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    .line 1747
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

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

    .line 1759
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->w()I

    .line 1760
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1763
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1764
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1766
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1767
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1769
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1770
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1772
    :cond_3
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1706
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 1716
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

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

.method public e()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1726
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

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

.method public g()Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 1736
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

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

.method public i()Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    return-object v0
.end method

.method public k()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1

    .prologue
    .line 1875
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1

    .prologue
    .line 1879
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1750
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->g:B

    .line 1751
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1754
    :goto_0
    return v0

    .line 1751
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1753
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->g:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1776
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->h:I

    .line 1777
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1797
    :goto_0
    return v0

    .line 1779
    :cond_0
    const/4 v0, 0x0

    .line 1780
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1781
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    invoke-static {v2, v1}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1784
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1785
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    invoke-static {v3, v1}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1788
    :cond_2
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1789
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1792
    :cond_3
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1793
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    invoke-static {v4, v1}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1796
    :cond_4
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->h:I

    goto :goto_0
.end method
