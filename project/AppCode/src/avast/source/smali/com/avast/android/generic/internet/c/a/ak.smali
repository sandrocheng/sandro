.class public final Lcom/avast/android/generic/internet/c/a/ak;
.super Lcom/google/a/n;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/al;


# instance fields
.field private a:I

.field private b:Lcom/avast/android/generic/internet/c/a/az;

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6261
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 6384
    sget-object v0, Lcom/avast/android/generic/internet/c/a/az;->a:Lcom/avast/android/generic/internet/c/a/az;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->b:Lcom/avast/android/generic/internet/c/a/az;

    .line 6408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    .line 6262
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ak;->f()V

    .line 6263
    return-void
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1

    .prologue
    .line 6256
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ak;->k()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 6266
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1

    .prologue
    .line 6268
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ak;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ak;-><init>()V

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 6411
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6412
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    .line 6413
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    .line 6415
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/ak;
    .locals 2

    .prologue
    .line 6281
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ak;->k()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ak;->d()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 6324
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aj;->a()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6338
    :cond_0
    :goto_0
    return-object p0

    .line 6325
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6326
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/aj;->c()Lcom/avast/android/generic/internet/c/a/az;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/avast/android/generic/internet/c/a/az;)Lcom/avast/android/generic/internet/c/a/ak;

    .line 6328
    :cond_2
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/aj;->b(Lcom/avast/android/generic/internet/c/a/aj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6329
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6330
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/aj;->b(Lcom/avast/android/generic/internet/c/a/aj;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    .line 6331
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    goto :goto_0

    .line 6333
    :cond_3
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ak;->l()V

    .line 6334
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/aj;->b(Lcom/avast/android/generic/internet/c/a/aj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 6444
    if-nez p1, :cond_0

    .line 6445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6447
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ak;->l()V

    .line 6448
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6450
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/az;)Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 6392
    if-nez p1, :cond_0

    .line 6393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6395
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    .line 6396
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ak;->b:Lcom/avast/android/generic/internet/c/a/az;

    .line 6398
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ak;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6350
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 6351
    sparse-switch v0, :sswitch_data_0

    .line 6356
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6358
    :sswitch_0
    return-object p0

    .line 6363
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 6364
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/az;->a(I)Lcom/avast/android/generic/internet/c/a/az;

    move-result-object v0

    .line 6365
    if-eqz v0, :cond_0

    .line 6366
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    .line 6367
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ak;->b:Lcom/avast/android/generic/internet/c/a/az;

    goto :goto_0

    .line 6372
    :sswitch_2
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ap;->h()Lcom/avast/android/generic/internet/c/a/aq;

    move-result-object v0

    .line 6373
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 6374
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/aq;->d()Lcom/avast/android/generic/internet/c/a/ap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/avast/android/generic/internet/c/a/ap;)Lcom/avast/android/generic/internet/c/a/ak;

    goto :goto_0

    .line 6351
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 6256
    check-cast p1, Lcom/avast/android/generic/internet/c/a/aj;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/aj;
    .locals 1

    .prologue
    .line 6285
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aj;->a()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6256
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/aj;
    .locals 2

    .prologue
    .line 6289
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ak;->d()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v0

    .line 6290
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/aj;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6291
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 6293
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6256
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6256
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ak;->a()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/aj;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 6307
    new-instance v2, Lcom/avast/android/generic/internet/c/a/aj;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/aj;-><init>(Lcom/avast/android/generic/internet/c/a/ak;Lcom/avast/android/generic/internet/c/a/ac;)V

    .line 6308
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    .line 6309
    const/4 v1, 0x0

    .line 6310
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    .line 6313
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->b:Lcom/avast/android/generic/internet/c/a/az;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/aj;->a(Lcom/avast/android/generic/internet/c/a/aj;Lcom/avast/android/generic/internet/c/a/az;)Lcom/avast/android/generic/internet/c/a/az;

    .line 6314
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 6315
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    .line 6316
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->a:I

    .line 6318
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ak;->c:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/aj;->a(Lcom/avast/android/generic/internet/c/a/aj;Ljava/util/List;)Ljava/util/List;

    .line 6319
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/aj;->a(Lcom/avast/android/generic/internet/c/a/aj;I)I

    .line 6320
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 6256
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ak;->b()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 6256
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ak;->a()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 6256
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ak;->a()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 6256
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ak;->c()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 6342
    const/4 v0, 0x1

    return v0
.end method
