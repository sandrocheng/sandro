.class public final Lcom/keniu/security/sync/d/d/a/bn;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bp;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/bn;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gj;

.field private h:Lcom/keniu/security/sync/d/d/a/gy;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13334
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bn;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bn;-><init>()V

    .line 13335
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bn;->d:Lcom/keniu/security/sync/d/d/a/bn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bn;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bn;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 13336
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12640
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 12706
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->i:B

    .line 12738
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->k:I

    .line 12640
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/bo;)V
    .locals 1
    .parameter

    .prologue
    .line 12633
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bn;-><init>(Lcom/keniu/security/sync/d/d/a/bo;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/bo;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12638
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 12706
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->i:B

    .line 12738
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->k:I

    .line 12639
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bn;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12633
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 12771
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12777
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 12825
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12831
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bo;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 12793
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12799
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bo;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 12782
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12788
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bo;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/bn;)Lcom/keniu/security/sync/d/d/a/bo;
    .locals 1
    .parameter

    .prologue
    .line 12838
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bn;)Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bn;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12633
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bn;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12633
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bn;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bn;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12633
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bn;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 2
    .parameter

    .prologue
    .line 12804
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    .line 12805
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12806
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    .line 12808
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bn;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12815
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    .line 12816
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bo;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12817
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bo;)Lcom/keniu/security/sync/d/d/a/bn;

    move-result-object v0

    .line 12819
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/bo;
    .locals 1
    .parameter

    .prologue
    .line 12845
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;-><init>(Lcom/b/a/dp;)V

    .line 12846
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1

    .prologue
    .line 12644
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bn;->d:Lcom/keniu/security/sync/d/d/a/bn;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12653
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->N()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 12633
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bn;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/bn;
    .locals 1

    .prologue
    .line 12648
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bn;->d:Lcom/keniu/security/sync/d/d/a/bn;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 12702
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 12703
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 12704
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 12705
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/bo;
    .locals 1

    .prologue
    .line 12835
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/bo;
    .locals 1

    .prologue
    .line 12836
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/bo;
    .locals 1

    .prologue
    .line 12840
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bo;->a(Lcom/keniu/security/sync/d/d/a/bn;)Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12765
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12633
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bn;->x()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12633
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12633
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bn;->x()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12633
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bo;->i()Lcom/keniu/security/sync/d/d/a/bo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12633
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bn;->d:Lcom/keniu/security/sync/d/d/a/bn;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12633
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bn;->d:Lcom/keniu/security/sync/d/d/a/bn;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 12633
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bo;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/bo;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12725
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bn;->b()I

    .line 12726
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12727
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 12729
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12730
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 12732
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 12733
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bn;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 12735
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bn;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 12736
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12708
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->i:B

    .line 12709
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 12720
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 12709
    goto :goto_0

    .line 12711
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bn;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12712
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bn;->i:B

    move v0, v2

    .line 12713
    goto :goto_0

    .line 12715
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12716
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bn;->i:B

    move v0, v2

    .line 12717
    goto :goto_0

    .line 12719
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bn;->i:B

    move v0, v3

    .line 12720
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12740
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->k:I

    .line 12741
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12758
    :goto_0
    return v0

    .line 12743
    :cond_0
    const/4 v0, 0x0

    .line 12744
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12745
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 12748
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12749
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bn;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12752
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 12753
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bn;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12756
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bn;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 12757
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 12658
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->O()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12666
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

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
    .line 12669
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 12672
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 12679
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 12682
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 12685
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 12692
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->e:I

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

.method public final q()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 12695
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 12698
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bn;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
