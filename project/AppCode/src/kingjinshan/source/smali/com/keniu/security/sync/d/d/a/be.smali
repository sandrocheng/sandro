.class public final Lcom/keniu/security/sync/d/d/a/be;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bg;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/be;

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
    .line 31709
    new-instance v0, Lcom/keniu/security/sync/d/d/a/be;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/be;-><init>()V

    .line 31710
    sput-object v0, Lcom/keniu/security/sync/d/d/a/be;->c:Lcom/keniu/security/sync/d/d/a/be;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/be;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/be;->f:Ljava/lang/Object;

    .line 31711
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 31257
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 31347
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/be;->g:B

    .line 31372
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/be;->h:I

    .line 31257
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/bf;)V
    .locals 1
    .parameter

    .prologue
    .line 31250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/be;-><init>(Lcom/keniu/security/sync/d/d/a/bf;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/bf;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31255
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 31347
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/be;->g:B

    .line 31372
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/be;->h:I

    .line 31256
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/be;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31250
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/be;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter

    .prologue
    .line 31401
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31407
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter

    .prologue
    .line 31455
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31461
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter

    .prologue
    .line 31423
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31429
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter

    .prologue
    .line 31412
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31418
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/be;)Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1
    .parameter

    .prologue
    .line 31468
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/be;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/be;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31250
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/be;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 2
    .parameter

    .prologue
    .line 31434
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    .line 31435
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31436
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    .line 31438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31445
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    .line 31446
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31447
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    .line 31449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1
    .parameter

    .prologue
    .line 31475
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;-><init>(Lcom/b/a/dp;)V

    .line 31476
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/be;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31250
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/be;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/be;
    .locals 1

    .prologue
    .line 31261
    sget-object v0, Lcom/keniu/security/sync/d/d/a/be;->c:Lcom/keniu/security/sync/d/d/a/be;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 31270
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aP()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 31250
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/be;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/be;
    .locals 1

    .prologue
    .line 31265
    sget-object v0, Lcom/keniu/security/sync/d/d/a/be;->c:Lcom/keniu/security/sync/d/d/a/be;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 31300
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/be;->e:Ljava/lang/Object;

    .line 31301
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31302
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 31304
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/be;->e:Ljava/lang/Object;

    .line 31307
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 31332
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/be;->f:Ljava/lang/Object;

    .line 31333
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31334
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 31336
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/be;->f:Ljava/lang/Object;

    .line 31339
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 31344
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/be;->e:Ljava/lang/Object;

    .line 31345
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/be;->f:Ljava/lang/Object;

    .line 31346
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31465
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31466
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31470
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/be;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31395
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/be;->u()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31250
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 31250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/be;->u()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 31250
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bf;->i()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31250
    sget-object v0, Lcom/keniu/security/sync/d/d/a/be;->c:Lcom/keniu/security/sync/d/d/a/be;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31250
    sget-object v0, Lcom/keniu/security/sync/d/d/a/be;->c:Lcom/keniu/security/sync/d/d/a/be;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 31250
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/bf;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 31362
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/be;->b()I

    .line 31363
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/be;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 31364
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/be;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 31366
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/be;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 31367
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/be;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 31369
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/be;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 31370
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31349
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/be;->g:B

    .line 31350
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 31357
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 31350
    goto :goto_0

    .line 31352
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/be;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 31353
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/be;->g:B

    move v0, v3

    .line 31354
    goto :goto_0

    .line 31356
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/be;->g:B

    move v0, v2

    .line 31357
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 31374
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/be;->h:I

    .line 31375
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 31388
    :goto_0
    return v0

    .line 31377
    :cond_0
    const/4 v0, 0x0

    .line 31378
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/be;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 31379
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/be;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 31382
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/be;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 31383
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/be;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31386
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/be;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 31387
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/be;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 31275
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aQ()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31283
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/be;->d:I

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
    .line 31286
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/be;->e:Ljava/lang/Object;

    .line 31287
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 31288
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 31296
    :goto_0
    return-object v1

    .line 31290
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 31292
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 31293
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31294
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/be;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 31296
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 31315
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/be;->d:I

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
    .line 31318
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/be;->f:Ljava/lang/Object;

    .line 31319
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 31320
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 31328
    :goto_0
    return-object v1

    .line 31322
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 31324
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 31325
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31326
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/be;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 31328
    goto :goto_0
.end method
