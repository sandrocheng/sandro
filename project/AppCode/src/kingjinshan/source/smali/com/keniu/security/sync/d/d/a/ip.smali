.class public final Lcom/keniu/security/sync/d/d/a/ip;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ir;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/ip;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Ljava/lang/Object;

.field private i:I

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6075
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ip;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ip;-><init>()V

    .line 6076
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ip;->f:Lcom/keniu/security/sync/d/d/a/ip;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ip;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/ip;->i:I

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ip;->k:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ip;->l:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ip;->m:Ljava/lang/Object;

    .line 6077
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5382
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 5549
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->n:B

    .line 5587
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->o:I

    .line 5382
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/iq;)V
    .locals 1
    .parameter

    .prologue
    .line 5375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ip;-><init>(Lcom/keniu/security/sync/d/d/a/iq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/iq;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 5380
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 5549
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->n:B

    .line 5587
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->o:I

    .line 5381
    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 5543
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->h:Ljava/lang/Object;

    .line 5544
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->i:I

    .line 5545
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->k:Ljava/lang/Object;

    .line 5546
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->l:Ljava/lang/Object;

    .line 5547
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->m:Ljava/lang/Object;

    .line 5548
    return-void
.end method

.method private static J()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5693
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method private K()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5697
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ip;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5375
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ip;->i:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 5628
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5634
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 5682
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5688
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 5650
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5656
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 5639
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5645
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 5695
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5375
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ip;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ip;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5375
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 2
    .parameter

    .prologue
    .line 5661
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    .line 5662
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5663
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    .line 5665
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5672
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    .line 5673
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5674
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    .line 5676
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 5702
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/iq;-><init>(Lcom/b/a/dp;)V

    .line 5703
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5375
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ip;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5375
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ip;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5375
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ip;->m:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1

    .prologue
    .line 5386
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ip;->f:Lcom/keniu/security/sync/d/d/a/ip;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5395
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->t()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static t()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5692
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u()Z
    .locals 1

    .prologue
    .line 5375
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ip;->j:Z

    return v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1

    .prologue
    .line 5390
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ip;->f:Lcom/keniu/security/sync/d/d/a/ip;

    return-object v0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5425
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->h:Ljava/lang/Object;

    .line 5426
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5427
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5429
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->h:Ljava/lang/Object;

    .line 5432
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5467
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->k:Ljava/lang/Object;

    .line 5468
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5469
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5471
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->k:Ljava/lang/Object;

    .line 5474
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5499
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->l:Ljava/lang/Object;

    .line 5500
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5501
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5503
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->l:Ljava/lang/Object;

    .line 5506
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private z()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 5531
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->m:Ljava/lang/Object;

    .line 5532
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5533
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 5535
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->m:Ljava/lang/Object;

    .line 5538
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5622
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5375
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->K()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5375
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5375
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->K()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5375
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iq;->u()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5375
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ip;->f:Lcom/keniu/security/sync/d/d/a/ip;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5375
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ip;->f:Lcom/keniu/security/sync/d/d/a/ip;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 5375
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/iq;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5568
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ip;->b()I

    .line 5569
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5570
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5572
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5573
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->i:I

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(II)V

    .line 5575
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5576
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5578
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 5579
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->y()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5581
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 5582
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->z()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 5584
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ip;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 5585
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5551
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->n:B

    .line 5552
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 5563
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 5552
    goto :goto_0

    .line 5554
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ip;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5555
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ip;->n:B

    move v0, v2

    .line 5556
    goto :goto_0

    .line 5558
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ip;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5559
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ip;->n:B

    move v0, v2

    .line 5560
    goto :goto_0

    .line 5562
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ip;->n:B

    move v0, v3

    .line 5563
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5589
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->o:I

    .line 5590
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5615
    :goto_0
    return v0

    .line 5592
    :cond_0
    const/4 v0, 0x0

    .line 5593
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 5594
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5597
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 5598
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->i:I

    invoke-static {v3, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5601
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 5602
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->x()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5605
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 5606
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->y()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5609
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 5610
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ip;->z()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5613
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ip;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 5614
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 5400
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->u()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5408
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

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
    .line 5411
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->h:Ljava/lang/Object;

    .line 5412
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5413
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5421
    :goto_0
    return-object v1

    .line 5415
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5417
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5418
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5419
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ip;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5421
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 5440
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

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

.method public final m()I
    .locals 1

    .prologue
    .line 5443
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->i:I

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 5450
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

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

.method public final o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5453
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->k:Ljava/lang/Object;

    .line 5454
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5455
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5463
    :goto_0
    return-object v1

    .line 5457
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5459
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5460
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5461
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ip;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5463
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 5482
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

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

.method public final q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5485
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->l:Ljava/lang/Object;

    .line 5486
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5487
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5495
    :goto_0
    return-object v1

    .line 5489
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5491
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5492
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5493
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ip;->l:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5495
    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 5514
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ip;->g:I

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

.method public final s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5517
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ip;->m:Ljava/lang/Object;

    .line 5518
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5519
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5527
    :goto_0
    return-object v1

    .line 5521
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 5523
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 5524
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5525
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ip;->m:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5527
    goto :goto_0
.end method
