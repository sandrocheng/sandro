.class public final Lcom/b/a/bg;
.super Lcom/b/a/dr;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bi;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3e7

.field private static final d:Lcom/b/a/bg;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10935
    new-instance v0, Lcom/b/a/bg;

    invoke-direct {v0}, Lcom/b/a/bg;-><init>()V

    .line 10936
    sput-object v0, Lcom/b/a/bg;->d:Lcom/b/a/bg;

    iput-boolean v1, v0, Lcom/b/a/bg;->f:Z

    iput-boolean v1, v0, Lcom/b/a/bg;->g:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bg;->h:Ljava/util/List;

    .line 10937
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10276
    invoke-direct {p0}, Lcom/b/a/dr;-><init>()V

    .line 10344
    iput-byte v0, p0, Lcom/b/a/bg;->i:B

    .line 10382
    iput v0, p0, Lcom/b/a/bg;->k:I

    .line 10276
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/bh;)V
    .locals 1
    .parameter

    .prologue
    .line 10269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bg;-><init>(Lcom/b/a/bh;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bh;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10274
    invoke-direct {p0, p1}, Lcom/b/a/dr;-><init>(Lcom/b/a/dq;)V

    .line 10344
    iput-byte v0, p0, Lcom/b/a/bg;->i:B

    .line 10382
    iput v0, p0, Lcom/b/a/bg;->k:I

    .line 10275
    return-void
.end method

.method static synthetic a(Lcom/b/a/bg;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10269
    iput p1, p0, Lcom/b/a/bg;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bg;
    .locals 1
    .parameter

    .prologue
    .line 10416
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bh;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    invoke-static {p0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10422
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bh;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    invoke-static {p0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bg;
    .locals 1
    .parameter

    .prologue
    .line 10470
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bh;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    invoke-static {p0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10476
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bh;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bh;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bg;
    .locals 1
    .parameter

    .prologue
    .line 10438
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bh;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    invoke-static {p0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10444
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bh;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    invoke-static {p0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bg;
    .locals 1
    .parameter

    .prologue
    .line 10427
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bh;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    invoke-static {p0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10433
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bh;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    invoke-static {p0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/bg;)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10483
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bh;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bg;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10269
    iput-object p1, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/bg;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10269
    iput-boolean p1, p0, Lcom/b/a/bg;->f:Z

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bg;
    .locals 2
    .parameter

    .prologue
    .line 10449
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    .line 10450
    invoke-virtual {v0, p0}, Lcom/b/a/bh;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10451
    invoke-static {v0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    .line 10453
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bg;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10460
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    .line 10461
    invoke-virtual {v0, p0, p1}, Lcom/b/a/bh;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10462
    invoke-static {v0}, Lcom/b/a/bh;->a(Lcom/b/a/bh;)Lcom/b/a/bg;

    move-result-object v0

    .line 10464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10490
    new-instance v0, Lcom/b/a/bh;

    invoke-direct {v0, p0}, Lcom/b/a/bh;-><init>(Lcom/b/a/dp;)V

    .line 10491
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bg;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 10269
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bg;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10269
    iput-boolean p1, p0, Lcom/b/a/bg;->g:Z

    return p1
.end method

.method public static e()Lcom/b/a/bg;
    .locals 1

    .prologue
    .line 10280
    sget-object v0, Lcom/b/a/bg;->d:Lcom/b/a/bg;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 10289
    invoke-static {}, Lcom/b/a/p;->v()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static o()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10480
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static p()Lcom/b/a/bg;
    .locals 1

    .prologue
    .line 10284
    sget-object v0, Lcom/b/a/bg;->d:Lcom/b/a/bg;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10340
    iput-boolean v0, p0, Lcom/b/a/bg;->f:Z

    .line 10341
    iput-boolean v0, p0, Lcom/b/a/bg;->g:Z

    .line 10342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    .line 10343
    return-void
.end method

.method private static r()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10481
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10485
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bh;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10410
    invoke-super {p0}, Lcom/b/a/dr;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10269
    invoke-direct {p0}, Lcom/b/a/bg;->s()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10269
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10269
    invoke-direct {p0}, Lcom/b/a/bg;->s()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10269
    invoke-static {}, Lcom/b/a/bh;->q()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 10269
    sget-object v0, Lcom/b/a/bg;->d:Lcom/b/a/bg;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 10269
    sget-object v0, Lcom/b/a/bg;->d:Lcom/b/a/bg;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 10332
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 10269
    new-instance v0, Lcom/b/a/bh;

    invoke-direct {v0, p1}, Lcom/b/a/bh;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10365
    invoke-virtual {p0}, Lcom/b/a/bg;->b()I

    .line 10367
    invoke-virtual {p0}, Lcom/b/a/bg;->K()Lcom/b/a/ds;

    move-result-object v1

    .line 10369
    iget v0, p0, Lcom/b/a/bg;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 10370
    iget-boolean v0, p0, Lcom/b/a/bg;->f:Z

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(IZ)V

    .line 10372
    :cond_0
    iget v0, p0, Lcom/b/a/bg;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 10373
    iget-boolean v0, p0, Lcom/b/a/bg;->g:Z

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(IZ)V

    .line 10375
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 10376
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 10375
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 10378
    :cond_2
    invoke-virtual {v1, p1}, Lcom/b/a/ds;->a(Lcom/b/a/n;)V

    .line 10379
    invoke-virtual {p0}, Lcom/b/a/bg;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 10380
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10346
    iget-byte v0, p0, Lcom/b/a/bg;->i:B

    .line 10347
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 10360
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 10347
    goto :goto_0

    :cond_1
    move v0, v2

    .line 10349
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bg;->x_()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 10350
    invoke-virtual {p0, v0}, Lcom/b/a/bg;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10351
    iput-byte v2, p0, Lcom/b/a/bg;->i:B

    move v0, v2

    .line 10352
    goto :goto_0

    .line 10349
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10355
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/bg;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10356
    iput-byte v2, p0, Lcom/b/a/bg;->i:B

    move v0, v2

    .line 10357
    goto :goto_0

    .line 10359
    :cond_4
    iput-byte v3, p0, Lcom/b/a/bg;->i:B

    move v0, v3

    .line 10360
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10384
    iget v0, p0, Lcom/b/a/bg;->k:I

    .line 10385
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10403
    :goto_0
    return v0

    .line 10388
    :cond_0
    iget v0, p0, Lcom/b/a/bg;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 10389
    iget-boolean v0, p0, Lcom/b/a/bg;->f:Z

    invoke-static {v3}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    .line 10392
    :goto_1
    iget v1, p0, Lcom/b/a/bg;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 10393
    iget-boolean v1, p0, Lcom/b/a/bg;->g:Z

    invoke-static {v4}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    move v1, v2

    move v2, v0

    .line 10396
    :goto_2
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 10397
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 10396
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 10400
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/bg;->L()I

    move-result v0

    add-int/2addr v0, v2

    .line 10401
    invoke-virtual {p0}, Lcom/b/a/bg;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 10402
    iput v0, p0, Lcom/b/a/bg;->k:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 10336
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 10294
    invoke-static {}, Lcom/b/a/p;->w()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 10305
    iget-boolean v0, p0, Lcom/b/a/bg;->f:Z

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 10312
    iget v0, p0, Lcom/b/a/bg;->e:I

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

.method public final k()Z
    .locals 1

    .prologue
    .line 10315
    iget-boolean v0, p0, Lcom/b/a/bg;->g:Z

    return v0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    .prologue
    .line 10322
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    return-object v0
.end method

.method public final w_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10302
    iget v0, p0, Lcom/b/a/bg;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x_()I
    .locals 1

    .prologue
    .line 10329
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final y_()Ljava/util/List;
    .locals 1

    .prologue
    .line 10326
    iget-object v0, p0, Lcom/b/a/bg;->h:Ljava/util/List;

    return-object v0
.end method
