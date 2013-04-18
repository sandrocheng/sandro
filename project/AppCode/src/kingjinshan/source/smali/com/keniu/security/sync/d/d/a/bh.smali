.class public final Lcom/keniu/security/sync/d/d/a/bh;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bj;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/bh;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Lcom/keniu/security/sync/d/d/a/hc;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32292
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bh;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bh;-><init>()V

    .line 32293
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bh;->c:Lcom/keniu/security/sync/d/d/a/bh;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bh;->f:Lcom/keniu/security/sync/d/d/a/hc;

    .line 32294
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 31736
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 31788
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->g:B

    .line 31817
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->h:I

    .line 31736
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/bi;)V
    .locals 1
    .parameter

    .prologue
    .line 31729
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bh;-><init>(Lcom/keniu/security/sync/d/d/a/bi;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/bi;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31734
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 31788
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->g:B

    .line 31817
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->h:I

    .line 31735
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31729
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bh;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 31846
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31852
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 31900
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31906
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 31868
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31874
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 31857
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31863
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/bh;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1
    .parameter

    .prologue
    .line 31913
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bh;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31729
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bh;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31729
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bh;->f:Lcom/keniu/security/sync/d/d/a/hc;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 2
    .parameter

    .prologue
    .line 31879
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    .line 31880
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31881
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    .line 31883
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31890
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    .line 31891
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31892
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    .line 31894
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1
    .parameter

    .prologue
    .line 31920
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;-><init>(Lcom/b/a/dp;)V

    .line 31921
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1

    .prologue
    .line 31740
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bh;->c:Lcom/keniu/security/sync/d/d/a/bh;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 31749
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aR()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 31729
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bh;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1

    .prologue
    .line 31744
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bh;->c:Lcom/keniu/security/sync/d/d/a/bh;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 31785
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 31786
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->f:Lcom/keniu/security/sync/d/d/a/hc;

    .line 31787
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 31910
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 31911
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 31915
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bh;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31840
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31729
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bh;->u()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31729
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 31729
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bh;->u()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 31729
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bi;->i()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31729
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bh;->c:Lcom/keniu/security/sync/d/d/a/bh;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31729
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bh;->c:Lcom/keniu/security/sync/d/d/a/bh;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 31729
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/bi;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 31807
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bh;->b()I

    .line 31808
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 31809
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 31811
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 31812
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->f:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 31814
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 31815
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31790
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->g:B

    .line 31791
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 31802
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 31791
    goto :goto_0

    .line 31793
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bh;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 31794
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bh;->g:B

    move v0, v2

    .line 31795
    goto :goto_0

    .line 31797
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 31798
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bh;->g:B

    move v0, v2

    .line 31799
    goto :goto_0

    .line 31801
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bh;->g:B

    move v0, v3

    .line 31802
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 31819
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->h:I

    .line 31820
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 31833
    :goto_0
    return v0

    .line 31822
    :cond_0
    const/4 v0, 0x0

    .line 31823
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bh;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 31824
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 31827
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bh;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 31828
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bh;->f:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31831
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bh;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 31832
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 31754
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aS()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31762
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->d:I

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
    .line 31765
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 31768
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 31775
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->d:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 31778
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->f:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1

    .prologue
    .line 31781
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bh;->f:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method
