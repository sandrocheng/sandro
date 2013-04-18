.class public final Lcom/keniu/security/sync/d/d/a/fk;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fm;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/fk;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Ljava/lang/Object;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35810
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fk;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fk;-><init>()V

    .line 35811
    sput-object v0, Lcom/keniu/security/sync/d/d/a/fk;->b:Lcom/keniu/security/sync/d/d/a/fk;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/fk;->d:Ljava/lang/Object;

    .line 35812
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35448
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 35505
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->e:B

    .line 35527
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->f:I

    .line 35448
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/fl;)V
    .locals 1
    .parameter

    .prologue
    .line 35441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fk;-><init>(Lcom/keniu/security/sync/d/d/a/fl;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/fl;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 35446
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 35505
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->e:B

    .line 35527
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->f:I

    .line 35447
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fk;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35441
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/fk;->c:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter

    .prologue
    .line 35552
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35558
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter

    .prologue
    .line 35606
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35612
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter

    .prologue
    .line 35574
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35580
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter

    .prologue
    .line 35563
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35569
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/fk;)Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1
    .parameter

    .prologue
    .line 35619
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fk;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35441
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fk;->d:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 2
    .parameter

    .prologue
    .line 35585
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    .line 35586
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35587
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    .line 35589
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35596
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    .line 35597
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35598
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    .line 35600
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1
    .parameter

    .prologue
    .line 35626
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;-><init>(Lcom/b/a/dp;)V

    .line 35627
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1

    .prologue
    .line 35452
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fk;->b:Lcom/keniu/security/sync/d/d/a/fk;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 35461
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bf()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 35441
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/fk;->j:Z

    return v0
.end method

.method private static m()Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1

    .prologue
    .line 35456
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fk;->b:Lcom/keniu/security/sync/d/d/a/fk;

    return-object v0
.end method

.method private n()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 35491
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->d:Ljava/lang/Object;

    .line 35492
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35493
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 35495
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->d:Ljava/lang/Object;

    .line 35498
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 35503
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->d:Ljava/lang/Object;

    .line 35504
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1

    .prologue
    .line 35616
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1

    .prologue
    .line 35617
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1

    .prologue
    .line 35621
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fk;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35546
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35441
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fk;->r()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35441
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35441
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fk;->r()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35441
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fl;->i()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35441
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fk;->b:Lcom/keniu/security/sync/d/d/a/fk;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35441
    sget-object v0, Lcom/keniu/security/sync/d/d/a/fk;->b:Lcom/keniu/security/sync/d/d/a/fk;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 35441
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/fl;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 35520
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fk;->b()I

    .line 35521
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 35522
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fk;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 35524
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fk;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 35525
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 35507
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->e:B

    .line 35508
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 35515
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 35508
    goto :goto_0

    .line 35510
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fk;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35511
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/fk;->e:B

    move v0, v3

    .line 35512
    goto :goto_0

    .line 35514
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/fk;->e:B

    move v0, v2

    .line 35515
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35529
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->f:I

    .line 35530
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 35539
    :goto_0
    return v0

    .line 35532
    :cond_0
    const/4 v0, 0x0

    .line 35533
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fk;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 35534
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fk;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 35537
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fk;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 35538
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 35466
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bg()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35474
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fk;->c:I

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
    .line 35477
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fk;->d:Ljava/lang/Object;

    .line 35478
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 35479
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 35487
    :goto_0
    return-object v1

    .line 35481
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 35483
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 35484
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35485
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/fk;->d:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 35487
    goto :goto_0
.end method
