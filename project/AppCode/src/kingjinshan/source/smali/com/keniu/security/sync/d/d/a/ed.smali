.class public final Lcom/keniu/security/sync/d/d/a/ed;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ef;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/ed;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Lcom/keniu/security/sync/d/d/a/ge;

.field private h:Lcom/keniu/security/sync/d/d/a/gj;

.field private i:Lcom/keniu/security/sync/d/d/a/gy;

.field private k:Lcom/keniu/security/sync/d/d/a/hc;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31232
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ed;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ed;-><init>()V

    .line 31233
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ed;->e:Lcom/keniu/security/sync/d/d/a/ed;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ed;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ed;->i:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ed;->k:Lcom/keniu/security/sync/d/d/a/hc;

    .line 31234
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30400
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 30480
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->l:B

    .line 30515
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->m:I

    .line 30400
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ee;)V
    .locals 1
    .parameter

    .prologue
    .line 30393
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ed;-><init>(Lcom/keniu/security/sync/d/d/a/ee;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ee;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 30398
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 30480
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->l:B

    .line 30515
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->m:I

    .line 30399
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/ee;
    .locals 1

    .prologue
    .line 30621
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ed;)Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ed;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30393
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter

    .prologue
    .line 30552
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30558
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter

    .prologue
    .line 30606
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30612
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ee;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter

    .prologue
    .line 30574
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30580
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ee;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter

    .prologue
    .line 30563
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30569
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ee;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ed;)Lcom/keniu/security/sync/d/d/a/ee;
    .locals 1
    .parameter

    .prologue
    .line 30619
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ed;)Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ed;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30393
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ed;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30393
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ed;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ed;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30393
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ed;->i:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ed;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30393
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ed;->k:Lcom/keniu/security/sync/d/d/a/hc;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 2
    .parameter

    .prologue
    .line 30585
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    .line 30586
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30587
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    .line 30589
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ed;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30596
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    .line 30597
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ee;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30598
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ee;->a(Lcom/keniu/security/sync/d/d/a/ee;)Lcom/keniu/security/sync/d/d/a/ed;

    move-result-object v0

    .line 30600
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ee;
    .locals 1
    .parameter

    .prologue
    .line 30626
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ee;-><init>(Lcom/b/a/dp;)V

    .line 30627
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1

    .prologue
    .line 30404
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ed;->e:Lcom/keniu/security/sync/d/d/a/ed;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 30413
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aN()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v()Z
    .locals 1

    .prologue
    .line 30393
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ed;->j:Z

    return v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ed;
    .locals 1

    .prologue
    .line 30408
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ed;->e:Lcom/keniu/security/sync/d/d/a/ed;

    return-object v0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 30475
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    .line 30476
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->h:Lcom/keniu/security/sync/d/d/a/gj;

    .line 30477
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->i:Lcom/keniu/security/sync/d/d/a/gy;

    .line 30478
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->k:Lcom/keniu/security/sync/d/d/a/hc;

    .line 30479
    return-void
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/ee;
    .locals 1

    .prologue
    .line 30616
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/ee;
    .locals 1

    .prologue
    .line 30617
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30546
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 30393
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ed;->A()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 30393
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 30393
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ed;->A()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 30393
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ee;->i()Lcom/keniu/security/sync/d/d/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 30393
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ed;->e:Lcom/keniu/security/sync/d/d/a/ed;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 30393
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ed;->e:Lcom/keniu/security/sync/d/d/a/ed;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 30393
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ee;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ee;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 30499
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ed;->b()I

    .line 30500
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 30501
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 30503
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 30504
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 30506
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 30507
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ed;->i:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 30509
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 30510
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->k:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 30512
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ed;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 30513
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30482
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->l:B

    .line 30483
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 30494
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 30483
    goto :goto_0

    .line 30485
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ed;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30486
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ed;->l:B

    move v0, v2

    .line 30487
    goto :goto_0

    .line 30489
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 30490
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ed;->l:B

    move v0, v2

    .line 30491
    goto :goto_0

    .line 30493
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ed;->l:B

    move v0, v3

    .line 30494
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 30517
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->m:I

    .line 30518
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 30539
    :goto_0
    return v0

    .line 30520
    :cond_0
    const/4 v0, 0x0

    .line 30521
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 30522
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 30525
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 30526
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ed;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30529
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 30530
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ed;->i:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30533
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 30534
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ed;->k:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30537
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ed;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 30538
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 30418
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aO()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30426
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

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
    .line 30429
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 30432
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 30439
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

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
    .line 30442
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 30445
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 30452
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

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
    .line 30455
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->i:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 30458
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->i:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 30465
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 30468
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->k:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final u()Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1

    .prologue
    .line 30471
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ed;->k:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method
