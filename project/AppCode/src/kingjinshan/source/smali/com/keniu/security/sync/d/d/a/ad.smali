.class public final Lcom/keniu/security/sync/d/d/a/ad;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/af;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/ad;

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
    .line 3134
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ad;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ad;-><init>()V

    .line 3135
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ad;->c:Lcom/keniu/security/sync/d/d/a/ad;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ad;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3136
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2578
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 2630
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->g:B

    .line 2659
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->h:I

    .line 2578
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ae;)V
    .locals 1
    .parameter

    .prologue
    .line 2571
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ad;-><init>(Lcom/keniu/security/sync/d/d/a/ae;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ae;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2576
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 2630
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->g:B

    .line 2659
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->h:I

    .line 2577
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2571
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ad;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 2688
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2694
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 2742
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2748
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 2710
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2716
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 2699
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2705
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ad;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2755
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ad;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ad;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2571
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ad;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2571
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ad;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 2
    .parameter

    .prologue
    .line 2721
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    .line 2722
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2723
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    .line 2725
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2732
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    .line 2733
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2734
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    .line 2736
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2762
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;-><init>(Lcom/b/a/dp;)V

    .line 2763
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1

    .prologue
    .line 2582
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ad;->c:Lcom/keniu/security/sync/d/d/a/ad;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2591
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 2571
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ad;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1

    .prologue
    .line 2586
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ad;->c:Lcom/keniu/security/sync/d/d/a/ad;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 2627
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2628
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 2629
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 2752
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 2753
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 2757
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ad;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2682
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ad;->u()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2571
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ad;->u()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2571
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ae;->i()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2571
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ad;->c:Lcom/keniu/security/sync/d/d/a/ad;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2571
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ad;->c:Lcom/keniu/security/sync/d/d/a/ad;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2571
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ae;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2649
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ad;->b()I

    .line 2650
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 2653
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2654
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 2656
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ad;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 2657
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2632
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->g:B

    .line 2633
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2644
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2633
    goto :goto_0

    .line 2635
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ad;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2636
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ad;->g:B

    move v0, v2

    .line 2637
    goto :goto_0

    .line 2639
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2640
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ad;->g:B

    move v0, v2

    .line 2641
    goto :goto_0

    .line 2643
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ad;->g:B

    move v0, v3

    .line 2644
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2661
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->h:I

    .line 2662
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2675
    :goto_0
    return v0

    .line 2664
    :cond_0
    const/4 v0, 0x0

    .line 2665
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ad;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2666
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2669
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ad;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2670
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ad;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2673
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ad;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 2674
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2596
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2604
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->d:I

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
    .line 2607
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 2617
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->d:I

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
    .line 2620
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ad;->f:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
