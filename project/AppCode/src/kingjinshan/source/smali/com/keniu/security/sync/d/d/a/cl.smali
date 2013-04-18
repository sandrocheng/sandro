.class public final Lcom/keniu/security/sync/d/d/a/cl;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/cn;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/cl;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Lcom/keniu/security/sync/d/d/a/ge;

.field private h:Lcom/keniu/security/sync/d/d/a/gj;

.field private i:Lcom/keniu/security/sync/d/d/a/gy;

.field private k:Lcom/keniu/security/sync/d/d/a/gj;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6147
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cl;-><init>()V

    .line 6148
    sput-object v0, Lcom/keniu/security/sync/d/d/a/cl;->e:Lcom/keniu/security/sync/d/d/a/cl;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cl;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cl;->i:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cl;->k:Lcom/keniu/security/sync/d/d/a/gj;

    .line 6149
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5315
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 5395
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->l:B

    .line 5430
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->m:I

    .line 5315
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cm;)V
    .locals 1
    .parameter

    .prologue
    .line 5308
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cl;-><init>(Lcom/keniu/security/sync/d/d/a/cm;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cm;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 5313
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 5395
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->l:B

    .line 5430
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->m:I

    .line 5314
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/cm;
    .locals 1

    .prologue
    .line 5536
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cl;)Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cl;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5308
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter

    .prologue
    .line 5467
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5473
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter

    .prologue
    .line 5521
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5527
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cm;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter

    .prologue
    .line 5489
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5495
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cm;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter

    .prologue
    .line 5478
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5484
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cm;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/cl;)Lcom/keniu/security/sync/d/d/a/cm;
    .locals 1
    .parameter

    .prologue
    .line 5534
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cl;)Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cl;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5308
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cl;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5308
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cl;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cl;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5308
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cl;->i:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 2
    .parameter

    .prologue
    .line 5500
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    .line 5501
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5502
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    .line 5504
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5511
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    .line 5512
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cm;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5513
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cm;->a(Lcom/keniu/security/sync/d/d/a/cm;)Lcom/keniu/security/sync/d/d/a/cl;

    move-result-object v0

    .line 5515
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cm;
    .locals 1
    .parameter

    .prologue
    .line 5541
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cm;-><init>(Lcom/b/a/dp;)V

    .line 5542
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/cl;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5308
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cl;->k:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1

    .prologue
    .line 5319
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cl;->e:Lcom/keniu/security/sync/d/d/a/cl;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5328
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->t()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v()Z
    .locals 1

    .prologue
    .line 5308
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/cl;->j:Z

    return v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/cl;
    .locals 1

    .prologue
    .line 5323
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cl;->e:Lcom/keniu/security/sync/d/d/a/cl;

    return-object v0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 5390
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    .line 5391
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->h:Lcom/keniu/security/sync/d/d/a/gj;

    .line 5392
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->i:Lcom/keniu/security/sync/d/d/a/gy;

    .line 5393
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->k:Lcom/keniu/security/sync/d/d/a/gj;

    .line 5394
    return-void
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/cm;
    .locals 1

    .prologue
    .line 5531
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/cm;
    .locals 1

    .prologue
    .line 5532
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5461
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cl;->A()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5308
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cl;->A()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5308
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cm;->i()Lcom/keniu/security/sync/d/d/a/cm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5308
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cl;->e:Lcom/keniu/security/sync/d/d/a/cl;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5308
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cl;->e:Lcom/keniu/security/sync/d/d/a/cl;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 5308
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cm;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cm;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5414
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cl;->b()I

    .line 5415
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5416
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 5418
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5419
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 5421
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5422
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cl;->i:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 5424
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 5425
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->k:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 5427
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cl;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 5428
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5397
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->l:B

    .line 5398
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 5409
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 5398
    goto :goto_0

    .line 5400
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cl;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5401
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cl;->l:B

    move v0, v2

    .line 5402
    goto :goto_0

    .line 5404
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5405
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cl;->l:B

    move v0, v2

    .line 5406
    goto :goto_0

    .line 5408
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/cl;->l:B

    move v0, v3

    .line 5409
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5432
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->m:I

    .line 5433
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5454
    :goto_0
    return v0

    .line 5435
    :cond_0
    const/4 v0, 0x0

    .line 5436
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 5437
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5440
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 5441
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cl;->h:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5444
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 5445
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cl;->i:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5448
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 5449
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cl;->k:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5452
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cl;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 5453
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 5333
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->u()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5341
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

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
    .line 5344
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 5347
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->g:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 5354
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

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
    .line 5357
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 5360
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->h:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 5367
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

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
    .line 5370
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->i:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 5373
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->i:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 5380
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->f:I

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

.method public final t()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 5383
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->k:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final u()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 5386
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cl;->k:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method
