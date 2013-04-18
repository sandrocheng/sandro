.class public final Lcom/keniu/security/sync/d/d/a/bq;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bs;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/bq;

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
    .line 23883
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bq;-><init>()V

    .line 23884
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bq;->c:Lcom/keniu/security/sync/d/d/a/bq;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bq;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bq;->f:Ljava/lang/Object;

    .line 23885
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 23423
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 23513
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->g:B

    .line 23542
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->h:I

    .line 23423
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/br;)V
    .locals 1
    .parameter

    .prologue
    .line 23416
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bq;-><init>(Lcom/keniu/security/sync/d/d/a/br;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/br;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23421
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 23513
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->g:B

    .line 23542
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->h:I

    .line 23422
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bq;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23416
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bq;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 23571
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23577
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 23625
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23631
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 23593
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23599
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 23582
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23588
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/bq;)Lcom/keniu/security/sync/d/d/a/br;
    .locals 1
    .parameter

    .prologue
    .line 23638
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/bq;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23416
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bq;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 2
    .parameter

    .prologue
    .line 23604
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    .line 23605
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23606
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    .line 23608
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23615
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    .line 23616
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23617
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    .line 23619
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/br;
    .locals 1
    .parameter

    .prologue
    .line 23645
    new-instance v0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;-><init>(Lcom/b/a/dp;)V

    .line 23646
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/bq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23416
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bq;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1

    .prologue
    .line 23427
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bq;->c:Lcom/keniu/security/sync/d/d/a/bq;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 23436
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ar()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 23416
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bq;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1

    .prologue
    .line 23431
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bq;->c:Lcom/keniu/security/sync/d/d/a/bq;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 23466
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->e:Ljava/lang/Object;

    .line 23467
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23468
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 23470
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->e:Ljava/lang/Object;

    .line 23473
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 23498
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->f:Ljava/lang/Object;

    .line 23499
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23500
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 23502
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->f:Ljava/lang/Object;

    .line 23505
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 23510
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->e:Ljava/lang/Object;

    .line 23511
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->f:Ljava/lang/Object;

    .line 23512
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23635
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23636
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23640
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/bq;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23565
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 23416
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bq;->u()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 23416
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 23416
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bq;->u()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 23416
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/br;->i()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 23416
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bq;->c:Lcom/keniu/security/sync/d/d/a/bq;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 23416
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bq;->c:Lcom/keniu/security/sync/d/d/a/bq;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 23416
    new-instance v0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/br;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 23532
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bq;->b()I

    .line 23533
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 23534
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bq;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 23536
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 23537
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bq;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 23539
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 23540
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23515
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->g:B

    .line 23516
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 23527
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 23516
    goto :goto_0

    .line 23518
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bq;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23519
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bq;->g:B

    move v0, v2

    .line 23520
    goto :goto_0

    .line 23522
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bq;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23523
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bq;->g:B

    move v0, v2

    .line 23524
    goto :goto_0

    .line 23526
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bq;->g:B

    move v0, v3

    .line 23527
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 23544
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->h:I

    .line 23545
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 23558
    :goto_0
    return v0

    .line 23547
    :cond_0
    const/4 v0, 0x0

    .line 23548
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bq;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 23549
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bq;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 23552
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bq;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 23553
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bq;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23556
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bq;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 23557
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 23441
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->as()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23449
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->d:I

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
    .line 23452
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bq;->e:Ljava/lang/Object;

    .line 23453
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 23454
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 23462
    :goto_0
    return-object v1

    .line 23456
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 23458
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 23459
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23460
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/bq;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 23462
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 23481
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bq;->d:I

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
    .line 23484
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bq;->f:Ljava/lang/Object;

    .line 23485
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 23486
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 23494
    :goto_0
    return-object v1

    .line 23488
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 23490
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 23491
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23492
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/bq;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 23494
    goto :goto_0
.end method
