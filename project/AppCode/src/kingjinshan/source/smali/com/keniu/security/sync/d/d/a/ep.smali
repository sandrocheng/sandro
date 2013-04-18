.class public final Lcom/keniu/security/sync/d/d/a/ep;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/er;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ep;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gn;

.field private h:Lcom/b/a/eu;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33577
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ep;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ep;-><init>()V

    .line 33578
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ep;->d:Lcom/keniu/security/sync/d/d/a/ep;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    sget-object v1, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    .line 33579
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32903
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 32970
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->i:B

    .line 33008
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->k:I

    .line 32903
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/eq;)V
    .locals 1
    .parameter

    .prologue
    .line 32896
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ep;-><init>(Lcom/keniu/security/sync/d/d/a/eq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/eq;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 32901
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 32970
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->i:B

    .line 33008
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->k:I

    .line 32902
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ep;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32896
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ep;->e:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ep;)Lcom/b/a/eu;
    .locals 1
    .parameter

    .prologue
    .line 32896
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ep;Lcom/b/a/eu;)Lcom/b/a/eu;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32896
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter

    .prologue
    .line 33046
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33052
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter

    .prologue
    .line 33100
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33106
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter

    .prologue
    .line 33068
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33074
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eq;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter

    .prologue
    .line 33057
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33063
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eq;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ep;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32896
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ep;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32896
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 2
    .parameter

    .prologue
    .line 33079
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    .line 33080
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33081
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    .line 33083
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ep;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33090
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    .line 33091
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/eq;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33092
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/eq;)Lcom/keniu/security/sync/d/d/a/ep;

    move-result-object v0

    .line 33094
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/eq;
    .locals 1
    .parameter

    .prologue
    .line 33120
    new-instance v0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;-><init>(Lcom/b/a/dp;)V

    .line 33121
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/ep;)Lcom/keniu/security/sync/d/d/a/eq;
    .locals 1
    .parameter

    .prologue
    .line 33113
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/ep;)Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1

    .prologue
    .line 32907
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ep;->d:Lcom/keniu/security/sync/d/d/a/ep;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 32916
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aV()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 32896
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ep;->j:Z

    return v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ep;
    .locals 1

    .prologue
    .line 32911
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ep;->d:Lcom/keniu/security/sync/d/d/a/ep;

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 32966
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32967
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    .line 32968
    sget-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    .line 32969
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/eq;
    .locals 1

    .prologue
    .line 33110
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/eq;
    .locals 1

    .prologue
    .line 33111
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/eq;
    .locals 1

    .prologue
    .line 33115
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/eq;->a(Lcom/keniu/security/sync/d/d/a/ep;)Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33040
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 32896
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ep;->w()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 32896
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 32896
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ep;->w()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 32896
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/eq;->i()Lcom/keniu/security/sync/d/d/a/eq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 32896
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ep;->d:Lcom/keniu/security/sync/d/d/a/ep;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 32896
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ep;->d:Lcom/keniu/security/sync/d/d/a/ep;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 32896
    new-instance v0, Lcom/keniu/security/sync/d/d/a/eq;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/eq;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32962
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 32995
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ep;->b()I

    .line 32996
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 32997
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 32999
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 33000
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 33002
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    invoke-interface {v1}, Lcom/b/a/eu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 33003
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    invoke-interface {v2, v0}, Lcom/b/a/eu;->a(I)Lcom/b/a/i;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 33002
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33005
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ep;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 33006
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32972
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->i:B

    .line 32973
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 32990
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 32973
    goto :goto_0

    .line 32975
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ep;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 32976
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ep;->i:B

    move v0, v2

    .line 32977
    goto :goto_0

    .line 32979
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 32980
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ep;->i:B

    move v0, v2

    .line 32981
    goto :goto_0

    .line 32983
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ep;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32984
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 32985
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ep;->i:B

    move v0, v2

    .line 32986
    goto :goto_0

    .line 32989
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ep;->i:B

    move v0, v3

    .line 32990
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33010
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->k:I

    .line 33011
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 33033
    :goto_0
    return v0

    .line 33014
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 33015
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 33018
    :goto_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ep;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 33019
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v2

    .line 33024
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    invoke-interface {v3}, Lcom/b/a/eu;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 33025
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    invoke-interface {v3, v1}, Lcom/b/a/eu;->a(I)Lcom/b/a/i;

    move-result-object v3

    invoke-static {v3}, Lcom/b/a/n;->b(Lcom/b/a/i;)I

    move-result v3

    add-int/2addr v2, v3

    .line 33024
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33028
    :cond_2
    add-int/2addr v0, v2

    .line 33029
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 33031
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ep;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 33032
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->k:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 32921
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aW()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32929
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->e:I

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
    .line 32932
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 32935
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 32942
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 32945
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 32948
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 32956
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 32959
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ep;->h:Lcom/b/a/eu;

    invoke-interface {v0}, Lcom/b/a/eu;->size()I

    move-result v0

    return v0
.end method
