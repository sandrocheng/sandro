.class public final Lcom/keniu/security/sync/d/d/a/jb;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jd;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/jb;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Ljava/util/List;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8112
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jb;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jb;-><init>()V

    .line 8113
    sput-object v0, Lcom/keniu/security/sync/d/d/a/jb;->c:Lcom/keniu/security/sync/d/d/a/jb;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    .line 8114
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7419
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 7479
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->g:B

    .line 7514
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->h:I

    .line 7419
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/jc;)V
    .locals 1
    .parameter

    .prologue
    .line 7412
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jb;-><init>(Lcom/keniu/security/sync/d/d/a/jc;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/jc;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7417
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 7479
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->g:B

    .line 7514
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->h:I

    .line 7418
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jb;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7412
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jb;->d:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jb;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7412
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter

    .prologue
    .line 7543
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7549
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter

    .prologue
    .line 7597
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7603
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter

    .prologue
    .line 7565
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7571
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter

    .prologue
    .line 7554
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7560
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jb;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 7412
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jb;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7412
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 2
    .parameter

    .prologue
    .line 7576
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    .line 7577
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7578
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    .line 7580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7587
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    .line 7588
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7589
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    .line 7591
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter

    .prologue
    .line 7617
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;-><init>(Lcom/b/a/dp;)V

    .line 7618
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/jb;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter

    .prologue
    .line 7610
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jb;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1

    .prologue
    .line 7423
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jb;->c:Lcom/keniu/security/sync/d/d/a/jb;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7432
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->z()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 7412
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jb;->j:Z

    return v0
.end method

.method static synthetic q()Z
    .locals 1

    .prologue
    .line 7412
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jb;->j:Z

    return v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1

    .prologue
    .line 7427
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jb;->c:Lcom/keniu/security/sync/d/d/a/jb;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 7476
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7477
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    .line 7478
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 7607
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 7608
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 7612
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jb;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7537
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7412
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jb;->v()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7412
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7412
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jb;->v()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7412
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jc;->i()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7412
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jb;->c:Lcom/keniu/security/sync/d/d/a/jb;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7412
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jb;->c:Lcom/keniu/security/sync/d/d/a/jb;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 7412
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/jc;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 7468
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ip;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 7504
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jb;->b()I

    .line 7505
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7506
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 7508
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7509
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 7508
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7511
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 7512
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7481
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->g:B

    .line 7482
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 7499
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 7482
    goto :goto_0

    .line 7484
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jb;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7485
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jb;->g:B

    move v0, v2

    .line 7486
    goto :goto_0

    .line 7488
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7489
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jb;->g:B

    move v0, v2

    .line 7490
    goto :goto_0

    :cond_3
    move v0, v2

    .line 7492
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jb;->o()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7493
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jb;->a(I)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/ip;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7494
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jb;->g:B

    move v0, v2

    .line 7495
    goto :goto_0

    .line 7492
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7498
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/jb;->g:B

    move v0, v3

    .line 7499
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7516
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->h:I

    .line 7517
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7530
    :goto_0
    return v0

    .line 7520
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 7521
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v2

    move v2, v0

    .line 7524
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7525
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 7524
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 7528
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 7529
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->h:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/ir;
    .locals 1
    .parameter

    .prologue
    .line 7472
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ir;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 7437
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->A()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7445
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->d:I

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
    .line 7448
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 7451
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 7458
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 7462
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 7465
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
