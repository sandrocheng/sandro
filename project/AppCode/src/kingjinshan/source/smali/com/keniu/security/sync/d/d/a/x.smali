.class public final Lcom/keniu/security/sync/d/d/a/x;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/z;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/x;

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
    .line 9017
    new-instance v0, Lcom/keniu/security/sync/d/d/a/x;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/x;-><init>()V

    .line 9018
    sput-object v0, Lcom/keniu/security/sync/d/d/a/x;->d:Lcom/keniu/security/sync/d/d/a/x;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/x;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/x;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 9019
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8323
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 8389
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/x;->i:B

    .line 8421
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/x;->k:I

    .line 8323
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/y;)V
    .locals 1
    .parameter

    .prologue
    .line 8316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/x;-><init>(Lcom/keniu/security/sync/d/d/a/y;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/y;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8321
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 8389
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/x;->i:B

    .line 8421
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/x;->k:I

    .line 8322
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/x;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8316
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/x;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8316
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/x;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8316
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/x;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/x;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8316
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/x;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter

    .prologue
    .line 8454
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8460
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter

    .prologue
    .line 8508
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8514
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/y;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter

    .prologue
    .line 8476
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8482
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/y;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter

    .prologue
    .line 8465
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8471
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/y;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/x;)Lcom/keniu/security/sync/d/d/a/y;
    .locals 1
    .parameter

    .prologue
    .line 8521
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/x;)Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 2
    .parameter

    .prologue
    .line 8487
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    .line 8488
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8489
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    .line 8491
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/x;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8498
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    .line 8499
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/y;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8500
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/y;)Lcom/keniu/security/sync/d/d/a/x;

    move-result-object v0

    .line 8502
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/y;
    .locals 1
    .parameter

    .prologue
    .line 8528
    new-instance v0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;-><init>(Lcom/b/a/dp;)V

    .line 8529
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/x;
    .locals 1

    .prologue
    .line 8327
    sget-object v0, Lcom/keniu/security/sync/d/d/a/x;->d:Lcom/keniu/security/sync/d/d/a/x;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8336
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->B()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 8316
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/x;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/x;
    .locals 1

    .prologue
    .line 8331
    sget-object v0, Lcom/keniu/security/sync/d/d/a/x;->d:Lcom/keniu/security/sync/d/d/a/x;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 8385
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 8386
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 8387
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 8388
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/y;
    .locals 1

    .prologue
    .line 8518
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/y;
    .locals 1

    .prologue
    .line 8519
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/y;
    .locals 1

    .prologue
    .line 8523
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/y;->a(Lcom/keniu/security/sync/d/d/a/x;)Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8448
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8316
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/x;->x()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8316
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8316
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/x;->x()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8316
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/y;->i()Lcom/keniu/security/sync/d/d/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8316
    sget-object v0, Lcom/keniu/security/sync/d/d/a/x;->d:Lcom/keniu/security/sync/d/d/a/x;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8316
    sget-object v0, Lcom/keniu/security/sync/d/d/a/x;->d:Lcom/keniu/security/sync/d/d/a/x;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 8316
    new-instance v0, Lcom/keniu/security/sync/d/d/a/y;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/y;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8408
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/x;->b()I

    .line 8409
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8410
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 8412
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8413
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 8415
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 8416
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/x;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 8418
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/x;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 8419
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8391
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/x;->i:B

    .line 8392
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 8403
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 8392
    goto :goto_0

    .line 8394
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/x;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8395
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/x;->i:B

    move v0, v2

    .line 8396
    goto :goto_0

    .line 8398
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8399
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/x;->i:B

    move v0, v2

    .line 8400
    goto :goto_0

    .line 8402
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/x;->i:B

    move v0, v3

    .line 8403
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8423
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/x;->k:I

    .line 8424
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8441
    :goto_0
    return v0

    .line 8426
    :cond_0
    const/4 v0, 0x0

    .line 8427
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8428
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8431
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 8432
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/x;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8435
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 8436
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/x;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8439
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/x;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 8440
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/x;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 8341
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->C()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8349
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

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
    .line 8352
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 8355
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 8362
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

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
    .line 8365
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 8368
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 8375
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/x;->e:I

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
    .line 8378
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 8381
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/x;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
