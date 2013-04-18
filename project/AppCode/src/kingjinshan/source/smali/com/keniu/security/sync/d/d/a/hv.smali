.class public final Lcom/keniu/security/sync/d/d/a/hv;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hx;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/hv;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/gq;

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4009
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hv;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hv;-><init>()V

    .line 4010
    sput-object v0, Lcom/keniu/security/sync/d/d/a/hv;->c:Lcom/keniu/security/sync/d/d/a/hv;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/hv;->f:I

    .line 4011
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3530
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3579
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->g:B

    .line 3612
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->h:I

    .line 3530
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/hw;)V
    .locals 1
    .parameter

    .prologue
    .line 3523
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hv;-><init>(Lcom/keniu/security/sync/d/d/a/hw;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/hw;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3528
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3579
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->g:B

    .line 3612
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->h:I

    .line 3529
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hv;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3523
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hv;->f:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hv;Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gq;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3523
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter

    .prologue
    .line 3641
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3647
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter

    .prologue
    .line 3695
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3701
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter

    .prologue
    .line 3663
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3669
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter

    .prologue
    .line 3652
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3658
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/hv;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1
    .parameter

    .prologue
    .line 3708
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hv;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/hv;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3523
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hv;->d:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 2
    .parameter

    .prologue
    .line 3674
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    .line 3675
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3676
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    .line 3678
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3685
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    .line 3686
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3687
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    .line 3689
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1
    .parameter

    .prologue
    .line 3715
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;-><init>(Lcom/b/a/dp;)V

    .line 3716
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1

    .prologue
    .line 3534
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hv;->c:Lcom/keniu/security/sync/d/d/a/hv;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3543
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->n()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    .prologue
    .line 3523
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/hv;->j:Z

    return v0
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1

    .prologue
    .line 3538
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hv;->c:Lcom/keniu/security/sync/d/d/a/hv;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 3576
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3577
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->f:I

    .line 3578
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3705
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3706
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3710
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hv;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3635
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3523
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hv;->t()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3523
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3523
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hv;->t()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3523
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hw;->i()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3523
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hv;->c:Lcom/keniu/security/sync/d/d/a/hv;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3523
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hv;->c:Lcom/keniu/security/sync/d/d/a/hv;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3523
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/hw;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3602
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hv;->b()I

    .line 3603
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3604
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3606
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3607
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->f:I

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(II)V

    .line 3609
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hv;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3610
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3581
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->g:B

    .line 3582
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3597
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3582
    goto :goto_0

    .line 3584
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hv;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3585
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hv;->g:B

    move v0, v2

    .line 3586
    goto :goto_0

    .line 3588
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hv;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3589
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hv;->g:B

    move v0, v2

    .line 3590
    goto :goto_0

    .line 3592
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gq;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3593
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hv;->g:B

    move v0, v2

    .line 3594
    goto :goto_0

    .line 3596
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/hv;->g:B

    move v0, v3

    .line 3597
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3614
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->h:I

    .line 3615
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3628
    :goto_0
    return v0

    .line 3617
    :cond_0
    const/4 v0, 0x0

    .line 3618
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hv;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3619
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3622
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hv;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3623
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hv;->f:I

    invoke-static {v3, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3626
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hv;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3627
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3548
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->o()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3556
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gq;
    .locals 1

    .prologue
    .line 3559
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gs;
    .locals 1

    .prologue
    .line 3562
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->e:Lcom/keniu/security/sync/d/d/a/gq;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 3569
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->d:I

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
    .line 3572
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hv;->f:I

    return v0
.end method
