.class public final Lcom/keniu/security/sync/d/d/a/ey;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fa;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/ey;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27753
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ey;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ey;-><init>()V

    .line 27754
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ey;->c:Lcom/keniu/security/sync/d/d/a/ey;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ey;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ey;->f:Ljava/lang/Object;

    .line 27755
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 27293
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 27383
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->g:B

    .line 27412
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->h:I

    .line 27293
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ez;)V
    .locals 1
    .parameter

    .prologue
    .line 27286
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ey;-><init>(Lcom/keniu/security/sync/d/d/a/ez;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ez;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27291
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 27383
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->g:B

    .line 27412
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->h:I

    .line 27292
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ey;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27286
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ey;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 27441
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27447
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 27495
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27501
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ez;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 27463
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27469
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ez;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 27452
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27458
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ez;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ey;)Lcom/keniu/security/sync/d/d/a/ez;
    .locals 1
    .parameter

    .prologue
    .line 27508
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ey;)Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27286
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ey;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 2
    .parameter

    .prologue
    .line 27474
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    .line 27475
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27476
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    .line 27478
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ey;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27485
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    .line 27486
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ez;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27487
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ez;)Lcom/keniu/security/sync/d/d/a/ey;

    move-result-object v0

    .line 27489
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ez;
    .locals 1
    .parameter

    .prologue
    .line 27515
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;-><init>(Lcom/b/a/dp;)V

    .line 27516
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27286
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ey;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1

    .prologue
    .line 27297
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ey;->c:Lcom/keniu/security/sync/d/d/a/ey;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 27306
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aD()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 27286
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ey;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/ey;
    .locals 1

    .prologue
    .line 27301
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ey;->c:Lcom/keniu/security/sync/d/d/a/ey;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 27336
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->e:Ljava/lang/Object;

    .line 27337
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27338
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 27340
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->e:Ljava/lang/Object;

    .line 27343
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 27368
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->f:Ljava/lang/Object;

    .line 27369
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27370
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 27372
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->f:Ljava/lang/Object;

    .line 27375
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 27380
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->e:Ljava/lang/Object;

    .line 27381
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->f:Ljava/lang/Object;

    .line 27382
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ez;
    .locals 1

    .prologue
    .line 27505
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ez;
    .locals 1

    .prologue
    .line 27506
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ez;
    .locals 1

    .prologue
    .line 27510
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ez;->a(Lcom/keniu/security/sync/d/d/a/ey;)Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27435
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 27286
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ey;->u()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 27286
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 27286
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ey;->u()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 27286
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ez;->i()Lcom/keniu/security/sync/d/d/a/ez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 27286
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ey;->c:Lcom/keniu/security/sync/d/d/a/ey;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 27286
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ey;->c:Lcom/keniu/security/sync/d/d/a/ey;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 27286
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ez;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ez;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 27402
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ey;->b()I

    .line 27403
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 27404
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ey;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 27406
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 27407
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ey;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 27409
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ey;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 27410
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27385
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->g:B

    .line 27386
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 27397
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 27386
    goto :goto_0

    .line 27388
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ey;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27389
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ey;->g:B

    move v0, v2

    .line 27390
    goto :goto_0

    .line 27392
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ey;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27393
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ey;->g:B

    move v0, v2

    .line 27394
    goto :goto_0

    .line 27396
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ey;->g:B

    move v0, v3

    .line 27397
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 27414
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->h:I

    .line 27415
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 27428
    :goto_0
    return v0

    .line 27417
    :cond_0
    const/4 v0, 0x0

    .line 27418
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ey;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 27419
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ey;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 27422
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ey;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 27423
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ey;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27426
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ey;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 27427
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 27311
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aE()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27319
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27322
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ey;->e:Ljava/lang/Object;

    .line 27323
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 27324
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 27332
    :goto_0
    return-object v1

    .line 27326
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 27328
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 27329
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27330
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ey;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 27332
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 27351
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ey;->d:I

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

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27354
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ey;->f:Ljava/lang/Object;

    .line 27355
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 27356
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 27364
    :goto_0
    return-object v1

    .line 27358
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 27360
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 27361
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27362
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ey;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 27364
    goto :goto_0
.end method
