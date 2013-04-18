.class public final Lcom/keniu/security/sync/d/d/a/bz;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/cb;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/bz;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gy;

.field private h:Ljava/util/List;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23398
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bz;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bz;-><init>()V

    .line 23399
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bz;->d:Lcom/keniu/security/sync/d/d/a/bz;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bz;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    .line 23400
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 22579
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 22653
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->i:B

    .line 22685
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->k:I

    .line 22579
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ca;)V
    .locals 1
    .parameter

    .prologue
    .line 22572
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bz;-><init>(Lcom/keniu/security/sync/d/d/a/ca;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ca;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 22577
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 22653
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->i:B

    .line 22685
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->k:I

    .line 22578
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bz;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22572
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bz;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter

    .prologue
    .line 22718
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22724
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter

    .prologue
    .line 22772
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22778
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter

    .prologue
    .line 22740
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22746
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter

    .prologue
    .line 22729
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22735
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22572
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bz;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22572
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bz;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bz;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 22572
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bz;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22572
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 2
    .parameter

    .prologue
    .line 22751
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    .line 22752
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22753
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    .line 22755
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22762
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    .line 22763
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22764
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    .line 22766
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 22792
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;-><init>(Lcom/b/a/dp;)V

    .line 22793
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/bz;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 22785
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/bz;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1

    .prologue
    .line 22583
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bz;->d:Lcom/keniu/security/sync/d/d/a/bz;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 22592
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ap()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 22572
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bz;->j:Z

    return v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 22572
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bz;->j:Z

    return v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1

    .prologue
    .line 22587
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bz;->d:Lcom/keniu/security/sync/d/d/a/bz;

    return-object v0
.end method

.method private v()V
    .locals 1

    .prologue
    .line 22649
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 22650
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->g:Lcom/keniu/security/sync/d/d/a/gy;

    .line 22651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    .line 22652
    return-void
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 22782
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 22783
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 22787
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/bz;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22712
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bz;->y()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22572
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bz;->y()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22572
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ca;->i()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22572
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bz;->d:Lcom/keniu/security/sync/d/d/a/bz;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22572
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bz;->d:Lcom/keniu/security/sync/d/d/a/bz;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 22572
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ca;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter

    .prologue
    .line 22641
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hc;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22672
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bz;->b()I

    .line 22673
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 22674
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 22676
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 22677
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 22679
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 22680
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 22679
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 22682
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 22683
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22655
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->i:B

    .line 22656
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 22667
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 22656
    goto :goto_0

    .line 22658
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bz;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22659
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bz;->i:B

    move v0, v2

    .line 22660
    goto :goto_0

    .line 22662
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22663
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bz;->i:B

    move v0, v2

    .line 22664
    goto :goto_0

    .line 22666
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bz;->i:B

    move v0, v3

    .line 22667
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22687
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->k:I

    .line 22688
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 22705
    :goto_0
    return v0

    .line 22691
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 22692
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 22695
    :goto_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bz;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 22696
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bz;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v2

    move v2, v0

    .line 22699
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 22700
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 22699
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 22703
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 22704
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->k:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1
    .parameter

    .prologue
    .line 22645
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 22597
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aq()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22605
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->e:I

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
    .line 22608
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 22611
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 22618
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 22621
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 22624
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 22631
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 22635
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 22638
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
