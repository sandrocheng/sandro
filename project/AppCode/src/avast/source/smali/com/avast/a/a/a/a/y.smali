.class public final Lcom/avast/a/a/a/a/y;
.super Lcom/google/a/l;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/aa;


# static fields
.field private static final a:Lcom/avast/a/a/a/a/y;


# instance fields
.field private b:I

.field private c:J

.field private d:J

.field private e:Z

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:J

.field private j:Ljava/lang/Object;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3170
    new-instance v0, Lcom/avast/a/a/a/a/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/a/y;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/a/y;->a:Lcom/avast/a/a/a/a/y;

    .line 3171
    sget-object v0, Lcom/avast/a/a/a/a/y;->a:Lcom/avast/a/a/a/a/y;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/y;->C()V

    .line 3172
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/a/z;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2371
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 2563
    iput-byte v0, p0, Lcom/avast/a/a/a/a/y;->k:B

    .line 2609
    iput v0, p0, Lcom/avast/a/a/a/a/y;->l:I

    .line 2372
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/a/z;Lcom/avast/a/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/a/y;-><init>(Lcom/avast/a/a/a/a/z;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2373
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 2563
    iput-byte v0, p0, Lcom/avast/a/a/a/a/y;->k:B

    .line 2609
    iput v0, p0, Lcom/avast/a/a/a/a/y;->l:I

    .line 2373
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 2554
    iput-wide v1, p0, Lcom/avast/a/a/a/a/y;->c:J

    .line 2555
    iput-wide v1, p0, Lcom/avast/a/a/a/a/y;->d:J

    .line 2556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/a/a/a/a/y;->e:Z

    .line 2557
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->f:Ljava/lang/Object;

    .line 2558
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->g:Ljava/lang/Object;

    .line 2559
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->h:Ljava/lang/Object;

    .line 2560
    iput-wide v1, p0, Lcom/avast/a/a/a/a/y;->i:J

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->j:Ljava/lang/Object;

    .line 2562
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/y;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput p1, p0, Lcom/avast/a/a/a/a/y;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/y;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-wide p1, p0, Lcom/avast/a/a/a/a/y;->c:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/a/a/a/y;
    .locals 1

    .prologue
    .line 2377
    sget-object v0, Lcom/avast/a/a/a/a/y;->a:Lcom/avast/a/a/a/a/y;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 2728
    invoke-static {}, Lcom/avast/a/a/a/a/y;->r()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/a/z;->a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/avast/a/a/a/a/y;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/y;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-boolean p1, p0, Lcom/avast/a/a/a/a/y;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/y;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-wide p1, p0, Lcom/avast/a/a/a/a/y;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/avast/a/a/a/a/y;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/y;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-wide p1, p0, Lcom/avast/a/a/a/a/y;->i:J

    return-wide p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/avast/a/a/a/a/y;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/avast/a/a/a/a/y;->j:Ljava/lang/Object;

    return-object p1
.end method

.method public static r()Lcom/avast/a/a/a/a/z;
    .locals 1

    .prologue
    .line 2725
    invoke-static {}, Lcom/avast/a/a/a/a/z;->k()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->f:Ljava/lang/Object;

    .line 2437
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2438
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 2440
    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->f:Ljava/lang/Object;

    .line 2443
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private x()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->g:Ljava/lang/Object;

    .line 2469
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2470
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 2472
    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->g:Ljava/lang/Object;

    .line 2475
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private y()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->h:Ljava/lang/Object;

    .line 2501
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2502
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 2504
    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->h:Ljava/lang/Object;

    .line 2507
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private z()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->j:Ljava/lang/Object;

    .line 2543
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2544
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 2546
    iput-object v0, p0, Lcom/avast/a/a/a/a/y;->j:Ljava/lang/Object;

    .line 2549
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2366
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/y;->t()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2366
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/y;->s()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2582
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/y;->w()I

    .line 2583
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 2584
    iget-wide v0, p0, Lcom/avast/a/a/a/a/y;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 2586
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 2587
    iget-wide v0, p0, Lcom/avast/a/a/a/a/y;->d:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 2589
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 2590
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/avast/a/a/a/a/y;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 2592
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 2593
    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->u()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2595
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2596
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->x()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2598
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 2599
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->y()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2601
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 2602
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/avast/a/a/a/a/y;->i:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 2604
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 2605
    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->z()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 2607
    :cond_7
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2389
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 2392
    iget-wide v0, p0, Lcom/avast/a/a/a/a/y;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 2399
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

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

.method public e()J
    .locals 2

    .prologue
    .line 2402
    iget-wide v0, p0, Lcom/avast/a/a/a/a/y;->d:J

    return-wide v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 2409
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

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

.method public g()Z
    .locals 1

    .prologue
    .line 2412
    iget-boolean v0, p0, Lcom/avast/a/a/a/a/y;->e:Z

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 2419
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

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

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->f:Ljava/lang/Object;

    .line 2423
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2424
    check-cast v0, Ljava/lang/String;

    .line 2432
    :goto_0
    return-object v0

    .line 2426
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 2428
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2429
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2430
    iput-object v1, p0, Lcom/avast/a/a/a/a/y;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2432
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 2451
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

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

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->g:Ljava/lang/Object;

    .line 2455
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2456
    check-cast v0, Ljava/lang/String;

    .line 2464
    :goto_0
    return-object v0

    .line 2458
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 2460
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2461
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2462
    iput-object v1, p0, Lcom/avast/a/a/a/a/y;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2464
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 2483
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->h:Ljava/lang/Object;

    .line 2487
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2488
    check-cast v0, Ljava/lang/String;

    .line 2496
    :goto_0
    return-object v0

    .line 2490
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 2492
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2493
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2494
    iput-object v1, p0, Lcom/avast/a/a/a/a/y;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2496
    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 2515
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 2518
    iget-wide v0, p0, Lcom/avast/a/a/a/a/y;->i:J

    return-wide v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 2525
    iget v0, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/avast/a/a/a/a/y;->j:Ljava/lang/Object;

    .line 2529
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2530
    check-cast v0, Ljava/lang/String;

    .line 2538
    :goto_0
    return-object v0

    .line 2532
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 2534
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2535
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2536
    iput-object v1, p0, Lcom/avast/a/a/a/a/y;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2538
    goto :goto_0
.end method

.method public s()Lcom/avast/a/a/a/a/z;
    .locals 1

    .prologue
    .line 2726
    invoke-static {}, Lcom/avast/a/a/a/a/y;->r()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/avast/a/a/a/a/z;
    .locals 1

    .prologue
    .line 2730
    invoke-static {p0}, Lcom/avast/a/a/a/a/y;->a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2565
    iget-byte v2, p0, Lcom/avast/a/a/a/a/y;->k:B

    .line 2566
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 2577
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2566
    goto :goto_0

    .line 2568
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/y;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2569
    iput-byte v1, p0, Lcom/avast/a/a/a/a/y;->k:B

    move v0, v1

    .line 2570
    goto :goto_0

    .line 2572
    :cond_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/y;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2573
    iput-byte v1, p0, Lcom/avast/a/a/a/a/y;->k:B

    move v0, v1

    .line 2574
    goto :goto_0

    .line 2576
    :cond_3
    iput-byte v0, p0, Lcom/avast/a/a/a/a/y;->k:B

    goto :goto_0
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2611
    iget v0, p0, Lcom/avast/a/a/a/a/y;->l:I

    .line 2612
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2648
    :goto_0
    return v0

    .line 2614
    :cond_0
    const/4 v0, 0x0

    .line 2615
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 2616
    iget-wide v1, p0, Lcom/avast/a/a/a/a/y;->c:J

    invoke-static {v3, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2619
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 2620
    iget-wide v1, p0, Lcom/avast/a/a/a/a/y;->d:J

    invoke-static {v4, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2623
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    .line 2624
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/avast/a/a/a/a/y;->e:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2627
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_4

    .line 2628
    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->u()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2631
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 2632
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->x()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2635
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 2636
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->y()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2639
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 2640
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/avast/a/a/a/a/y;->i:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2643
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/a/y;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 2644
    invoke-direct {p0}, Lcom/avast/a/a/a/a/y;->z()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2647
    :cond_8
    iput v0, p0, Lcom/avast/a/a/a/a/y;->l:I

    goto :goto_0
.end method
