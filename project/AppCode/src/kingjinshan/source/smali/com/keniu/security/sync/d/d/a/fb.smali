.class public final Lcom/keniu/security/sync/d/d/a/fb;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fd;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/fb;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gy;

.field private h:Lcom/keniu/security/sync/d/d/a/hc;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28479
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fb;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fb;-><init>()V

    .line 28480
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fb;->d:Lcom/keniu/security/sync/d/d/a/fb;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fb;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fb;->h:Lcom/keniu/security/sync/d/d/a/hc;

    .line 28481
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 27785
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 27851
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->i:B

    .line 27883
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->k:I

    .line 27785
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/fc;)V
    .locals 1
    .parameter

    .prologue
    .line 27778
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fb;-><init>(Lcom/keniu/security/sync/d/d/a/fc;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/fc;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27783
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 27851
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->i:B

    .line 27883
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->k:I

    .line 27784
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fb;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27778
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter

    .prologue
    .line 27916
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27922
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter

    .prologue
    .line 27970
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27976
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter

    .prologue
    .line 27938
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27944
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fc;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter

    .prologue
    .line 27927
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27933
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fc;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fb;)Lcom/keniu/security/sync/d/d/a/fc;
    .locals 1
    .parameter

    .prologue
    .line 27983
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fb;)Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fb;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27778
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fb;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27778
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fb;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fb;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27778
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fb;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 2
    .parameter

    .prologue
    .line 27949
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    .line 27950
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27951
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    .line 27953
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27960
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    .line 27961
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fc;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27962
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fc;)Lcom/keniu/security/sync/d/d/a/fb;

    move-result-object v0

    .line 27964
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/fc;
    .locals 1
    .parameter

    .prologue
    .line 27990
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;-><init>(Lcom/b/a/dp;)V

    .line 27991
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1

    .prologue
    .line 27789
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fb;->d:Lcom/keniu/security/sync/d/d/a/fb;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 27798
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aF()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 27778
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fb;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/fb;
    .locals 1

    .prologue
    .line 27793
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fb;->d:Lcom/keniu/security/sync/d/d/a/fb;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 27847
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 27848
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->g:Lcom/keniu/security/sync/d/d/a/gy;

    .line 27849
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->h:Lcom/keniu/security/sync/d/d/a/hc;

    .line 27850
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/fc;
    .locals 1

    .prologue
    .line 27980
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/fc;
    .locals 1

    .prologue
    .line 27981
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fc;
    .locals 1

    .prologue
    .line 27985
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fc;->a(Lcom/keniu/security/sync/d/d/a/fb;)Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27910
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 27778
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fb;->x()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 27778
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 27778
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fb;->x()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 27778
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fc;->i()Lcom/keniu/security/sync/d/d/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 27778
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fb;->d:Lcom/keniu/security/sync/d/d/a/fb;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 27778
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fb;->d:Lcom/keniu/security/sync/d/d/a/fb;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 27778
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fc;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/fc;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 27870
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fb;->b()I

    .line 27871
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 27872
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 27874
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 27875
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 27877
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 27878
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fb;->h:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 27880
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 27881
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27853
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->i:B

    .line 27854
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 27865
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 27854
    goto :goto_0

    .line 27856
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fb;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27857
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fb;->i:B

    move v0, v2

    .line 27858
    goto :goto_0

    .line 27860
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27861
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fb;->i:B

    move v0, v2

    .line 27862
    goto :goto_0

    .line 27864
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fb;->i:B

    move v0, v3

    .line 27865
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 27885
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->k:I

    .line 27886
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 27903
    :goto_0
    return v0

    .line 27888
    :cond_0
    const/4 v0, 0x0

    .line 27889
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 27890
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 27893
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 27894
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fb;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27897
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 27898
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fb;->h:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27901
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fb;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 27902
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 27803
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aG()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27811
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

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
    .line 27814
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 27817
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 27824
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

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
    .line 27827
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 27830
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 27837
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->e:I

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

.method public final q()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 27840
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1

    .prologue
    .line 27843
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fb;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method
