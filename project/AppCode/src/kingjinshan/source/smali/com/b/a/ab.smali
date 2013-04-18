.class public final Lcom/b/a/ab;
.super Lcom/b/a/dq;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ac;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12084
    invoke-direct {p0}, Lcom/b/a/dq;-><init>()V

    .line 12251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12085
    invoke-direct {p0}, Lcom/b/a/ab;->q()V

    .line 12086
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 12070
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ab;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12089
    invoke-direct {p0, p1}, Lcom/b/a/dq;-><init>(Lcom/b/a/dp;)V

    .line 12251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12090
    invoke-direct {p0}, Lcom/b/a/ab;->q()V

    .line 12091
    return-void
.end method

.method private A()Lcom/b/a/fc;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 12424
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12425
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    iget v2, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ab;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/ab;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    .line 12431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12433
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    return-object v0

    .line 12425
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/ab;)Lcom/b/a/aa;
    .locals 2
    .parameter

    .prologue
    .line 12070
    invoke-virtual {p0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/ab;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/cb;)Lcom/b/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12286
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 12287
    if-nez p2, :cond_0

    .line 12288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12290
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12291
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12292
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12296
    :goto_0
    return-object p0

    .line 12294
    :cond_1
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/cc;)Lcom/b/a/ab;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12300
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12301
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12302
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12303
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12307
    :goto_0
    return-object p0

    .line 12305
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cb;)Lcom/b/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 12310
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 12311
    if-nez p1, :cond_0

    .line 12312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12314
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12315
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12316
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12320
    :goto_0
    return-object p0

    .line 12318
    :cond_1
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cc;)Lcom/b/a/ab;
    .locals 2
    .parameter

    .prologue
    .line 12338
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12339
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12340
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12341
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12345
    :goto_0
    return-object p0

    .line 12343
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 12360
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12361
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12362
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dq;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12363
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12367
    :goto_0
    return-object p0

    .line 12365
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cb;)Lcom/b/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12324
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 12325
    if-nez p2, :cond_0

    .line 12326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12328
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12329
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12330
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12334
    :goto_0
    return-object p0

    .line 12332
    :cond_1
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cc;)Lcom/b/a/ab;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12349
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12350
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12351
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12352
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12356
    :goto_0
    return-object p0

    .line 12354
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(I)Lcom/b/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 12380
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12381
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12382
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12383
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12387
    :goto_0
    return-object p0

    .line 12385
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 12160
    instance-of v0, p1, Lcom/b/a/aa;

    if-eqz v0, :cond_0

    .line 12161
    check-cast p1, Lcom/b/a/aa;

    invoke-virtual {p0, p1}, Lcom/b/a/ab;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v0

    .line 12164
    :goto_0
    return-object v0

    .line 12163
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dq;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 12164
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 12391
    invoke-direct {p0}, Lcom/b/a/ab;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private e(I)Lcom/b/a/cc;
    .locals 2
    .parameter

    .prologue
    .line 12414
    invoke-direct {p0}, Lcom/b/a/ab;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method static synthetic o()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 12070
    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0}, Lcom/b/a/ab;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12075
    invoke-static {}, Lcom/b/a/p;->z()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 12093
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 12094
    invoke-direct {p0}, Lcom/b/a/ab;->A()Lcom/b/a/fc;

    .line 12096
    :cond_0
    return-void
.end method

.method private static r()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 12098
    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0}, Lcom/b/a/ab;-><init>()V

    return-object v0
.end method

.method private s()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 12102
    invoke-super {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    .line 12103
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12105
    iget v0, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ab;->a:I

    .line 12109
    :goto_0
    return-object p0

    .line 12107
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private t()Lcom/b/a/ab;
    .locals 2

    .prologue
    .line 12113
    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0}, Lcom/b/a/ab;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ab;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/b/a/aa;
    .locals 1

    .prologue
    .line 12122
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/b/a/aa;
    .locals 2

    .prologue
    .line 12135
    invoke-virtual {p0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v0

    .line 12136
    invoke-virtual {v0}, Lcom/b/a/aa;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12137
    invoke-static {v0}, Lcom/b/a/ab;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 12140
    :cond_0
    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 12254
    iget v0, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 12255
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12256
    iget v0, p0, Lcom/b/a/ab;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ab;->a:I

    .line 12258
    :cond_0
    return-void
.end method

.method private x()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 12370
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12372
    iget v0, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ab;->a:I

    .line 12373
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12377
    :goto_0
    return-object p0

    .line 12375
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private y()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 12409
    invoke-direct {p0}, Lcom/b/a/ab;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private z()Ljava/util/List;
    .locals 1

    .prologue
    .line 12419
    invoke-direct {p0}, Lcom/b/a/ab;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 12080
    invoke-static {}, Lcom/b/a/p;->A()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12118
    invoke-static {}, Lcom/b/a/aa;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->s()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->t()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12070
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12070
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12070
    invoke-virtual {p0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12070
    invoke-virtual {p0}, Lcom/b/a/ab;->k()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12070
    invoke-virtual {p0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12070
    invoke-virtual {p0}, Lcom/b/a/ab;->k()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/aa;)Lcom/b/a/ab;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 12169
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 12198
    :goto_0
    return-object v0

    .line 12170
    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 12171
    invoke-static {p1}, Lcom/b/a/aa;->b(Lcom/b/a/aa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12172
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12173
    invoke-static {p1}, Lcom/b/a/aa;->b(Lcom/b/a/aa;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12174
    iget v0, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ab;->a:I

    .line 12179
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    .line 12196
    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/b/a/ab;->a(Lcom/b/a/dr;)V

    .line 12197
    invoke-virtual {p1}, Lcom/b/a/aa;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ab;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 12198
    goto :goto_0

    .line 12176
    :cond_2
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    .line 12177
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/aa;->b(Lcom/b/a/aa;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 12182
    :cond_3
    invoke-static {p1}, Lcom/b/a/aa;->b(Lcom/b/a/aa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12183
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12184
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 12185
    iput-object v1, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    .line 12186
    invoke-static {p1}, Lcom/b/a/aa;->b(Lcom/b/a/aa;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12187
    iget v0, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ab;->a:I

    .line 12188
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/ab;->A()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 12192
    :cond_5
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/aa;->b(Lcom/b/a/aa;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 12070
    invoke-direct {p0, p1}, Lcom/b/a/ab;->d(Lcom/b/a/ev;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12070
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ab;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 12278
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12279
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    .line 12281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12202
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ab;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12203
    invoke-virtual {p0, v0}, Lcom/b/a/ab;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 12212
    :goto_1
    return v0

    .line 12202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12208
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/ab;->N()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 12210
    goto :goto_1

    .line 12212
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->t()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 12395
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12396
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    .line 12397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12070
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ab;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->s()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 12070
    invoke-direct {p0, p1}, Lcom/b/a/ab;->d(Lcom/b/a/ev;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12070
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ab;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->t()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->t()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12070
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ab;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ab;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 12219
    invoke-virtual {p0}, Lcom/b/a/ab;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 12223
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 12224
    sparse-switch v1, :sswitch_data_0

    .line 12230
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/ab;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12232
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ab;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 12233
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    move-object v0, p0

    .line 12234
    :goto_1
    return-object v0

    .line 12226
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ab;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 12227
    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    move-object v0, p0

    .line 12228
    goto :goto_1

    .line 12239
    :sswitch_1
    invoke-static {}, Lcom/b/a/cb;->w()Lcom/b/a/cc;

    move-result-object v1

    .line 12240
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 12241
    invoke-virtual {v1}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/ab;->w()V

    iget-object v2, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/ab;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 12224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->t()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->s()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->t()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final g_()Ljava/util/List;
    .locals 1

    .prologue
    .line 12264
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12265
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->s()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 12402
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 12403
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 12405
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 12271
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12272
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12274
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final k()Lcom/b/a/aa;
    .locals 2

    .prologue
    .line 12126
    invoke-virtual {p0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v0

    .line 12127
    invoke-virtual {v0}, Lcom/b/a/aa;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12128
    invoke-static {v0}, Lcom/b/a/ab;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 12130
    :cond_0
    return-object v0
.end method

.method public final l()Lcom/b/a/aa;
    .locals 3

    .prologue
    .line 12144
    new-instance v0, Lcom/b/a/aa;

    invoke-direct {v0, p0}, Lcom/b/a/aa;-><init>(Lcom/b/a/ab;)V

    .line 12145
    iget v1, p0, Lcom/b/a/ab;->a:I

    .line 12146
    iget-object v1, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    if-nez v1, :cond_1

    .line 12147
    iget v1, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 12148
    iget-object v1, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    .line 12149
    iget v1, p0, Lcom/b/a/ab;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/b/a/ab;->a:I

    .line 12151
    :cond_0
    iget-object v1, p0, Lcom/b/a/ab;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/aa;->a(Lcom/b/a/aa;Ljava/util/List;)Ljava/util/List;

    .line 12155
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ab;->ab_()V

    .line 12156
    return-object v0

    .line 12153
    :cond_1
    iget-object v1, p0, Lcom/b/a/ab;->c:Lcom/b/a/fc;

    invoke-virtual {v1}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/aa;->a(Lcom/b/a/aa;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public final synthetic m()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->t()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 12070
    invoke-direct {p0}, Lcom/b/a/ab;->s()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method
