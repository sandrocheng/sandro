.class public final Lcom/keniu/security/sync/d/d/a/jz;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/kb;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/jz;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3010
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jz;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jz;-><init>()V

    .line 3011
    sput-object v0, Lcom/keniu/security/sync/d/d/a/jz;->c:Lcom/keniu/security/sync/d/d/a/jz;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jz;->f:Ljava/lang/Object;

    .line 3012
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2502
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 2573
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->g:B

    .line 2602
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->h:I

    .line 2502
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ka;)V
    .locals 1
    .parameter

    .prologue
    .line 2495
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jz;-><init>(Lcom/keniu/security/sync/d/d/a/ka;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ka;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2500
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 2573
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->g:B

    .line 2602
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->h:I

    .line 2501
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jz;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2495
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jz;->d:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter

    .prologue
    .line 2631
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2637
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter

    .prologue
    .line 2685
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2691
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter

    .prologue
    .line 2653
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2659
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter

    .prologue
    .line 2642
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2648
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/jz;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1
    .parameter

    .prologue
    .line 2698
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/jz;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jz;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jz;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 2
    .parameter

    .prologue
    .line 2664
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    .line 2665
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2666
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    .line 2668
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2675
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    .line 2676
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2677
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    .line 2679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1
    .parameter

    .prologue
    .line 2705
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;-><init>(Lcom/b/a/dp;)V

    .line 2706
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1

    .prologue
    .line 2506
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jz;->c:Lcom/keniu/security/sync/d/d/a/jz;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2515
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    .prologue
    .line 2495
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jz;->j:Z

    return v0
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1

    .prologue
    .line 2510
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jz;->c:Lcom/keniu/security/sync/d/d/a/jz;

    return-object v0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->f:Ljava/lang/Object;

    .line 2559
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2560
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 2562
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->f:Ljava/lang/Object;

    .line 2565
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 2570
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2571
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->f:Ljava/lang/Object;

    .line 2572
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2695
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2696
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2700
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/jz;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2625
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2495
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jz;->u()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2495
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2495
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jz;->u()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2495
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ka;->i()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2495
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jz;->c:Lcom/keniu/security/sync/d/d/a/jz;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2495
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jz;->c:Lcom/keniu/security/sync/d/d/a/jz;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2495
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ka;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2592
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jz;->b()I

    .line 2593
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2594
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 2596
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2597
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jz;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2599
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 2600
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2575
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->g:B

    .line 2576
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2587
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2576
    goto :goto_0

    .line 2578
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jz;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2579
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jz;->g:B

    move v0, v2

    .line 2580
    goto :goto_0

    .line 2582
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2583
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jz;->g:B

    move v0, v2

    .line 2584
    goto :goto_0

    .line 2586
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/jz;->g:B

    move v0, v3

    .line 2587
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2604
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->h:I

    .line 2605
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2618
    :goto_0
    return v0

    .line 2607
    :cond_0
    const/4 v0, 0x0

    .line 2608
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jz;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2609
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2612
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jz;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2613
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jz;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2616
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jz;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 2617
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2520
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2528
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->d:I

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
    .line 2531
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 2541
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jz;->d:I

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

.method public final n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2544
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jz;->f:Ljava/lang/Object;

    .line 2545
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2546
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2554
    :goto_0
    return-object v1

    .line 2548
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 2550
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 2551
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2552
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jz;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2554
    goto :goto_0
.end method
