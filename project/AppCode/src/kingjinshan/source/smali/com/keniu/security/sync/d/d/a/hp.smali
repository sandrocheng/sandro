.class public final Lcom/keniu/security/sync/d/d/a/hp;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hr;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/hp;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Lcom/keniu/security/sync/d/d/a/gn;

.field private i:J

.field private k:J

.field private l:I

.field private m:Ljava/lang/Object;

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2909
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hp;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hp;-><init>()V

    .line 2910
    sput-object v0, Lcom/keniu/security/sync/d/d/a/hp;->f:Lcom/keniu/security/sync/d/d/a/hp;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/hp;->i:J

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/hp;->k:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/hp;->l:I

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hp;->m:Ljava/lang/Object;

    .line 2911
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2242
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 2346
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->n:B

    .line 2384
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->o:I

    .line 2242
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/hq;)V
    .locals 1
    .parameter

    .prologue
    .line 2235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hp;-><init>(Lcom/keniu/security/sync/d/d/a/hq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/hq;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2240
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 2346
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->n:B

    .line 2384
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->o:I

    .line 2241
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2494
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hp;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hp;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2235
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hp;->l:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hp;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2235
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hp;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hp;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter

    .prologue
    .line 2425
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2431
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter

    .prologue
    .line 2479
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2485
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter

    .prologue
    .line 2447
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2453
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter

    .prologue
    .line 2436
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2442
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/hp;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2492
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hp;)Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hp;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/hp;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2235
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/hp;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2235
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hp;->k:J

    return-wide p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 2
    .parameter

    .prologue
    .line 2458
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    .line 2459
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2460
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    .line 2462
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hp;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2469
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    .line 2470
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2471
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/hq;)Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    .line 2473
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1
    .parameter

    .prologue
    .line 2499
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;-><init>(Lcom/b/a/dp;)V

    .line 2500
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1

    .prologue
    .line 2246
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hp;->f:Lcom/keniu/security/sync/d/d/a/hp;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2255
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static u()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2489
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v()Z
    .locals 1

    .prologue
    .line 2235
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/hp;->j:Z

    return v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/hp;
    .locals 1

    .prologue
    .line 2250
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hp;->f:Lcom/keniu/security/sync/d/d/a/hp;

    return-object v0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->m:Ljava/lang/Object;

    .line 2329
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2330
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 2332
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->m:Ljava/lang/Object;

    .line 2335
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 2340
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2341
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->i:J

    .line 2342
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->k:J

    .line 2343
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->l:I

    .line 2344
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->m:Ljava/lang/Object;

    .line 2345
    return-void
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/hq;
    .locals 1

    .prologue
    .line 2490
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2419
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hp;->A()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2235
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hp;->A()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2235
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hq;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2235
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hp;->f:Lcom/keniu/security/sync/d/d/a/hp;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2235
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hp;->f:Lcom/keniu/security/sync/d/d/a/hp;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2235
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hq;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/hq;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2365
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hp;->b()I

    .line 2366
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 2369
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2370
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->i:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 2372
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2373
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->k:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 2375
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2376
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->l:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 2378
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2379
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hp;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2381
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hp;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 2382
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2348
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->n:B

    .line 2349
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2360
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2349
    goto :goto_0

    .line 2351
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hp;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2352
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hp;->n:B

    move v0, v2

    .line 2353
    goto :goto_0

    .line 2355
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2356
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hp;->n:B

    move v0, v2

    .line 2357
    goto :goto_0

    .line 2359
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/hp;->n:B

    move v0, v3

    .line 2360
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2386
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->o:I

    .line 2387
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2412
    :goto_0
    return v0

    .line 2389
    :cond_0
    const/4 v0, 0x0

    .line 2390
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2394
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2395
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->i:J

    invoke-static {v3, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2398
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2399
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/hp;->k:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2402
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2403
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->l:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2406
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 2407
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hp;->x()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2410
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hp;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 2411
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2260
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2268
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 2281
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

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

.method public final n()J
    .locals 2

    .prologue
    .line 2284
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->i:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 2291
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

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

.method public final p()J
    .locals 2

    .prologue
    .line 2294
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->k:J

    return-wide v0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 2301
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

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

.method public final r()I
    .locals 1

    .prologue
    .line 2304
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->l:I

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 2311
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hp;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2314
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hp;->m:Ljava/lang/Object;

    .line 2315
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2316
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2324
    :goto_0
    return-object v1

    .line 2318
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 2320
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 2321
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2322
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/hp;->m:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2324
    goto :goto_0
.end method
