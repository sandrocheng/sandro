.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/at;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3039
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    .line 3040
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->m()V

    .line 3041
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/as;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2616
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 2676
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->g:B

    .line 2702
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->h:I

    .line 2617
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/as;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2611
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/as;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2618
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 2676
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->g:B

    .line 2702
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->h:I

    .line 2618
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2611
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->c:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2611
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->f:J

    return-wide p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
    .locals 1

    .prologue
    .line 2622
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1
    .parameter

    .prologue
    .line 2805
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2611
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->d:I

    return p1
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2611
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->e:I

    return p1
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2611
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    return p1
.end method

.method public static j()Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1

    .prologue
    .line 2802
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2671
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->c:I

    .line 2672
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->d:I

    .line 2673
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->e:I

    .line 2674
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->f:J

    .line 2675
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

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

    .line 2687
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->w()I

    .line 2688
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2689
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->d(II)V

    .line 2691
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2692
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->d(II)V

    .line 2694
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2695
    const/4 v0, 0x3

    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->d(II)V

    .line 2697
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2698
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->f:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 2700
    :cond_3
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2634
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 2637
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 2644
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

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
    .line 2647
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->d:I

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 2654
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

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
    .line 2657
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->e:I

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 2664
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

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

.method public i()J
    .locals 2

    .prologue
    .line 2667
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->f:J

    return-wide v0
.end method

.method public k()Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1

    .prologue
    .line 2803
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1

    .prologue
    .line 2807
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2678
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->g:B

    .line 2679
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2682
    :goto_0
    return v0

    .line 2679
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2681
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->g:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2704
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->h:I

    .line 2705
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2725
    :goto_0
    return v0

    .line 2707
    :cond_0
    const/4 v0, 0x0

    .line 2708
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2709
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->c:I

    invoke-static {v2, v1}, Lcom/google/a/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2712
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2713
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->d:I

    invoke-static {v3, v1}, Lcom/google/a/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2716
    :cond_2
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2717
    const/4 v1, 0x3

    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->e:I

    invoke-static {v1, v2}, Lcom/google/a/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2720
    :cond_3
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2721
    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->f:J

    invoke-static {v4, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2724
    :cond_4
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->h:I

    goto :goto_0
.end method
