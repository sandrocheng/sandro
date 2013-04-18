.class public final Lcom/b/a/gi;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"

# interfaces
.implements Lcom/b/a/ey;


# instance fields
.field private a:Ljava/util/Map;

.field private b:I

.field private c:Lcom/b/a/gk;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BII)Lcom/b/a/gi;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/b/a/m;->a([BII)Lcom/b/a/m;

    move-result-object v0

    .line 595
    invoke-virtual {p0, v0}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    .line 596
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    return-object p0

    .line 598
    :catch_0
    move-exception v0

    throw v0

    .line 600
    :catch_1
    move-exception v0

    .line 601
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(I)Lcom/b/a/gk;
    .locals 2
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    if-eqz v0, :cond_1

    .line 304
    iget v0, p0, Lcom/b/a/gi;->b:I

    if-ne p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    .line 319
    :goto_0
    return-object v0

    .line 308
    :cond_0
    iget v0, p0, Lcom/b/a/gi;->b:I

    iget-object v1, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    invoke-virtual {v1}, Lcom/b/a/gk;->a()Lcom/b/a/gj;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/b/a/gi;->b(ILcom/b/a/gj;)Lcom/b/a/gi;

    .line 310
    :cond_1
    if-nez p1, :cond_2

    .line 311
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/gj;

    .line 314
    iput p1, p0, Lcom/b/a/gi;->b:I

    .line 315
    invoke-static {}, Lcom/b/a/gj;->a()Lcom/b/a/gk;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    .line 316
    if-eqz v0, :cond_3

    .line 317
    iget-object v1, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    invoke-virtual {v1, v0}, Lcom/b/a/gk;->a(Lcom/b/a/gj;)Lcom/b/a/gk;

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    goto :goto_0
.end method

.method private b(ILcom/b/a/gj;)Lcom/b/a/gi;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/b/a/gi;->b:I

    if-ne v0, p1, :cond_1

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/gi;->b:I

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-object p0
.end method

.method private b(Lcom/b/a/i;)Lcom/b/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/i;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/b/a/m;)Lcom/b/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private b([B)Lcom/b/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a([B)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Z
    .locals 2
    .parameter

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iget v0, p0, Lcom/b/a/gi;->b:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Lcom/b/a/gi;
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/b/a/gi;

    invoke-direct {v0}, Lcom/b/a/gi;-><init>()V

    invoke-direct {v0}, Lcom/b/a/gi;->j()V

    return-object v0
.end method

.method private c(Ljava/io/InputStream;)Lcom/b/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Ljava/io/InputStream;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private c([BII)Lcom/b/a/gi;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/gi;->a([BII)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private static d()Lcom/b/a/gi;
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/b/a/gi;

    invoke-direct {v0}, Lcom/b/a/gi;-><init>()V

    .line 294
    invoke-direct {v0}, Lcom/b/a/gi;->j()V

    .line 295
    return-object v0
.end method

.method private g()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/b/a/gi;
    .locals 3

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    .line 351
    invoke-static {}, Lcom/b/a/gg;->e()Lcom/b/a/gi;

    move-result-object v0

    new-instance v1, Lcom/b/a/gg;

    iget-object v2, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/b/a/gg;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/b/a/gi;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private static i()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 356
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/gi;->b:I

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/gi;->c:Lcom/b/a/gk;

    .line 363
    return-void
.end method

.method private k()Lcom/b/a/gi;
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/b/a/gi;->j()V

    .line 368
    return-object p0
.end method

.method private l()Ljava/util/Map;
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    .line 451
    iget-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Lcom/b/a/gi;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-direct {p0, p1}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/gk;->a(J)Lcom/b/a/gk;

    .line 414
    return-object p0
.end method

.method public final a(ILcom/b/a/gj;)Lcom/b/a/gi;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/b/a/gi;->b:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    .line 394
    invoke-direct {p0, p1}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b/a/gk;->a(Lcom/b/a/gj;)Lcom/b/a/gk;

    .line 401
    :goto_1
    return-object p0

    .line 393
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/b/a/gi;->b(ILcom/b/a/gj;)Lcom/b/a/gi;

    goto :goto_1
.end method

.method public final a(Lcom/b/a/gg;)Lcom/b/a/gi;
    .locals 3
    .parameter

    .prologue
    .line 377
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 378
    invoke-static {p1}, Lcom/b/a/gg;->b(Lcom/b/a/gg;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/gj;

    invoke-virtual {p0, v1, v0}, Lcom/b/a/gi;->a(ILcom/b/a/gj;)Lcom/b/a/gi;

    goto :goto_0

    .line 382
    :cond_0
    return-object p0
.end method

.method public final a(Lcom/b/a/i;)Lcom/b/a/gi;
    .locals 3
    .parameter

    .prologue
    .line 510
    :try_start_0
    invoke-virtual {p1}, Lcom/b/a/i;->d()Lcom/b/a/m;

    move-result-object v0

    .line 511
    invoke-virtual {p0, v0}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    .line 512
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    return-object p0

    .line 514
    :catch_0
    move-exception v0

    throw v0

    .line 516
    :catch_1
    move-exception v0

    .line 517
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/b/a/m;)Lcom/b/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v0

    .line 461
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/b/a/gi;->a(ILcom/b/a/m;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :cond_1
    return-object p0
.end method

.method public final a(Ljava/io/InputStream;)Lcom/b/a/gi;
    .locals 2
    .parameter

    .prologue
    .line 550
    invoke-static {p1}, Lcom/b/a/m;->a(Ljava/io/InputStream;)Lcom/b/a/m;

    move-result-object v0

    .line 551
    invoke-virtual {p0, v0}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V

    .line 553
    return-object p0
.end method

.method public final a([B)Lcom/b/a/gi;
    .locals 3
    .parameter

    .prologue
    .line 531
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/b/a/m;->a([BII)Lcom/b/a/m;

    move-result-object v0

    .line 532
    invoke-virtual {p0, v0}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    .line 533
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 534
    return-object p0

    .line 535
    :catch_0
    move-exception v0

    throw v0

    .line 537
    :catch_1
    move-exception v0

    .line 538
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public final a(ILcom/b/a/m;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 475
    invoke-static {p1}, Lcom/b/a/go;->b(I)I

    move-result v0

    .line 476
    invoke-static {p1}, Lcom/b/a/go;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 498
    invoke-static {}, Lcom/b/a/es;->f()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 478
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    move-result-object v0

    invoke-virtual {p2}, Lcom/b/a/m;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/gk;->a(J)Lcom/b/a/gk;

    move v0, v3

    .line 496
    :goto_0
    return v0

    .line 481
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    move-result-object v0

    invoke-virtual {p2}, Lcom/b/a/m;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/gk;->b(J)Lcom/b/a/gk;

    move v0, v3

    .line 482
    goto :goto_0

    .line 484
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    move-result-object v0

    invoke-virtual {p2}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/gk;->a(Lcom/b/a/i;)Lcom/b/a/gk;

    move v0, v3

    .line 485
    goto :goto_0

    .line 487
    :pswitch_3
    invoke-static {}, Lcom/b/a/gg;->e()Lcom/b/a/gi;

    move-result-object v1

    .line 488
    invoke-static {}, Lcom/b/a/db;->a()Lcom/b/a/db;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/b/a/m;->a(ILcom/b/a/ey;Lcom/b/a/df;)V

    .line 490
    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    move-result-object v0

    invoke-virtual {v1}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/gk;->a(Lcom/b/a/gg;)Lcom/b/a/gk;

    move v0, v3

    .line 491
    goto :goto_0

    .line 493
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    move-result-object v0

    invoke-virtual {p2}, Lcom/b/a/m;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/gk;->a(I)Lcom/b/a/gk;

    move v0, v3

    .line 496
    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final synthetic b([BII)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/gi;->a([BII)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([BIILcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/gi;->a([BII)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/b/a/gg;
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/gi;->a(I)Lcom/b/a/gk;

    .line 334
    iget-object v0, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    .line 339
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    .line 340
    return-object v0

    .line 337
    :cond_0
    new-instance v0, Lcom/b/a/gg;

    iget-object v1, p0, Lcom/b/a/gi;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/gg;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final b(Ljava/io/InputStream;)Z
    .locals 2
    .parameter

    .prologue
    .line 558
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 559
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 560
    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    .line 562
    :cond_0
    invoke-static {v0, p1}, Lcom/b/a/m;->a(ILjava/io/InputStream;)I

    move-result v0

    .line 563
    new-instance v1, Lcom/b/a/f;

    invoke-direct {v1, p1, v0}, Lcom/b/a/f;-><init>(Ljava/io/InputStream;I)V

    .line 564
    invoke-virtual {p0, v1}, Lcom/b/a/gi;->a(Ljava/io/InputStream;)Lcom/b/a/gi;

    .line 565
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/io/InputStream;Lcom/b/a/df;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->b(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Lcom/b/a/i;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/i;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/i;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([B)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a([B)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BLcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a([B)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/b/a/gi;->h()Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/io/InputStream;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Ljava/io/InputStream;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/b/a/gi;->a(Ljava/io/InputStream;)Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/b/a/gi;->h()Lcom/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/b/a/gi;->j()V

    return-object p0
.end method
