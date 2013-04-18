.class public final Lcom/keniu/security/sync/d/d/a/bt;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bv;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/bt;

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
    .line 24609
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bt;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bt;-><init>()V

    .line 24610
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bt;->d:Lcom/keniu/security/sync/d/d/a/bt;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bt;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bt;->h:Lcom/keniu/security/sync/d/d/a/hc;

    .line 24611
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 23915
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 23981
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->i:B

    .line 24013
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->k:I

    .line 23915
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/bu;)V
    .locals 1
    .parameter

    .prologue
    .line 23908
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bt;-><init>(Lcom/keniu/security/sync/d/d/a/bu;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/bu;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23913
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 23981
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->i:B

    .line 24013
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->k:I

    .line 23914
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bt;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23908
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 24046
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24052
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 24100
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24106
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bu;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 24068
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24074
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bu;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 24057
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24063
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bu;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/bt;)Lcom/keniu/security/sync/d/d/a/bu;
    .locals 1
    .parameter

    .prologue
    .line 24113
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bt;)Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bt;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23908
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bt;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23908
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bt;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bt;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23908
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bt;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 2
    .parameter

    .prologue
    .line 24079
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    .line 24080
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24081
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    .line 24083
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bt;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24090
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    .line 24091
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bu;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24092
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bu;)Lcom/keniu/security/sync/d/d/a/bt;

    move-result-object v0

    .line 24094
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/bu;
    .locals 1
    .parameter

    .prologue
    .line 24120
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;-><init>(Lcom/b/a/dp;)V

    .line 24121
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1

    .prologue
    .line 23919
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bt;->d:Lcom/keniu/security/sync/d/d/a/bt;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 23928
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->at()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 23908
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bt;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/bt;
    .locals 1

    .prologue
    .line 23923
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bt;->d:Lcom/keniu/security/sync/d/d/a/bt;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 23977
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23978
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->g:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23979
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->h:Lcom/keniu/security/sync/d/d/a/hc;

    .line 23980
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/bu;
    .locals 1

    .prologue
    .line 24110
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/bu;
    .locals 1

    .prologue
    .line 24111
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/bu;
    .locals 1

    .prologue
    .line 24115
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bu;->a(Lcom/keniu/security/sync/d/d/a/bt;)Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24040
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 23908
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bt;->x()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 23908
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 23908
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bt;->x()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 23908
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bu;->i()Lcom/keniu/security/sync/d/d/a/bu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 23908
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bt;->d:Lcom/keniu/security/sync/d/d/a/bt;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 23908
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bt;->d:Lcom/keniu/security/sync/d/d/a/bt;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 23908
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bu;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/bu;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 24000
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bt;->b()I

    .line 24001
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 24002
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 24004
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 24005
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 24007
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 24008
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bt;->h:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 24010
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bt;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 24011
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23983
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->i:B

    .line 23984
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 23995
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 23984
    goto :goto_0

    .line 23986
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bt;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23987
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bt;->i:B

    move v0, v2

    .line 23988
    goto :goto_0

    .line 23990
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23991
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bt;->i:B

    move v0, v2

    .line 23992
    goto :goto_0

    .line 23994
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bt;->i:B

    move v0, v3

    .line 23995
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 24015
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->k:I

    .line 24016
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 24033
    :goto_0
    return v0

    .line 24018
    :cond_0
    const/4 v0, 0x0

    .line 24019
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 24020
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 24023
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 24024
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bt;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24027
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 24028
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bt;->h:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24031
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bt;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 24032
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 23933
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->au()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23941
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

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
    .line 23944
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 23947
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 23954
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

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
    .line 23957
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 23960
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 23967
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->e:I

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
    .line 23970
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1

    .prologue
    .line 23973
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bt;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method
