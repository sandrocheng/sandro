.class public final Lcom/b/a/cj;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/b/a/cv;


# instance fields
.field private final a:I

.field private b:Lcom/b/a/r;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/b/a/ct;

.field private final e:Lcom/b/a/cj;

.field private final f:[Lcom/b/a/cj;

.field private final g:[Lcom/b/a/co;

.field private final h:[Lcom/b/a/cq;

.field private final i:[Lcom/b/a/cq;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/r;Lcom/b/a/ct;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/b/a/cj;-><init>(Lcom/b/a/r;Lcom/b/a/ct;Lcom/b/a/cj;I)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/r;Lcom/b/a/ct;Lcom/b/a/cj;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput p4, p0, Lcom/b/a/cj;->a:I

    .line 567
    iput-object p1, p0, Lcom/b/a/cj;->b:Lcom/b/a/r;

    .line 568
    invoke-virtual {p1}, Lcom/b/a/r;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/b/a/ch;->a(Lcom/b/a/ct;Lcom/b/a/cj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cj;->c:Ljava/lang/String;

    .line 569
    iput-object p2, p0, Lcom/b/a/cj;->d:Lcom/b/a/ct;

    .line 570
    iput-object p3, p0, Lcom/b/a/cj;->e:Lcom/b/a/cj;

    .line 572
    invoke-virtual {p1}, Lcom/b/a/r;->r()I

    move-result v0

    new-array v0, v0, [Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cj;->f:[Lcom/b/a/cj;

    move v0, v5

    .line 573
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/r;->r()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/b/a/cj;->f:[Lcom/b/a/cj;

    new-instance v2, Lcom/b/a/cj;

    invoke-virtual {p1, v0}, Lcom/b/a/r;->e(I)Lcom/b/a/r;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, v0}, Lcom/b/a/cj;-><init>(Lcom/b/a/r;Lcom/b/a/ct;Lcom/b/a/cj;I)V

    aput-object v2, v1, v0

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/r;->u()I

    move-result v0

    new-array v0, v0, [Lcom/b/a/co;

    iput-object v0, p0, Lcom/b/a/cj;->g:[Lcom/b/a/co;

    move v0, v5

    .line 579
    :goto_1
    invoke-virtual {p1}, Lcom/b/a/r;->u()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/b/a/cj;->g:[Lcom/b/a/co;

    new-instance v2, Lcom/b/a/co;

    invoke-virtual {p1, v0}, Lcom/b/a/r;->g(I)Lcom/b/a/x;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, v0}, Lcom/b/a/co;-><init>(Lcom/b/a/x;Lcom/b/a/ct;Lcom/b/a/cj;I)V

    aput-object v2, v1, v0

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/r;->l()I

    move-result v0

    new-array v0, v0, [Lcom/b/a/cq;

    iput-object v0, p0, Lcom/b/a/cj;->h:[Lcom/b/a/cq;

    move v4, v5

    .line 585
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/r;->l()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 586
    iget-object v6, p0, Lcom/b/a/cj;->h:[Lcom/b/a/cq;

    new-instance v0, Lcom/b/a/cq;

    invoke-virtual {p1, v4}, Lcom/b/a/r;->a(I)Lcom/b/a/aj;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/b/a/cq;-><init>(Lcom/b/a/aj;Lcom/b/a/ct;Lcom/b/a/cj;IZ)V

    aput-object v0, v6, v4

    .line 585
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 590
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/r;->o()I

    move-result v0

    new-array v0, v0, [Lcom/b/a/cq;

    iput-object v0, p0, Lcom/b/a/cj;->i:[Lcom/b/a/cq;

    move v4, v5

    .line 591
    :goto_3
    invoke-virtual {p1}, Lcom/b/a/r;->o()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 592
    iget-object v6, p0, Lcom/b/a/cj;->i:[Lcom/b/a/cq;

    new-instance v0, Lcom/b/a/cq;

    invoke-virtual {p1, v4}, Lcom/b/a/r;->c(I)Lcom/b/a/aj;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/b/a/cq;-><init>(Lcom/b/a/aj;Lcom/b/a/ct;Lcom/b/a/cj;IZ)V

    aput-object v0, v6, v4

    .line 591
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 596
    :cond_3
    invoke-static {p2}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cv;)V

    .line 597
    return-void
.end method

.method static synthetic a(Lcom/b/a/cj;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/b/a/cj;->m()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/cj;Lcom/b/a/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/b/a/cj;->a(Lcom/b/a/r;)V

    return-void
.end method

.method private a(Lcom/b/a/r;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 616
    iput-object p1, p0, Lcom/b/a/cj;->b:Lcom/b/a/r;

    move v0, v3

    .line 618
    :goto_0
    iget-object v1, p0, Lcom/b/a/cj;->f:[Lcom/b/a/cj;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/b/a/cj;->f:[Lcom/b/a/cj;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/r;->e(I)Lcom/b/a/r;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b/a/cj;->a(Lcom/b/a/r;)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 622
    :goto_1
    iget-object v1, p0, Lcom/b/a/cj;->g:[Lcom/b/a/co;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/b/a/cj;->g:[Lcom/b/a/co;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/r;->g(I)Lcom/b/a/x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/co;->a(Lcom/b/a/co;Lcom/b/a/x;)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 626
    :goto_2
    iget-object v1, p0, Lcom/b/a/cj;->h:[Lcom/b/a/cq;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 627
    iget-object v1, p0, Lcom/b/a/cj;->h:[Lcom/b/a/cq;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/r;->a(I)Lcom/b/a/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/cq;->a(Lcom/b/a/cq;Lcom/b/a/aj;)V

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    .line 630
    :goto_3
    iget-object v1, p0, Lcom/b/a/cj;->i:[Lcom/b/a/cq;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 631
    iget-object v1, p0, Lcom/b/a/cj;->i:[Lcom/b/a/cq;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/r;->c(I)Lcom/b/a/aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/cq;->a(Lcom/b/a/cq;Lcom/b/a/aj;)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 633
    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/b/a/cj;
    .locals 3
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/b/a/cj;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/b/a/cj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ck;->a(Ljava/lang/String;)Lcom/b/a/cv;

    move-result-object p0

    .line 529
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/b/a/cj;

    if-eqz v0, :cond_0

    .line 530
    check-cast p0, Lcom/b/a/cj;

    move-object v0, p0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/b/a/co;
    .locals 3
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/b/a/cj;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/b/a/cj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ck;->a(Ljava/lang/String;)Lcom/b/a/cv;

    move-result-object p0

    .line 544
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/b/a/co;

    if-eqz v0, :cond_0

    .line 545
    check-cast p0, Lcom/b/a/co;

    move-object v0, p0

    .line 547
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/b/a/cj;->a:I

    return v0
.end method

.method private k()Lcom/b/a/r;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/b/a/cj;->b:Lcom/b/a/r;

    return-object v0
.end method

.method private l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/b/a/cj;->e:Lcom/b/a/cj;

    return-object v0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 601
    iget-object v0, p0, Lcom/b/a/cj;->f:[Lcom/b/a/cj;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 602
    invoke-direct {v3}, Lcom/b/a/cj;->m()V

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/b/a/cj;->h:[Lcom/b/a/cq;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 606
    invoke-static {v3}, Lcom/b/a/cq;->a(Lcom/b/a/cq;)V

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/b/a/cj;->i:[Lcom/b/a/cq;

    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 610
    invoke-static {v3}, Lcom/b/a/cq;->a(Lcom/b/a/cq;)V

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 612
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/b/a/cq;
    .locals 3
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/b/a/cj;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/b/a/cj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ck;->a(Ljava/lang/String;)Lcom/b/a/cv;

    move-result-object p0

    .line 504
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/b/a/cq;

    if-eqz v0, :cond_0

    .line 505
    check-cast p0, Lcom/b/a/cq;

    move-object v0, p0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/b/a/cj;->b:Lcom/b/a/r;

    invoke-virtual {v0}, Lcom/b/a/r;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/b/a/cj;->b:Lcom/b/a/r;

    invoke-virtual {v0}, Lcom/b/a/r;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/t;

    .line 489
    invoke-virtual {p0}, Lcom/b/a/t;->i()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/t;->k()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 490
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Lcom/b/a/cq;
    .locals 2
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/b/a/cj;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ck;->a(Lcom/b/a/ck;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/b/a/cl;

    invoke-direct {v1, p0, p1}, Lcom/b/a/cl;-><init>(Lcom/b/a/cv;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cq;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/b/a/cj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/b/a/cj;->d:Lcom/b/a/ct;

    return-object v0
.end method

.method public final d()Lcom/b/a/bg;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/b/a/cj;->b:Lcom/b/a/r;

    invoke-virtual {v0}, Lcom/b/a/r;->z()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/b/a/cj;->h:[Lcom/b/a/cq;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/b/a/cj;->i:[Lcom/b/a/cq;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/b/a/cj;->f:[Lcom/b/a/cj;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/b/a/cj;->g:[Lcom/b/a/co;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/b/a/cj;->b:Lcom/b/a/r;

    return-object v0
.end method
