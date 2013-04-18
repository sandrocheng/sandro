.class public final Lcom/keniu/security/sync/d/d/a/im;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/io;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/im;

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
    .line 4860
    new-instance v0, Lcom/keniu/security/sync/d/d/a/im;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/im;-><init>()V

    .line 4861
    sput-object v0, Lcom/keniu/security/sync/d/d/a/im;->b:Lcom/keniu/security/sync/d/d/a/im;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4862
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4442
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 4480
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/im;->e:B

    .line 4506
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/im;->f:I

    .line 4442
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/in;)V
    .locals 1
    .parameter

    .prologue
    .line 4435
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/im;-><init>(Lcom/keniu/security/sync/d/d/a/in;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/in;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4440
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 4480
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/im;->e:B

    .line 4506
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/im;->f:I

    .line 4441
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/im;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4435
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/im;->c:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/im;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4435
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter

    .prologue
    .line 4531
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4537
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter

    .prologue
    .line 4585
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4591
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter

    .prologue
    .line 4553
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4559
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter

    .prologue
    .line 4542
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4548
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/im;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 1
    .parameter

    .prologue
    .line 4598
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/im;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 2
    .parameter

    .prologue
    .line 4564
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    .line 4565
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4566
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    .line 4568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4575
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    .line 4576
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4577
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    .line 4579
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 1
    .parameter

    .prologue
    .line 4605
    new-instance v0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;-><init>(Lcom/b/a/dp;)V

    .line 4606
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/im;
    .locals 1

    .prologue
    .line 4446
    sget-object v0, Lcom/keniu/security/sync/d/d/a/im;->b:Lcom/keniu/security/sync/d/d/a/im;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4455
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->p()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 4435
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/im;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/im;
    .locals 1

    .prologue
    .line 4450
    sget-object v0, Lcom/keniu/security/sync/d/d/a/im;->b:Lcom/keniu/security/sync/d/d/a/im;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 4478
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4479
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/in;
    .locals 1

    .prologue
    .line 4595
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/in;
    .locals 1

    .prologue
    .line 4596
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/in;
    .locals 1

    .prologue
    .line 4600
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/im;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4525
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4435
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/im;->r()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4435
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4435
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/im;->r()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4435
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/in;->i()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4435
    sget-object v0, Lcom/keniu/security/sync/d/d/a/im;->b:Lcom/keniu/security/sync/d/d/a/im;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4435
    sget-object v0, Lcom/keniu/security/sync/d/d/a/im;->b:Lcom/keniu/security/sync/d/d/a/im;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4435
    new-instance v0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/in;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4499
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/im;->b()I

    .line 4500
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/im;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4501
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 4503
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/im;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 4504
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4482
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/im;->e:B

    .line 4483
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4494
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4483
    goto :goto_0

    .line 4485
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/im;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4486
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/im;->e:B

    move v0, v2

    .line 4487
    goto :goto_0

    .line 4489
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4490
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/im;->e:B

    move v0, v2

    .line 4491
    goto :goto_0

    .line 4493
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/im;->e:B

    move v0, v3

    .line 4494
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4508
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/im;->f:I

    .line 4509
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4518
    :goto_0
    return v0

    .line 4511
    :cond_0
    const/4 v0, 0x0

    .line 4512
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/im;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4513
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4516
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/im;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 4517
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/im;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4460
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4468
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/im;->c:I

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
    .line 4471
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 4474
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/im;->d:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method
