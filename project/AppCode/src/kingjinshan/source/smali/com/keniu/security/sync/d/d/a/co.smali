.class public final Lcom/keniu/security/sync/d/d/a/co;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/cq;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/co;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:I

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6856
    new-instance v0, Lcom/keniu/security/sync/d/d/a/co;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/co;-><init>()V

    .line 6857
    sput-object v0, Lcom/keniu/security/sync/d/d/a/co;->f:Lcom/keniu/security/sync/d/d/a/co;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/co;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/co;->i:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/co;->k:Ljava/lang/Object;

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/co;->l:I

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/co;->m:I

    .line 6858
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6184
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 6329
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    .line 6375
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/co;->o:I

    .line 6184
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cp;)V
    .locals 1
    .parameter

    .prologue
    .line 6177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/co;-><init>(Lcom/keniu/security/sync/d/d/a/cp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6182
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 6329
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    .line 6375
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/co;->o:I

    .line 6183
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/cp;
    .locals 1

    .prologue
    .line 6481
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method

.method private J()Lcom/keniu/security/sync/d/d/a/cp;
    .locals 1

    .prologue
    .line 6485
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/co;)Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/co;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6177
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/co;->l:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter

    .prologue
    .line 6416
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6422
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter

    .prologue
    .line 6470
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6476
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cp;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter

    .prologue
    .line 6438
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6444
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cp;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter

    .prologue
    .line 6427
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6433
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cp;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/co;)Lcom/keniu/security/sync/d/d/a/cp;
    .locals 1
    .parameter

    .prologue
    .line 6483
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/co;)Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/co;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6177
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/co;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/co;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6177
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/co;->m:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 2
    .parameter

    .prologue
    .line 6449
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    .line 6450
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6451
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    .line 6453
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/co;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6460
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    .line 6461
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cp;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6462
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cp;->a(Lcom/keniu/security/sync/d/d/a/cp;)Lcom/keniu/security/sync/d/d/a/co;

    move-result-object v0

    .line 6464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cp;
    .locals 1
    .parameter

    .prologue
    .line 6490
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cp;-><init>(Lcom/b/a/dp;)V

    .line 6491
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/co;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6177
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/co;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/co;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6177
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    return p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/co;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6177
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/co;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/co;
    .locals 1

    .prologue
    .line 6188
    sget-object v0, Lcom/keniu/security/sync/d/d/a/co;->f:Lcom/keniu/security/sync/d/d/a/co;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6197
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->v()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 6177
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/co;->j:Z

    return v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/co;
    .locals 1

    .prologue
    .line 6192
    sget-object v0, Lcom/keniu/security/sync/d/d/a/co;->f:Lcom/keniu/security/sync/d/d/a/co;

    return-object v0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 6227
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->h:Ljava/lang/Object;

    .line 6228
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6229
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 6231
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->h:Ljava/lang/Object;

    .line 6234
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 6259
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->i:Ljava/lang/Object;

    .line 6260
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6261
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 6263
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->i:Ljava/lang/Object;

    .line 6266
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 6291
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->k:Ljava/lang/Object;

    .line 6292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6293
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 6295
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->k:Ljava/lang/Object;

    .line 6298
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6323
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->h:Ljava/lang/Object;

    .line 6324
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->i:Ljava/lang/Object;

    .line 6325
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/co;->k:Ljava/lang/Object;

    .line 6326
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/co;->l:I

    .line 6327
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/co;->m:I

    .line 6328
    return-void
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/cp;
    .locals 1

    .prologue
    .line 6480
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6410
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6177
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->J()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6177
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6177
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->J()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6177
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cp;->i()Lcom/keniu/security/sync/d/d/a/cp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6177
    sget-object v0, Lcom/keniu/security/sync/d/d/a/co;->f:Lcom/keniu/security/sync/d/d/a/co;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6177
    sget-object v0, Lcom/keniu/security/sync/d/d/a/co;->f:Lcom/keniu/security/sync/d/d/a/co;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 6177
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cp;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cp;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6356
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/co;->b()I

    .line 6357
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6358
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 6360
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 6363
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 6364
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 6366
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 6367
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->l:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 6369
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 6370
    const/4 v0, 0x5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/co;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 6372
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/co;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 6373
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6331
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    .line 6332
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 6351
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 6332
    goto :goto_0

    .line 6334
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/co;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6335
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    move v0, v2

    .line 6336
    goto :goto_0

    .line 6338
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/co;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6339
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    move v0, v2

    .line 6340
    goto :goto_0

    .line 6342
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/co;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6343
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    move v0, v2

    .line 6344
    goto :goto_0

    .line 6346
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/co;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6347
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    move v0, v2

    .line 6348
    goto :goto_0

    .line 6350
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/co;->n:B

    move v0, v3

    .line 6351
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6377
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->o:I

    .line 6378
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6403
    :goto_0
    return v0

    .line 6380
    :cond_0
    const/4 v0, 0x0

    .line 6381
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 6382
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6385
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 6386
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->w()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6389
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 6390
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/co;->x()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6393
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 6394
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/co;->l:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6397
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 6398
    const/4 v1, 0x5

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/co;->m:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6401
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/co;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 6402
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/co;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6202
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->w()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6210
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

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
    .line 6213
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/co;->h:Ljava/lang/Object;

    .line 6214
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6215
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6223
    :goto_0
    return-object v1

    .line 6217
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 6219
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 6220
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6221
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/co;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6223
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 6242
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

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
    .line 6245
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/co;->i:Ljava/lang/Object;

    .line 6246
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6247
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6255
    :goto_0
    return-object v1

    .line 6249
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 6251
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 6252
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6253
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/co;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6255
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 6274
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

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
    .line 6277
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/co;->k:Ljava/lang/Object;

    .line 6278
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6279
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 6287
    :goto_0
    return-object v1

    .line 6281
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 6283
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 6284
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6285
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/co;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6287
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 6306
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

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

.method public final q()I
    .locals 1

    .prologue
    .line 6309
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->l:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 6316
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    .line 6319
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/co;->m:I

    return v0
.end method
