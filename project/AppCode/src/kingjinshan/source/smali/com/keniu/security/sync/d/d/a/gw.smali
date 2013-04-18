.class public final Lcom/keniu/security/sync/d/d/a/gw;
.super Lcom/b/a/dk;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hb;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/gw;

.field private static final i:J


# instance fields
.field private d:I

.field private e:J

.field private f:J

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 3876
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gw;-><init>()V

    .line 3877
    sput-object v0, Lcom/keniu/security/sync/d/d/a/gw;->c:Lcom/keniu/security/sync/d/d/a/gw;

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/gw;->e:J

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/gw;->f:J

    .line 3878
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3506
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3552
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->g:B

    .line 3573
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->h:I

    .line 3506
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/gx;)V
    .locals 1
    .parameter

    .prologue
    .line 3499
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/gw;-><init>(Lcom/keniu/security/sync/d/d/a/gx;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/gx;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3504
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3552
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->g:B

    .line 3573
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->h:I

    .line 3505
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gw;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3499
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/gw;->d:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gw;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3499
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gw;->e:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter

    .prologue
    .line 3602
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3608
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter

    .prologue
    .line 3656
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3662
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter

    .prologue
    .line 3624
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3630
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter

    .prologue
    .line 3613
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3619
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/gw;)Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1
    .parameter

    .prologue
    .line 3669
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gw;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/gw;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3499
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gw;->f:J

    return-wide p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 2
    .parameter

    .prologue
    .line 3635
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    .line 3636
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3637
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    .line 3639
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3646
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    .line 3647
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3648
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    .line 3650
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1
    .parameter

    .prologue
    .line 3676
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;-><init>(Lcom/b/a/dp;)V

    .line 3677
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1

    .prologue
    .line 3510
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gw;->c:Lcom/keniu/security/sync/d/d/a/gw;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3519
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 3499
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/gw;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1

    .prologue
    .line 3514
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gw;->c:Lcom/keniu/security/sync/d/d/a/gw;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3549
    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->e:J

    .line 3550
    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->f:J

    .line 3551
    return-void
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1

    .prologue
    .line 3666
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1

    .prologue
    .line 3667
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1

    .prologue
    .line 3671
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gw;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3596
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3499
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gw;->s()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3499
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3499
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gw;->s()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3499
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gx;->i()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3499
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gw;->c:Lcom/keniu/security/sync/d/d/a/gw;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3499
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gw;->c:Lcom/keniu/security/sync/d/d/a/gw;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3499
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/gx;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3563
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gw;->b()I

    .line 3564
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 3565
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->e:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 3567
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 3568
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->f:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 3570
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3571
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3554
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->g:B

    .line 3555
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 3558
    :goto_0
    return v0

    .line 3555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3557
    :cond_1
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/gw;->g:B

    move v0, v2

    .line 3558
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3575
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->h:I

    .line 3576
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3589
    :goto_0
    return v0

    .line 3578
    :cond_0
    const/4 v0, 0x0

    .line 3579
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gw;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3580
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->e:J

    invoke-static {v2, v0, v1}, Lcom/b/a/n;->e(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3583
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gw;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3584
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gw;->f:J

    invoke-static {v3, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3587
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gw;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3588
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3524
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3532
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 3535
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->e:J

    return-wide v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 3542
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->d:I

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

.method public final m()J
    .locals 2

    .prologue
    .line 3545
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gw;->f:J

    return-wide v0
.end method
