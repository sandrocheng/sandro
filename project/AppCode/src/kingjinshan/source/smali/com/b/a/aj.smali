.class public final Lcom/b/a/aj;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ap;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x3

.field public static final c:I = 0x4

.field public static final d:I = 0x5

.field public static final e:I = 0x6

.field public static final f:I = 0x2

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field private static final i:Lcom/b/a/aj;

.field private static final v:J


# instance fields
.field private k:I

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:Lcom/b/a/al;

.field private o:Lcom/b/a/an;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Lcom/b/a/aq;

.field private t:B

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6113
    new-instance v0, Lcom/b/a/aj;

    invoke-direct {v0}, Lcom/b/a/aj;-><init>()V

    .line 6114
    sput-object v0, Lcom/b/a/aj;->i:Lcom/b/a/aj;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/aj;->l:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/b/a/aj;->m:I

    sget-object v1, Lcom/b/a/al;->a:Lcom/b/a/al;

    iput-object v1, v0, Lcom/b/a/aj;->n:Lcom/b/a/al;

    sget-object v1, Lcom/b/a/an;->a:Lcom/b/a/an;

    iput-object v1, v0, Lcom/b/a/aj;->o:Lcom/b/a/an;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/aj;->p:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/aj;->q:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/aj;->r:Ljava/lang/Object;

    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    .line 6115
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4973
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 5365
    iput-byte v0, p0, Lcom/b/a/aj;->t:B

    .line 5410
    iput v0, p0, Lcom/b/a/aj;->u:I

    .line 4973
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ak;)V
    .locals 1
    .parameter

    .prologue
    .line 4966
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/aj;-><init>(Lcom/b/a/ak;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ak;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4971
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 5365
    iput-byte v0, p0, Lcom/b/a/aj;->t:B

    .line 5410
    iput v0, p0, Lcom/b/a/aj;->u:I

    .line 4972
    return-void
.end method

.method private A()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5205
    iget-object v0, p0, Lcom/b/a/aj;->l:Ljava/lang/Object;

    .line 5206
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5207
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5209
    iput-object v0, p0, Lcom/b/a/aj;->l:Ljava/lang/Object;

    .line 5212
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private J()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5267
    iget-object v0, p0, Lcom/b/a/aj;->p:Ljava/lang/Object;

    .line 5268
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5269
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5271
    iput-object v0, p0, Lcom/b/a/aj;->p:Ljava/lang/Object;

    .line 5274
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private K()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5299
    iget-object v0, p0, Lcom/b/a/aj;->q:Ljava/lang/Object;

    .line 5300
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5301
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5303
    iput-object v0, p0, Lcom/b/a/aj;->q:Ljava/lang/Object;

    .line 5306
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private L()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5331
    iget-object v0, p0, Lcom/b/a/aj;->r:Ljava/lang/Object;

    .line 5332
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5333
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5335
    iput-object v0, p0, Lcom/b/a/aj;->r:Ljava/lang/Object;

    .line 5338
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private M()V
    .locals 1

    .prologue
    .line 5356
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/aj;->l:Ljava/lang/Object;

    .line 5357
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/aj;->m:I

    .line 5358
    sget-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/aj;->n:Lcom/b/a/al;

    .line 5359
    sget-object v0, Lcom/b/a/an;->a:Lcom/b/a/an;

    iput-object v0, p0, Lcom/b/a/aj;->o:Lcom/b/a/an;

    .line 5360
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/aj;->p:Ljava/lang/Object;

    .line 5361
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/aj;->q:Ljava/lang/Object;

    .line 5362
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/aj;->r:Ljava/lang/Object;

    .line 5363
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    .line 5364
    return-void
.end method

.method private static N()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5528
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private O()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5532
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a(Lcom/b/a/aj;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput p1, p0, Lcom/b/a/aj;->m:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 5463
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    invoke-static {p0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5469
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ak;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    invoke-static {p0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 5517
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    invoke-static {p0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5523
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 5485
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    invoke-static {p0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5491
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ak;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    invoke-static {p0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 5474
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    invoke-static {p0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/aj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5480
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ak;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    invoke-static {p0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/aj;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5530
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a(Lcom/b/a/aj;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/aj;Lcom/b/a/al;)Lcom/b/a/al;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/b/a/aj;->n:Lcom/b/a/al;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/aj;Lcom/b/a/an;)Lcom/b/a/an;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/b/a/aj;->o:Lcom/b/a/an;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/aj;Lcom/b/a/aq;)Lcom/b/a/aq;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/b/a/aj;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/b/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput p1, p0, Lcom/b/a/aj;->k:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 5496
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    .line 5497
    invoke-virtual {v0, p0}, Lcom/b/a/ak;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5498
    invoke-static {v0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    .line 5500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/aj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5507
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    .line 5508
    invoke-virtual {v0, p0, p1}, Lcom/b/a/ak;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5509
    invoke-static {v0}, Lcom/b/a/ak;->a(Lcom/b/a/ak;)Lcom/b/a/aj;

    move-result-object v0

    .line 5511
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5537
    new-instance v0, Lcom/b/a/ak;

    invoke-direct {v0, p0}, Lcom/b/a/ak;-><init>(Lcom/b/a/dp;)V

    .line 5538
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/b/a/aj;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/b/a/aj;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/b/a/aj;->r:Ljava/lang/Object;

    return-object p1
.end method

.method public static e()Lcom/b/a/aj;
    .locals 1

    .prologue
    .line 4977
    sget-object v0, Lcom/b/a/aj;->i:Lcom/b/a/aj;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4986
    invoke-static {}, Lcom/b/a/p;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static y()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5527
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private static z()Lcom/b/a/aj;
    .locals 1

    .prologue
    .line 4981
    sget-object v0, Lcom/b/a/aj;->i:Lcom/b/a/aj;

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5457
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4966
    invoke-direct {p0}, Lcom/b/a/aj;->O()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4966
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4966
    invoke-direct {p0}, Lcom/b/a/aj;->O()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4966
    invoke-static {}, Lcom/b/a/ak;->A()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4966
    sget-object v0, Lcom/b/a/aj;->i:Lcom/b/a/aj;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4966
    sget-object v0, Lcom/b/a/aj;->i:Lcom/b/a/aj;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4966
    new-instance v0, Lcom/b/a/ak;

    invoke-direct {v0, p1}, Lcom/b/a/ak;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5382
    invoke-virtual {p0}, Lcom/b/a/aj;->b()I

    .line 5383
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5384
    invoke-direct {p0}, Lcom/b/a/aj;->A()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5386
    :cond_0
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 5387
    invoke-direct {p0}, Lcom/b/a/aj;->K()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5389
    :cond_1
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 5390
    const/4 v0, 0x3

    iget v1, p0, Lcom/b/a/aj;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 5392
    :cond_2
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 5393
    iget-object v0, p0, Lcom/b/a/aj;->n:Lcom/b/a/al;

    invoke-virtual {v0}, Lcom/b/a/al;->H_()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->c(II)V

    .line 5395
    :cond_3
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_4

    .line 5396
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/b/a/aj;->o:Lcom/b/a/an;

    invoke-virtual {v1}, Lcom/b/a/an;->H_()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->c(II)V

    .line 5398
    :cond_4
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 5399
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/b/a/aj;->J()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5401
    :cond_5
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 5402
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/b/a/aj;->L()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5404
    :cond_6
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 5405
    iget-object v0, p0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    invoke-virtual {p1, v4, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 5407
    :cond_7
    invoke-virtual {p0}, Lcom/b/a/aj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 5408
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5367
    iget-byte v0, p0, Lcom/b/a/aj;->t:B

    .line 5368
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 5377
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 5368
    goto :goto_0

    .line 5370
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/aj;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5371
    iget-object v0, p0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    invoke-virtual {v0}, Lcom/b/a/aq;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5372
    iput-byte v3, p0, Lcom/b/a/aj;->t:B

    move v0, v3

    .line 5373
    goto :goto_0

    .line 5376
    :cond_2
    iput-byte v2, p0, Lcom/b/a/aj;->t:B

    move v0, v2

    .line 5377
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5412
    iget v0, p0, Lcom/b/a/aj;->u:I

    .line 5413
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5450
    :goto_0
    return v0

    .line 5415
    :cond_0
    const/4 v0, 0x0

    .line 5416
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 5417
    invoke-direct {p0}, Lcom/b/a/aj;->A()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5420
    :cond_1
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 5421
    invoke-direct {p0}, Lcom/b/a/aj;->K()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5424
    :cond_2
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_3

    .line 5425
    const/4 v1, 0x3

    iget v2, p0, Lcom/b/a/aj;->m:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5428
    :cond_3
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_4

    .line 5429
    iget-object v1, p0, Lcom/b/a/aj;->n:Lcom/b/a/al;

    invoke-virtual {v1}, Lcom/b/a/al;->H_()I

    move-result v1

    invoke-static {v4, v1}, Lcom/b/a/n;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5432
    :cond_4
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_5

    .line 5433
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/b/a/aj;->o:Lcom/b/a/an;

    invoke-virtual {v2}, Lcom/b/a/an;->H_()I

    move-result v2

    invoke-static {v1, v2}, Lcom/b/a/n;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5436
    :cond_5
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    .line 5437
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/b/a/aj;->J()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5440
    :cond_6
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 5441
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/b/a/aj;->L()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5444
    :cond_7
    iget v1, p0, Lcom/b/a/aj;->k:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 5445
    iget-object v1, p0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    invoke-static {v5, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5448
    :cond_8
    invoke-virtual {p0}, Lcom/b/a/aj;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 5449
    iput v0, p0, Lcom/b/a/aj;->u:I

    goto/16 :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4991
    invoke-static {}, Lcom/b/a/p;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5191
    iget-object v1, p0, Lcom/b/a/aj;->l:Ljava/lang/Object;

    .line 5192
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5193
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5201
    :goto_0
    return-object v1

    .line 5195
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5197
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5198
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5199
    iput-object v2, p0, Lcom/b/a/aj;->l:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5201
    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 5220
    iget v0, p0, Lcom/b/a/aj;->k:I

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

.method public final j_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5188
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 5223
    iget v0, p0, Lcom/b/a/aj;->m:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 5230
    iget v0, p0, Lcom/b/a/aj;->k:I

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

.method public final m()Lcom/b/a/al;
    .locals 1

    .prologue
    .line 5233
    iget-object v0, p0, Lcom/b/a/aj;->n:Lcom/b/a/al;

    return-object v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 5240
    iget v0, p0, Lcom/b/a/aj;->k:I

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

.method public final o()Lcom/b/a/an;
    .locals 1

    .prologue
    .line 5243
    iget-object v0, p0, Lcom/b/a/aj;->o:Lcom/b/a/an;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 5250
    iget v0, p0, Lcom/b/a/aj;->k:I

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

.method public final q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5253
    iget-object v1, p0, Lcom/b/a/aj;->p:Ljava/lang/Object;

    .line 5254
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5255
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5263
    :goto_0
    return-object v1

    .line 5257
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5259
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5260
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5261
    iput-object v2, p0, Lcom/b/a/aj;->p:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5263
    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 5282
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5285
    iget-object v1, p0, Lcom/b/a/aj;->q:Ljava/lang/Object;

    .line 5286
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5287
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5295
    :goto_0
    return-object v1

    .line 5289
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5291
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5292
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5293
    iput-object v2, p0, Lcom/b/a/aj;->q:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5295
    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 5314
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5317
    iget-object v1, p0, Lcom/b/a/aj;->r:Ljava/lang/Object;

    .line 5318
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5319
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5327
    :goto_0
    return-object v1

    .line 5321
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5323
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5324
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5325
    iput-object v2, p0, Lcom/b/a/aj;->r:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5327
    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 5346
    iget v0, p0, Lcom/b/a/aj;->k:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Lcom/b/a/aq;
    .locals 1

    .prologue
    .line 5349
    iget-object v0, p0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    return-object v0
.end method

.method public final x()Lcom/b/a/au;
    .locals 1

    .prologue
    .line 5352
    iget-object v0, p0, Lcom/b/a/aj;->s:Lcom/b/a/aq;

    return-object v0
.end method
