.class public final Lcom/keniu/security/sync/d/d/a/bb;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bd;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/bb;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Lcom/keniu/security/sync/d/d/a/gy;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 970
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bb;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bb;-><init>()V

    .line 971
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bb;->c:Lcom/keniu/security/sync/d/d/a/bb;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bb;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 972
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 414
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 466
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->g:B

    .line 495
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->h:I

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/bc;)V
    .locals 1
    .parameter

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bb;-><init>(Lcom/keniu/security/sync/d/d/a/bc;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/bc;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 412
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 466
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->g:B

    .line 495
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->h:I

    .line 413
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bb;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bb;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 524
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 578
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 584
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 546
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 535
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/bb;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 591
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bb;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bb;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bb;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bb;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 2
    .parameter

    .prologue
    .line 557
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    .line 558
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    .line 569
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 598
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;-><init>(Lcom/b/a/dp;)V

    .line 599
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bb;->c:Lcom/keniu/security/sync/d/d/a/bb;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->d()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 407
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bb;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bb;->c:Lcom/keniu/security/sync/d/d/a/bb;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 463
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 464
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 465
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 588
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 593
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bb;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 518
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bb;->u()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bb;->u()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bc;->i()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bb;->c:Lcom/keniu/security/sync/d/d/a/bb;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bb;->c:Lcom/keniu/security/sync/d/d/a/bb;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 407
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/bc;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 485
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bb;->b()I

    .line 486
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 489
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 490
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 493
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 468
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->g:B

    .line 469
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 480
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 469
    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bb;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bb;->g:B

    move v0, v2

    .line 473
    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bb;->g:B

    move v0, v2

    .line 477
    goto :goto_0

    .line 479
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bb;->g:B

    move v0, v3

    .line 480
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 497
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->h:I

    .line 498
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 511
    :goto_0
    return v0

    .line 500
    :cond_0
    const/4 v0, 0x0

    .line 501
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bb;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 502
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 505
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bb;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 506
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bb;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bb;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->e()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 440
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->d:I

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
    .line 443
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->d:I

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
    .line 456
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bb;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
