.class public final Lcom/keniu/security/sync/d/d/a/dx;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dz;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/dx;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:I

.field private h:Lcom/keniu/security/sync/d/d/a/gn;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15005
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dx;-><init>()V

    .line 15006
    sput-object v0, Lcom/keniu/security/sync/d/d/a/dx;->d:Lcom/keniu/security/sync/d/d/a/dx;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/dx;->g:I

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    .line 15007
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14384
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 14447
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->i:B

    .line 14485
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->k:I

    .line 14384
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/dy;)V
    .locals 1
    .parameter

    .prologue
    .line 14377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/dx;-><init>(Lcom/keniu/security/sync/d/d/a/dy;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/dy;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14382
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 14447
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->i:B

    .line 14485
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->k:I

    .line 14383
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dx;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14377
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/dx;->g:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter

    .prologue
    .line 14518
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14524
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter

    .prologue
    .line 14572
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14578
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dy;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter

    .prologue
    .line 14540
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14546
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dy;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter

    .prologue
    .line 14529
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14535
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dy;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/dx;)Lcom/keniu/security/sync/d/d/a/dy;
    .locals 1
    .parameter

    .prologue
    .line 14585
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dx;)Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dx;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14377
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dx;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14377
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/dx;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14377
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 2
    .parameter

    .prologue
    .line 14551
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    .line 14552
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14553
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    .line 14555
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dx;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14562
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    .line 14563
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dy;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14564
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dy;)Lcom/keniu/security/sync/d/d/a/dx;

    move-result-object v0

    .line 14566
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/dy;
    .locals 1
    .parameter

    .prologue
    .line 14592
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;-><init>(Lcom/b/a/dp;)V

    .line 14593
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1

    .prologue
    .line 14388
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dx;->d:Lcom/keniu/security/sync/d/d/a/dx;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 14397
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->R()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 14377
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/dx;->j:Z

    return v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/dx;
    .locals 1

    .prologue
    .line 14392
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dx;->d:Lcom/keniu/security/sync/d/d/a/dx;

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 14443
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 14444
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->g:I

    .line 14445
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    .line 14446
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/dy;
    .locals 1

    .prologue
    .line 14582
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/dy;
    .locals 1

    .prologue
    .line 14583
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/dy;
    .locals 1

    .prologue
    .line 14587
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dy;->a(Lcom/keniu/security/sync/d/d/a/dx;)Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14512
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14377
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dx;->w()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14377
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14377
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dx;->w()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14377
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dy;->i()Lcom/keniu/security/sync/d/d/a/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14377
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dx;->d:Lcom/keniu/security/sync/d/d/a/dx;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14377
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dx;->d:Lcom/keniu/security/sync/d/d/a/dx;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 14377
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dy;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/dy;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14472
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dx;->b()I

    .line 14473
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 14474
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 14476
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 14477
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->g:I

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(II)V

    .line 14479
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 14480
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 14482
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dx;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 14483
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14449
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->i:B

    .line 14450
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 14467
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 14450
    goto :goto_0

    .line 14452
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dx;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14453
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dx;->i:B

    move v0, v2

    .line 14454
    goto :goto_0

    .line 14456
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14457
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dx;->i:B

    move v0, v2

    .line 14458
    goto :goto_0

    .line 14460
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dx;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14461
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14462
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dx;->i:B

    move v0, v2

    .line 14463
    goto :goto_0

    .line 14466
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/dx;->i:B

    move v0, v3

    .line 14467
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 14487
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->k:I

    .line 14488
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 14505
    :goto_0
    return v0

    .line 14490
    :cond_0
    const/4 v0, 0x0

    .line 14491
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 14492
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 14495
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 14496
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dx;->g:I

    invoke-static {v3, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14499
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 14500
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14503
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dx;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 14504
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 14402
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->S()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14410
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

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
    .line 14413
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 14416
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 14423
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

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

.method public final n()I
    .locals 1

    .prologue
    .line 14426
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->g:I

    return v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 14433
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->e:I

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

.method public final p()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 14436
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final q()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 14439
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method
