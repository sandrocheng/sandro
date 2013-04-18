.class public final Lcom/b/a/ag;
.super Lcom/b/a/dr;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ai;


# static fields
.field public static final a:I = 0x3e7

.field private static final b:Lcom/b/a/ag;

.field private static final f:J


# instance fields
.field private c:Ljava/util/List;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13018
    new-instance v0, Lcom/b/a/ag;

    invoke-direct {v0}, Lcom/b/a/ag;-><init>()V

    .line 13019
    sput-object v0, Lcom/b/a/ag;->b:Lcom/b/a/ag;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ag;->c:Ljava/util/List;

    .line 13020
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12468
    invoke-direct {p0}, Lcom/b/a/dr;-><init>()V

    .line 12513
    iput-byte v0, p0, Lcom/b/a/ag;->d:B

    .line 12545
    iput v0, p0, Lcom/b/a/ag;->e:I

    .line 12468
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 12461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ag;-><init>(Lcom/b/a/ah;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ah;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12466
    invoke-direct {p0, p1}, Lcom/b/a/dr;-><init>(Lcom/b/a/dq;)V

    .line 12513
    iput-byte v0, p0, Lcom/b/a/ag;->d:B

    .line 12545
    iput v0, p0, Lcom/b/a/ag;->e:I

    .line 12467
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 12571
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ah;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    invoke-static {p0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12577
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ah;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    invoke-static {p0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 12625
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ah;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    invoke-static {p0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12631
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 12593
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ah;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    invoke-static {p0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12599
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ah;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    invoke-static {p0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 12582
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ah;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    invoke-static {p0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12588
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ah;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    invoke-static {p0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/ag;)Lcom/b/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 12638
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ah;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ag;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12461
    iput-object p1, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/ag;
    .locals 2
    .parameter

    .prologue
    .line 12604
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    .line 12605
    invoke-virtual {v0, p0}, Lcom/b/a/ah;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12606
    invoke-static {v0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    .line 12608
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ag;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12615
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    .line 12616
    invoke-virtual {v0, p0, p1}, Lcom/b/a/ah;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12617
    invoke-static {v0}, Lcom/b/a/ah;->a(Lcom/b/a/ah;)Lcom/b/a/ag;

    move-result-object v0

    .line 12619
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 12645
    new-instance v0, Lcom/b/a/ah;

    invoke-direct {v0, p0}, Lcom/b/a/ah;-><init>(Lcom/b/a/dp;)V

    .line 12646
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/ag;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 12461
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    return-object v0
.end method

.method public static e()Lcom/b/a/ag;
    .locals 1

    .prologue
    .line 12472
    sget-object v0, Lcom/b/a/ag;->b:Lcom/b/a/ag;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12481
    invoke-static {}, Lcom/b/a/p;->B()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 12635
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private static l()Lcom/b/a/ag;
    .locals 1

    .prologue
    .line 12476
    sget-object v0, Lcom/b/a/ag;->b:Lcom/b/a/ag;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 12511
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    .line 12512
    return-void
.end method

.method private static n()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 12636
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 12640
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ah;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12565
    invoke-super {p0}, Lcom/b/a/dr;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12461
    invoke-direct {p0}, Lcom/b/a/ag;->o()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12461
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12461
    invoke-direct {p0}, Lcom/b/a/ag;->o()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12461
    invoke-static {}, Lcom/b/a/ah;->o()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12461
    sget-object v0, Lcom/b/a/ag;->b:Lcom/b/a/ag;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12461
    sget-object v0, Lcom/b/a/ag;->b:Lcom/b/a/ag;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 12503
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 12461
    new-instance v0, Lcom/b/a/ah;

    invoke-direct {v0, p1}, Lcom/b/a/ah;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    .line 12534
    invoke-virtual {p0}, Lcom/b/a/ag;->b()I

    .line 12536
    invoke-virtual {p0}, Lcom/b/a/ag;->K()Lcom/b/a/ds;

    move-result-object v1

    .line 12538
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 12539
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 12538
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 12541
    :cond_0
    invoke-virtual {v1, p1}, Lcom/b/a/ds;->a(Lcom/b/a/n;)V

    .line 12542
    invoke-virtual {p0}, Lcom/b/a/ag;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 12543
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12515
    iget-byte v0, p0, Lcom/b/a/ag;->d:B

    .line 12516
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 12529
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 12516
    goto :goto_0

    :cond_1
    move v0, v2

    .line 12518
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/ag;->j()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 12519
    invoke-virtual {p0, v0}, Lcom/b/a/ag;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12520
    iput-byte v2, p0, Lcom/b/a/ag;->d:B

    move v0, v2

    .line 12521
    goto :goto_0

    .line 12518
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12524
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/ag;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12525
    iput-byte v2, p0, Lcom/b/a/ag;->d:B

    move v0, v2

    .line 12526
    goto :goto_0

    .line 12528
    :cond_4
    iput-byte v3, p0, Lcom/b/a/ag;->d:B

    move v0, v3

    .line 12529
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 12547
    iget v0, p0, Lcom/b/a/ag;->e:I

    .line 12548
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12558
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 12551
    :goto_1
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 12552
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 12551
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 12555
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/ag;->L()I

    move-result v0

    add-int/2addr v0, v2

    .line 12556
    invoke-virtual {p0}, Lcom/b/a/ag;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 12557
    iput v0, p0, Lcom/b/a/ag;->e:I

    goto :goto_0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 12507
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 12486
    invoke-static {}, Lcom/b/a/p;->C()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 12497
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    return-object v0
.end method

.method public final i_()Ljava/util/List;
    .locals 1

    .prologue
    .line 12493
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 12500
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
