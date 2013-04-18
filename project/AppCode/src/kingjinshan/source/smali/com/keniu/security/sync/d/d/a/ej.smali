.class public final Lcom/keniu/security/sync/d/d/a/ej;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/el;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ej;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gj;

.field private h:Lcom/keniu/security/sync/d/d/a/gy;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22159
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ej;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ej;-><init>()V

    .line 22160
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ej;->d:Lcom/keniu/security/sync/d/d/a/ej;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ej;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ej;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 22161
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 21465
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 21531
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->i:B

    .line 21563
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->k:I

    .line 21465
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ek;)V
    .locals 1
    .parameter

    .prologue
    .line 21458
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ej;-><init>(Lcom/keniu/security/sync/d/d/a/ek;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ek;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 21463
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 21531
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->i:B

    .line 21563
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->k:I

    .line 21464
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ej;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21458
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter

    .prologue
    .line 21596
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21602
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter

    .prologue
    .line 21650
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21656
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ek;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter

    .prologue
    .line 21618
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21624
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ek;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter

    .prologue
    .line 21607
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21613
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ek;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ej;)Lcom/keniu/security/sync/d/d/a/ek;
    .locals 1
    .parameter

    .prologue
    .line 21663
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ej;)Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ej;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21458
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ej;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21458
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ej;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ej;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21458
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ej;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 2
    .parameter

    .prologue
    .line 21629
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    .line 21630
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21631
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    .line 21633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ej;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21640
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    .line 21641
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ek;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21642
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ek;)Lcom/keniu/security/sync/d/d/a/ej;

    move-result-object v0

    .line 21644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ek;
    .locals 1
    .parameter

    .prologue
    .line 21670
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;-><init>(Lcom/b/a/dp;)V

    .line 21671
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1

    .prologue
    .line 21469
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ej;->d:Lcom/keniu/security/sync/d/d/a/ej;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 21478
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->al()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 21458
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ej;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ej;
    .locals 1

    .prologue
    .line 21473
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ej;->d:Lcom/keniu/security/sync/d/d/a/ej;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 21527
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 21528
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->g:Lcom/keniu/security/sync/d/d/a/gj;

    .line 21529
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 21530
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/ek;
    .locals 1

    .prologue
    .line 21660
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ek;
    .locals 1

    .prologue
    .line 21661
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ek;
    .locals 1

    .prologue
    .line 21665
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ek;->a(Lcom/keniu/security/sync/d/d/a/ej;)Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21590
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 21458
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ej;->x()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 21458
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 21458
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ej;->x()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 21458
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ek;->i()Lcom/keniu/security/sync/d/d/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 21458
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ej;->d:Lcom/keniu/security/sync/d/d/a/ej;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 21458
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ej;->d:Lcom/keniu/security/sync/d/d/a/ej;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 21458
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ek;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ek;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 21550
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ej;->b()I

    .line 21551
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 21552
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 21554
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 21555
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 21557
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 21558
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ej;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 21560
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ej;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 21561
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21533
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->i:B

    .line 21534
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 21545
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 21534
    goto :goto_0

    .line 21536
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ej;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21537
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ej;->i:B

    move v0, v2

    .line 21538
    goto :goto_0

    .line 21540
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 21541
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ej;->i:B

    move v0, v2

    .line 21542
    goto :goto_0

    .line 21544
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ej;->i:B

    move v0, v3

    .line 21545
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 21565
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->k:I

    .line 21566
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 21583
    :goto_0
    return v0

    .line 21568
    :cond_0
    const/4 v0, 0x0

    .line 21569
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 21570
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 21573
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 21574
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ej;->g:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21577
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 21578
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ej;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21581
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ej;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 21582
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 21483
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->am()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21491
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

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
    .line 21494
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 21497
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 21504
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 21507
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 21510
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->g:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 21517
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->e:I

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

.method public final q()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 21520
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 21523
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ej;->h:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method
