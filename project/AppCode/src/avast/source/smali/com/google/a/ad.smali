.class Lcom/google/a/ad;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# instance fields
.field private final a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/Map;

.field private d:Z

.field private volatile e:Lcom/google/a/ak;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 154
    iput p1, p0, Lcom/google/a/ad;->a:I

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/a/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/a/ad;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Comparable;)I
    .locals 5
    .parameter

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 321
    if-ltz v1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/ai;

    invoke-virtual {v0}, Lcom/google/a/ai;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 323
    if-lez v0, :cond_0

    .line 324
    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    .line 341
    :goto_0
    return v0

    .line 325
    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    .line 326
    goto :goto_0

    .line 330
    :cond_1
    :goto_1
    if-gt v2, v1, :cond_4

    .line 331
    add-int v0, v2, v1

    div-int/lit8 v3, v0, 0x2

    .line 332
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/ai;

    invoke-virtual {v0}, Lcom/google/a/ai;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 333
    if-gez v0, :cond_2

    .line 334
    add-int/lit8 v0, v3, -0x1

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 340
    goto :goto_1

    .line 335
    :cond_2
    if-lez v0, :cond_3

    .line 336
    add-int/lit8 v0, v3, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v3

    .line 338
    goto :goto_0

    .line 341
    :cond_4
    add-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    goto :goto_0
.end method

.method static a(I)Lcom/google/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 100
    new-instance v0, Lcom/google/a/ae;

    invoke-direct {v0, p0}, Lcom/google/a/ae;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/ad;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/a/ad;->c(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/a/ad;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/a/ad;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    return-object v0
.end method

.method private c(I)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/a/ad;->e()V

    .line 297
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/ai;

    invoke-virtual {v0}, Lcom/google/a/ai;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 298
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/google/a/ad;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 303
    iget-object v3, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    new-instance v4, Lcom/google/a/ai;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v4, p0, v0}, Lcom/google/a/ai;-><init>(Lcom/google/a/ad;Ljava/util/Map$Entry;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 306
    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/google/a/ad;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/a/ad;->d:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 367
    :cond_0
    return-void
.end method

.method private f()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/google/a/ad;->e()V

    .line 377
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/google/a/ad;->e()V

    .line 389
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/a/ad;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/a/ad;->e()V

    .line 238
    invoke-direct {p0, p1}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 239
    if-ltz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/ai;

    invoke-virtual {v0, p2}, Lcom/google/a/ai;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/google/a/ad;->g()V

    .line 244
    add-int/lit8 v0, v0, 0x1

    neg-int v1, v0

    .line 245
    iget v0, p0, Lcom/google/a/ad;->a:I

    if-lt v1, v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/google/a/ad;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/google/a/ad;->a:I

    if-ne v0, v2, :cond_2

    .line 252
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    iget v2, p0, Lcom/google/a/ad;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/ai;

    .line 253
    invoke-direct {p0}, Lcom/google/a/ad;->f()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/a/ai;->a()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/a/ai;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    new-instance v2, Lcom/google/a/ai;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/a/ai;-><init>(Lcom/google/a/ad;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/a/ad;->d:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/ad;->d:Z

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/a/ad;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/a/ad;->e()V

    .line 263
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 269
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 214
    check-cast p1, Ljava/lang/Comparable;

    .line 215
    invoke-direct {p0, p1}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/a/af;->a()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/a/ad;->e:Lcom/google/a/ak;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/google/a/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/ak;-><init>(Lcom/google/a/ad;Lcom/google/a/ae;)V

    iput-object v0, p0, Lcom/google/a/ad;->e:Lcom/google/a/ak;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/a/ad;->e:Lcom/google/a/ak;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 227
    check-cast p1, Ljava/lang/Comparable;

    .line 228
    invoke-direct {p0, p1}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 229
    if-ltz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/ai;

    invoke-virtual {v0}, Lcom/google/a/ai;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/a/ad;->e()V

    .line 281
    check-cast p1, Ljava/lang/Comparable;

    .line 282
    invoke-direct {p0, p1}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 283
    if-ltz v0, :cond_0

    .line 284
    invoke-direct {p0, v0}, Lcom/google/a/ad;->c(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/a/ad;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/a/ad;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
