.class public final Lcom/keniu/security/sync/d/d/a/cx;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/cz;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/cx;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Lcom/keniu/security/sync/d/d/a/ge;

.field private h:Lcom/keniu/security/sync/d/d/a/gn;

.field private i:Lcom/b/a/eu;

.field private k:I

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18071
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cx;-><init>()V

    .line 18072
    sput-object v0, Lcom/keniu/security/sync/d/d/a/cx;->e:Lcom/keniu/security/sync/d/d/a/cx;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    sget-object v1, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/cx;->k:I

    .line 18073
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17344
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 17422
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->l:B

    .line 17463
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->m:I

    .line 17344
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cy;)V
    .locals 1
    .parameter

    .prologue
    .line 17337
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cx;-><init>(Lcom/keniu/security/sync/d/d/a/cy;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cy;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 17342
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 17422
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->l:B

    .line 17463
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->m:I

    .line 17343
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cx;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17337
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cx;->k:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cx;)Lcom/b/a/eu;
    .locals 1
    .parameter

    .prologue
    .line 17337
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cx;Lcom/b/a/eu;)Lcom/b/a/eu;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17337
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter

    .prologue
    .line 17505
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17511
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter

    .prologue
    .line 17559
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17565
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cy;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter

    .prologue
    .line 17527
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17533
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cy;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter

    .prologue
    .line 17516
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17522
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cy;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cx;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17337
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cx;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17337
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/cx;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17337
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 2
    .parameter

    .prologue
    .line 17538
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    .line 17539
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17540
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    .line 17542
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cx;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 17549
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    .line 17550
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cy;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17551
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cy;)Lcom/keniu/security/sync/d/d/a/cx;

    move-result-object v0

    .line 17553
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cy;
    .locals 1
    .parameter

    .prologue
    .line 17579
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;-><init>(Lcom/b/a/dp;)V

    .line 17580
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/cx;)Lcom/keniu/security/sync/d/d/a/cy;
    .locals 1
    .parameter

    .prologue
    .line 17572
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cx;)Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1

    .prologue
    .line 17348
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cx;->e:Lcom/keniu/security/sync/d/d/a/cx;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 17357
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->Z()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 17337
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/cx;->j:Z

    return v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/cx;
    .locals 1

    .prologue
    .line 17352
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cx;->e:Lcom/keniu/security/sync/d/d/a/cx;

    return-object v0
.end method

.method private v()V
    .locals 1

    .prologue
    .line 17417
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    .line 17418
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    .line 17419
    sget-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    .line 17420
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->k:I

    .line 17421
    return-void
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/cy;
    .locals 1

    .prologue
    .line 17569
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/cy;
    .locals 1

    .prologue
    .line 17570
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/cy;
    .locals 1

    .prologue
    .line 17574
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cy;->a(Lcom/keniu/security/sync/d/d/a/cx;)Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17499
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 17337
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cx;->y()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 17337
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 17337
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cx;->y()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 17337
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cy;->i()Lcom/keniu/security/sync/d/d/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 17337
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cx;->e:Lcom/keniu/security/sync/d/d/a/cx;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 17337
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cx;->e:Lcom/keniu/security/sync/d/d/a/cx;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 17337
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cy;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cy;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17403
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 17447
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cx;->b()I

    .line 17448
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 17449
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 17451
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 17452
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 17454
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    invoke-interface {v1}, Lcom/b/a/eu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 17455
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    invoke-interface {v2, v0}, Lcom/b/a/eu;->a(I)Lcom/b/a/i;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 17454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17457
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 17458
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->k:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 17460
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cx;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 17461
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17424
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->l:B

    .line 17425
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 17442
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 17425
    goto :goto_0

    .line 17427
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cx;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17428
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cx;->l:B

    move v0, v2

    .line 17429
    goto :goto_0

    .line 17431
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17432
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cx;->l:B

    move v0, v2

    .line 17433
    goto :goto_0

    .line 17435
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cx;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17436
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17437
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cx;->l:B

    move v0, v2

    .line 17438
    goto :goto_0

    .line 17441
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/cx;->l:B

    move v0, v3

    .line 17442
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17465
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->m:I

    .line 17466
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 17492
    :goto_0
    return v0

    .line 17469
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    .line 17470
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 17473
    :goto_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 17474
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    move v1, v2

    .line 17479
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    invoke-interface {v3}, Lcom/b/a/eu;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 17480
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    invoke-interface {v3, v1}, Lcom/b/a/eu;->a(I)Lcom/b/a/i;

    move-result-object v3

    invoke-static {v3}, Lcom/b/a/n;->b(Lcom/b/a/i;)I

    move-result v3

    add-int/2addr v2, v3

    .line 17479
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17483
    :cond_2
    add-int/2addr v0, v2

    .line 17484
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 17486
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    .line 17487
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cx;->k:I

    invoke-static {v5, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17490
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cx;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 17491
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->m:I

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 17362
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aa()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17370
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

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
    .line 17373
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 17376
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 17383
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 17386
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 17389
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->h:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 17397
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 17400
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->i:Lcom/b/a/eu;

    invoke-interface {v0}, Lcom/b/a/eu;->size()I

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 17410
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->f:I

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

.method public final s()I
    .locals 1

    .prologue
    .line 17413
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cx;->k:I

    return v0
.end method
