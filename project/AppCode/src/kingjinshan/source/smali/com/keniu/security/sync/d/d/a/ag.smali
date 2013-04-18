.class public final Lcom/keniu/security/sync/d/d/a/ag;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ai;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/ag;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34987
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ag;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ag;-><init>()V

    .line 34988
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ag;->c:Lcom/keniu/security/sync/d/d/a/ag;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ag;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ag;->f:Ljava/lang/Object;

    .line 34989
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 34527
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 34617
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->g:B

    .line 34646
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->h:I

    .line 34527
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 34520
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ag;-><init>(Lcom/keniu/security/sync/d/d/a/ah;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ah;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 34525
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 34617
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->g:B

    .line 34646
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->h:I

    .line 34526
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ag;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34520
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ag;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 34675
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34681
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 34729
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34735
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 34697
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34703
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 34686
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34692
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ag;)Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 34742
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ag;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34520
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ag;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 2
    .parameter

    .prologue
    .line 34708
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    .line 34709
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34710
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    .line 34712
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34719
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    .line 34720
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34721
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    .line 34723
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 34749
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;-><init>(Lcom/b/a/dp;)V

    .line 34750
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34520
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ag;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1

    .prologue
    .line 34531
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ag;->c:Lcom/keniu/security/sync/d/d/a/ag;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 34540
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bb()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 34520
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ag;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1

    .prologue
    .line 34535
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ag;->c:Lcom/keniu/security/sync/d/d/a/ag;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 34570
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->e:Ljava/lang/Object;

    .line 34571
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34572
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 34574
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->e:Ljava/lang/Object;

    .line 34577
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 34602
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->f:Ljava/lang/Object;

    .line 34603
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34604
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 34606
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->f:Ljava/lang/Object;

    .line 34609
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 34614
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->e:Ljava/lang/Object;

    .line 34615
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->f:Ljava/lang/Object;

    .line 34616
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34739
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34740
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34744
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ag;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34669
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34520
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ag;->u()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34520
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 34520
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ag;->u()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 34520
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ah;->i()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34520
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ag;->c:Lcom/keniu/security/sync/d/d/a/ag;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34520
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ag;->c:Lcom/keniu/security/sync/d/d/a/ag;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 34520
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ah;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 34636
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ag;->b()I

    .line 34637
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 34638
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ag;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 34640
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 34641
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ag;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 34643
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ag;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 34644
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34619
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->g:B

    .line 34620
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 34631
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 34620
    goto :goto_0

    .line 34622
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ag;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 34623
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ag;->g:B

    move v0, v2

    .line 34624
    goto :goto_0

    .line 34626
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ag;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34627
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ag;->g:B

    move v0, v2

    .line 34628
    goto :goto_0

    .line 34630
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ag;->g:B

    move v0, v3

    .line 34631
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 34648
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->h:I

    .line 34649
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34662
    :goto_0
    return v0

    .line 34651
    :cond_0
    const/4 v0, 0x0

    .line 34652
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ag;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 34653
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ag;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34656
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ag;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 34657
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ag;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34660
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ag;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 34661
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 34545
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bc()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34553
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->d:I

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
    .line 34556
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ag;->e:Ljava/lang/Object;

    .line 34557
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 34558
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 34566
    :goto_0
    return-object v1

    .line 34560
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 34562
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 34563
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34564
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ag;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 34566
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 34585
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ag;->d:I

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

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34588
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ag;->f:Ljava/lang/Object;

    .line 34589
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 34590
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 34598
    :goto_0
    return-object v1

    .line 34592
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 34594
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 34595
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34596
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ag;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 34598
    goto :goto_0
.end method
