.class public final Lcom/keniu/security/sync/d/d/a/hm;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ho;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/hm;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:J

.field private h:I

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 998
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hm;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hm;-><init>()V

    .line 999
    sput-object v0, Lcom/keniu/security/sync/d/d/a/hm;->d:Lcom/keniu/security/sync/d/d/a/hm;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/hm;->g:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/hm;->h:I

    .line 1000
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 474
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 534
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->i:B

    .line 566
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->k:I

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/hn;)V
    .locals 1
    .parameter

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hm;-><init>(Lcom/keniu/security/sync/d/d/a/hn;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/hn;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 472
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 534
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->i:B

    .line 566
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->k:I

    .line 473
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hm;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hm;->h:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hm;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hm;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hm;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter

    .prologue
    .line 653
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 659
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter

    .prologue
    .line 621
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 627
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter

    .prologue
    .line 610
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/hm;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1
    .parameter

    .prologue
    .line 666
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hm;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/hm;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 2
    .parameter

    .prologue
    .line 632
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    .line 644
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    .line 647
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1
    .parameter

    .prologue
    .line 673
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;-><init>(Lcom/b/a/dp;)V

    .line 674
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hm;->d:Lcom/keniu/security/sync/d/d/a/hm;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->d()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q()Z
    .locals 1

    .prologue
    .line 467
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/hm;->j:Z

    return v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hm;->d:Lcom/keniu/security/sync/d/d/a/hm;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->g:J

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->h:I

    .line 533
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1

    .prologue
    .line 663
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1

    .prologue
    .line 664
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1

    .prologue
    .line 668
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hm;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hm;->v()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hm;->v()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hn;->i()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hm;->d:Lcom/keniu/security/sync/d/d/a/hm;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hm;->d:Lcom/keniu/security/sync/d/d/a/hm;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 467
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/hn;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 553
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hm;->b()I

    .line 554
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 557
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 558
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->g:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 560
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 561
    const/4 v0, 0x3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hm;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hm;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 564
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->i:B

    .line 537
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 548
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 537
    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hm;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 540
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hm;->i:B

    move v0, v2

    .line 541
    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 544
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hm;->i:B

    move v0, v2

    .line 545
    goto :goto_0

    .line 547
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/hm;->i:B

    move v0, v3

    .line 548
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 568
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->k:I

    .line 569
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 586
    :goto_0
    return v0

    .line 571
    :cond_0
    const/4 v0, 0x0

    .line 572
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 573
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 576
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 577
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hm;->g:J

    invoke-static {v3, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 580
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 581
    const/4 v1, 0x3

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hm;->h:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 584
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hm;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 585
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->e()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 500
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

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
    .line 503
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

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

.method public final n()J
    .locals 2

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->g:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->e:I

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

.method public final p()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hm;->h:I

    return v0
.end method
