.class public final Lcom/keniu/security/sync/d/d/a/em;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/eo;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/em;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32871
    new-instance v0, Lcom/keniu/security/sync/d/d/a/em;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/em;-><init>()V

    .line 32872
    sput-object v0, Lcom/keniu/security/sync/d/d/a/em;->d:Lcom/keniu/security/sync/d/d/a/em;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/em;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/em;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/em;->h:Ljava/lang/Object;

    .line 32873
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32321
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 32444
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/em;->i:B

    .line 32476
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/em;->k:I

    .line 32321
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/en;)V
    .locals 1
    .parameter

    .prologue
    .line 32314
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/em;-><init>(Lcom/keniu/security/sync/d/d/a/en;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/en;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 32319
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 32444
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/em;->i:B

    .line 32476
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/em;->k:I

    .line 32320
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/em;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32314
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter

    .prologue
    .line 32509
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32515
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter

    .prologue
    .line 32563
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32569
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/en;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter

    .prologue
    .line 32531
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32537
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/en;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter

    .prologue
    .line 32520
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32526
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/en;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/em;)Lcom/keniu/security/sync/d/d/a/en;
    .locals 1
    .parameter

    .prologue
    .line 32576
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/em;)Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/em;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32314
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/em;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 2
    .parameter

    .prologue
    .line 32542
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    .line 32543
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32544
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    .line 32546
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/em;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32553
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    .line 32554
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/en;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32555
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/en;)Lcom/keniu/security/sync/d/d/a/em;

    move-result-object v0

    .line 32557
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/en;
    .locals 1
    .parameter

    .prologue
    .line 32583
    new-instance v0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;-><init>(Lcom/b/a/dp;)V

    .line 32584
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/em;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32314
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/em;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/em;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32314
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/em;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/em;
    .locals 1

    .prologue
    .line 32325
    sget-object v0, Lcom/keniu/security/sync/d/d/a/em;->d:Lcom/keniu/security/sync/d/d/a/em;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 32334
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aT()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 32314
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/em;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/em;
    .locals 1

    .prologue
    .line 32329
    sget-object v0, Lcom/keniu/security/sync/d/d/a/em;->d:Lcom/keniu/security/sync/d/d/a/em;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 32364
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->f:Ljava/lang/Object;

    .line 32365
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32366
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 32368
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->f:Ljava/lang/Object;

    .line 32371
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 32396
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->g:Ljava/lang/Object;

    .line 32397
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32398
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 32400
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->g:Ljava/lang/Object;

    .line 32403
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 32428
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->h:Ljava/lang/Object;

    .line 32429
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32430
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 32432
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->h:Ljava/lang/Object;

    .line 32435
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 32440
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->f:Ljava/lang/Object;

    .line 32441
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->g:Ljava/lang/Object;

    .line 32442
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/em;->h:Ljava/lang/Object;

    .line 32443
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/en;
    .locals 1

    .prologue
    .line 32573
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/en;
    .locals 1

    .prologue
    .line 32574
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/en;
    .locals 1

    .prologue
    .line 32578
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/en;->a(Lcom/keniu/security/sync/d/d/a/em;)Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32503
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 32314
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->x()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 32314
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 32314
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->x()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 32314
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/en;->i()Lcom/keniu/security/sync/d/d/a/en;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 32314
    sget-object v0, Lcom/keniu/security/sync/d/d/a/em;->d:Lcom/keniu/security/sync/d/d/a/em;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 32314
    sget-object v0, Lcom/keniu/security/sync/d/d/a/em;->d:Lcom/keniu/security/sync/d/d/a/em;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 32314
    new-instance v0, Lcom/keniu/security/sync/d/d/a/en;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/en;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 32463
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/em;->b()I

    .line 32464
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 32465
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 32467
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 32468
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 32470
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 32471
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 32473
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/em;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 32474
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32446
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/em;->i:B

    .line 32447
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 32458
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 32447
    goto :goto_0

    .line 32449
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/em;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 32450
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/em;->i:B

    move v0, v2

    .line 32451
    goto :goto_0

    .line 32453
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/em;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 32454
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/em;->i:B

    move v0, v2

    .line 32455
    goto :goto_0

    .line 32457
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/em;->i:B

    move v0, v3

    .line 32458
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 32478
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/em;->k:I

    .line 32479
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 32496
    :goto_0
    return v0

    .line 32481
    :cond_0
    const/4 v0, 0x0

    .line 32482
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 32483
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 32486
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 32487
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32490
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 32491
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/em;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32494
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/em;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 32495
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/em;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 32339
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aU()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32347
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

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
    .line 32350
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/em;->f:Ljava/lang/Object;

    .line 32351
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 32352
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 32360
    :goto_0
    return-object v1

    .line 32354
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 32356
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 32357
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32358
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/em;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 32360
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 32379
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

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
    .line 32382
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/em;->g:Ljava/lang/Object;

    .line 32383
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 32384
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 32392
    :goto_0
    return-object v1

    .line 32386
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 32388
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 32389
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32390
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/em;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 32392
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 32411
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/em;->e:I

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

.method public final o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32414
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/em;->h:Ljava/lang/Object;

    .line 32415
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 32416
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 32424
    :goto_0
    return-object v1

    .line 32418
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 32420
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 32421
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32422
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/em;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 32424
    goto :goto_0
.end method
