.class public final Lcom/keniu/security/sync/d/d/a/jt;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jv;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/jt;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Lcom/keniu/security/sync/d/d/a/ge;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3833
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jt;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jt;-><init>()V

    .line 3834
    sput-object v0, Lcom/keniu/security/sync/d/d/a/jt;->b:Lcom/keniu/security/sync/d/d/a/jt;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3835
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3415
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3453
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->e:B

    .line 3479
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->f:I

    .line 3415
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ju;)V
    .locals 1
    .parameter

    .prologue
    .line 3408
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jt;-><init>(Lcom/keniu/security/sync/d/d/a/ju;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ju;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3413
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3453
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->e:B

    .line 3479
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->f:I

    .line 3414
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jt;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3408
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jt;->c:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jt;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter

    .prologue
    .line 3504
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3510
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter

    .prologue
    .line 3558
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3564
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter

    .prologue
    .line 3526
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3532
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter

    .prologue
    .line 3515
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3521
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/jt;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1
    .parameter

    .prologue
    .line 3571
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/jt;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 2
    .parameter

    .prologue
    .line 3537
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    .line 3538
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3539
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    .line 3541
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3548
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    .line 3549
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3550
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    .line 3552
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1
    .parameter

    .prologue
    .line 3578
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;-><init>(Lcom/b/a/dp;)V

    .line 3579
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1

    .prologue
    .line 3419
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jt;->b:Lcom/keniu/security/sync/d/d/a/jt;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3428
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 3408
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jt;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1

    .prologue
    .line 3423
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jt;->b:Lcom/keniu/security/sync/d/d/a/jt;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 3451
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3452
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1

    .prologue
    .line 3568
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1

    .prologue
    .line 3569
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1

    .prologue
    .line 3573
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/jt;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3498
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3408
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jt;->r()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3408
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3408
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jt;->r()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3408
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ju;->i()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3408
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jt;->b:Lcom/keniu/security/sync/d/d/a/jt;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3408
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jt;->b:Lcom/keniu/security/sync/d/d/a/jt;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3408
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ju;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3472
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jt;->b()I

    .line 3473
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3474
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3476
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jt;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3477
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3455
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->e:B

    .line 3456
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3467
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3456
    goto :goto_0

    .line 3458
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jt;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3459
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jt;->e:B

    move v0, v2

    .line 3460
    goto :goto_0

    .line 3462
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3463
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jt;->e:B

    move v0, v2

    .line 3464
    goto :goto_0

    .line 3466
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/jt;->e:B

    move v0, v3

    .line 3467
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3481
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->f:I

    .line 3482
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3491
    :goto_0
    return v0

    .line 3484
    :cond_0
    const/4 v0, 0x0

    .line 3485
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jt;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3486
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3489
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jt;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3490
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3433
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3441
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->c:I

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
    .line 3444
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jt;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method
