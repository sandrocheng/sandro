.class public final Lcom/keniu/security/sync/d/d/a/kf;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/kh;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/kf;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Lcom/keniu/security/sync/d/d/a/ge;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9139
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kf;-><init>()V

    .line 9140
    sput-object v0, Lcom/keniu/security/sync/d/d/a/kf;->b:Lcom/keniu/security/sync/d/d/a/kf;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9141
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8721
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 8759
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->e:B

    .line 8785
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->f:I

    .line 8721
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/kg;)V
    .locals 1
    .parameter

    .prologue
    .line 8714
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/kf;-><init>(Lcom/keniu/security/sync/d/d/a/kg;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/kg;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8719
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 8759
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->e:B

    .line 8785
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->f:I

    .line 8720
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/kf;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8714
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/kf;->c:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/kf;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8714
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter

    .prologue
    .line 8810
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8816
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter

    .prologue
    .line 8864
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8870
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter

    .prologue
    .line 8832
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8838
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter

    .prologue
    .line 8821
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8827
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/kf;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1
    .parameter

    .prologue
    .line 8877
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kf;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 2
    .parameter

    .prologue
    .line 8843
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    .line 8844
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8845
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    .line 8847
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8854
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    .line 8855
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8856
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    .line 8858
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1
    .parameter

    .prologue
    .line 8884
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;-><init>(Lcom/b/a/dp;)V

    .line 8885
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1

    .prologue
    .line 8725
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kf;->b:Lcom/keniu/security/sync/d/d/a/kf;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8734
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->D()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 8714
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/kf;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1

    .prologue
    .line 8729
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kf;->b:Lcom/keniu/security/sync/d/d/a/kf;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 8757
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 8758
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1

    .prologue
    .line 8874
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1

    .prologue
    .line 8875
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1

    .prologue
    .line 8879
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kf;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8804
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8714
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kf;->r()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8714
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8714
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kf;->r()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8714
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kg;->i()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8714
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kf;->b:Lcom/keniu/security/sync/d/d/a/kf;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8714
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kf;->b:Lcom/keniu/security/sync/d/d/a/kf;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 8714
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/kg;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 8778
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kf;->b()I

    .line 8779
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8780
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 8782
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kf;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 8783
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8761
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->e:B

    .line 8762
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 8773
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 8762
    goto :goto_0

    .line 8764
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kf;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8765
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/kf;->e:B

    move v0, v2

    .line 8766
    goto :goto_0

    .line 8768
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8769
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/kf;->e:B

    move v0, v2

    .line 8770
    goto :goto_0

    .line 8772
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/kf;->e:B

    move v0, v3

    .line 8773
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8787
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->f:I

    .line 8788
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8797
    :goto_0
    return v0

    .line 8790
    :cond_0
    const/4 v0, 0x0

    .line 8791
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kf;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8792
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8795
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kf;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 8796
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 8739
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->E()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8747
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 8750
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 8753
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kf;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method
