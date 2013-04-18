.class public final Lcom/keniu/security/sync/d/d/a/iv;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ix;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/iv;

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
    .line 10064
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iv;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iv;-><init>()V

    .line 10065
    sput-object v0, Lcom/keniu/security/sync/d/d/a/iv;->b:Lcom/keniu/security/sync/d/d/a/iv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10066
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9646
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 9684
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->e:B

    .line 9710
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->f:I

    .line 9646
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/iw;)V
    .locals 1
    .parameter

    .prologue
    .line 9639
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/iv;-><init>(Lcom/keniu/security/sync/d/d/a/iw;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/iw;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9644
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 9684
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->e:B

    .line 9710
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->f:I

    .line 9645
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/iv;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9639
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/iv;->c:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/iv;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9639
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter

    .prologue
    .line 9735
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9741
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter

    .prologue
    .line 9789
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9795
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter

    .prologue
    .line 9757
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9763
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter

    .prologue
    .line 9746
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9752
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/iv;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1
    .parameter

    .prologue
    .line 9802
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iv;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 2
    .parameter

    .prologue
    .line 9768
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    .line 9769
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9770
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    .line 9772
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9779
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    .line 9780
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9781
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    .line 9783
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1
    .parameter

    .prologue
    .line 9809
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;-><init>(Lcom/b/a/dp;)V

    .line 9810
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1

    .prologue
    .line 9650
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iv;->b:Lcom/keniu/security/sync/d/d/a/iv;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9659
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->H()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 9639
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/iv;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1

    .prologue
    .line 9654
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iv;->b:Lcom/keniu/security/sync/d/d/a/iv;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 9682
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9683
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1

    .prologue
    .line 9799
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1

    .prologue
    .line 9800
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1

    .prologue
    .line 9804
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iv;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9729
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9639
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iv;->r()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9639
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9639
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iv;->r()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9639
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iw;->i()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9639
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iv;->b:Lcom/keniu/security/sync/d/d/a/iv;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9639
    sget-object v0, Lcom/keniu/security/sync/d/d/a/iv;->b:Lcom/keniu/security/sync/d/d/a/iv;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9639
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/iw;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 9703
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iv;->b()I

    .line 9704
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9705
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 9707
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iv;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 9708
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9686
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->e:B

    .line 9687
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 9698
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9687
    goto :goto_0

    .line 9689
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iv;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9690
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/iv;->e:B

    move v0, v2

    .line 9691
    goto :goto_0

    .line 9693
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9694
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/iv;->e:B

    move v0, v2

    .line 9695
    goto :goto_0

    .line 9697
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/iv;->e:B

    move v0, v3

    .line 9698
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 9712
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->f:I

    .line 9713
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9722
    :goto_0
    return v0

    .line 9715
    :cond_0
    const/4 v0, 0x0

    .line 9716
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iv;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 9717
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9720
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iv;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 9721
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9664
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->I()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9672
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->c:I

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
    .line 9675
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 9678
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iv;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method
