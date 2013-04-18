.class public final Lcom/b/a/fc;
.super Ljava/lang/Object;
.source "RepeatedFieldBuilder.java"

# interfaces
.implements Lcom/b/a/dp;


# instance fields
.field private a:Lcom/b/a/dp;

.field private b:Ljava/util/List;

.field private c:Z

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Lcom/b/a/fe;

.field private g:Lcom/b/a/fd;

.field private h:Lcom/b/a/ff;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/b/a/dp;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    .line 138
    iput-boolean p2, p0, Lcom/b/a/fc;->c:Z

    .line 139
    iput-object p3, p0, Lcom/b/a/fc;->a:Lcom/b/a/dp;

    .line 140
    iput-boolean p4, p0, Lcom/b/a/fc;->e:Z

    .line 141
    return-void
.end method

.method private a(IZ)Lcom/b/a/dk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/dk;

    move-object v0, p0

    .line 231
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/fp;

    .line 224
    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/dk;

    move-object v0, p0

    goto :goto_0

    .line 231
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object v0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/b/a/fc;->c:Z

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/fc;->c:Z

    .line 157
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    .line 169
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/b/a/fc;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/fc;->a:Lcom/b/a/dp;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/b/a/fc;->a:Lcom/b/a/dp;

    invoke-interface {v0}, Lcom/b/a/dp;->a()V

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/fc;->e:Z

    .line 574
    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/b/a/fc;->f:Lcom/b/a/fe;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/b/a/fc;->f:Lcom/b/a/fe;

    invoke-virtual {v0}, Lcom/b/a/fe;->a()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/b/a/fc;->g:Lcom/b/a/fd;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/b/a/fc;->g:Lcom/b/a/fd;

    invoke-virtual {v0}, Lcom/b/a/fd;->a()V

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/b/a/fc;->h:Lcom/b/a/ff;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/b/a/fc;->h:Lcom/b/a/ff;

    invoke-virtual {v0}, Lcom/b/a/ff;->a()V

    .line 596
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/b/a/dk;
    .locals 1
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/fc;->a(IZ)Lcom/b/a/dk;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/b/a/dk;)Lcom/b/a/fc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 293
    if-nez p2, :cond_0

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 297
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/fp;

    .line 301
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Lcom/b/a/fp;->b()V

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 306
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    .line 307
    return-object p0
.end method

.method public final a(Lcom/b/a/dk;)Lcom/b/a/fc;
    .locals 2
    .parameter

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 322
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 327
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    .line 328
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/b/a/fc;
    .locals 3
    .parameter

    .prologue
    .line 365
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/dk;

    .line 366
    if-nez v1, :cond_0

    .line 367
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 370
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    .line 372
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 373
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p0

    .line 388
    :goto_0
    return-object v1

    .line 376
    :cond_2
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 377
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/dk;

    .line 378
    invoke-virtual {p0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_1

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/dk;

    .line 383
    invoke-virtual {p0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_2

    .line 386
    :cond_4
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 387
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    move-object v1, p0

    .line 388
    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 579
    return-void
.end method

.method public final b(I)Lcom/b/a/dn;
    .locals 3
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/b/a/fc;->k()V

    .line 245
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/fp;

    .line 246
    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/dk;

    .line 248
    new-instance v1, Lcom/b/a/fp;

    iget-boolean v2, p0, Lcom/b/a/fc;->e:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    .line 250
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 252
    :cond_0
    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/b/a/dk;)Lcom/b/a/dn;
    .locals 3
    .parameter

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 399
    invoke-direct {p0}, Lcom/b/a/fc;->k()V

    .line 400
    new-instance v0, Lcom/b/a/fp;

    iget-boolean v1, p0, Lcom/b/a/fc;->e:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    .line 403
    iget-object v1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 406
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    .line 407
    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILcom/b/a/dk;)Lcom/b/a/fc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 342
    if-nez p2, :cond_0

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 346
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 351
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    .line 352
    return-object p0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/fc;->a:Lcom/b/a/dp;

    .line 146
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c(ILcom/b/a/dk;)Lcom/b/a/dn;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 421
    invoke-direct {p0}, Lcom/b/a/fc;->k()V

    .line 422
    new-instance v0, Lcom/b/a/fp;

    iget-boolean v1, p0, Lcom/b/a/fc;->e:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    .line 425
    iget-object v1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 426
    iget-object v1, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 427
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 428
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    .line 429
    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/b/a/fa;
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/fa;

    move-object v0, p0

    .line 279
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/fp;

    .line 272
    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/fa;

    move-object v0, p0

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    .line 441
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/fp;

    .line 445
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/b/a/fp;->b()V

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 450
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    .line 451
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/fc;->c:Z

    .line 460
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/fp;

    .line 463
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/b/a/fp;->b()V

    goto :goto_0

    .line 467
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    .line 469
    :cond_2
    invoke-direct {p0}, Lcom/b/a/fc;->l()V

    .line 470
    invoke-direct {p0}, Lcom/b/a/fc;->m()V

    .line 471
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    iput-boolean v4, p0, Lcom/b/a/fc;->e:Z

    .line 483
    iget-boolean v0, p0, Lcom/b/a/fc;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    .line 518
    :goto_0
    return-object v0

    .line 489
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/fc;->c:Z

    if-nez v0, :cond_2

    move v2, v3

    .line 492
    :goto_1
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;

    .line 494
    iget-object v1, p0, Lcom/b/a/fc;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/fp;

    .line 495
    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {v1}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v1

    if-eq v1, v0, :cond_1

    move v0, v3

    .line 502
    :goto_2
    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    goto :goto_0

    .line 492
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/b/a/fc;->j()V

    move v0, v3

    .line 510
    :goto_3
    iget-object v1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 511
    iget-object v1, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-direct {p0, v0, v4}, Lcom/b/a/fc;->a(IZ)Lcom/b/a/dk;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    .line 517
    iput-boolean v3, p0, Lcom/b/a/fc;->c:Z

    .line 518
    iget-object v0, p0, Lcom/b/a/fc;->b:Ljava/util/List;

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_2
.end method

.method public final g()Ljava/util/List;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/b/a/fc;->f:Lcom/b/a/fe;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/b/a/fe;

    invoke-direct {v0, p0}, Lcom/b/a/fe;-><init>(Lcom/b/a/fc;)V

    iput-object v0, p0, Lcom/b/a/fc;->f:Lcom/b/a/fe;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/b/a/fc;->f:Lcom/b/a/fe;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/b/a/fc;->g:Lcom/b/a/fd;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/b/a/fd;

    invoke-direct {v0, p0}, Lcom/b/a/fd;-><init>(Lcom/b/a/fc;)V

    iput-object v0, p0, Lcom/b/a/fc;->g:Lcom/b/a/fd;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/b/a/fc;->g:Lcom/b/a/fd;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/b/a/fc;->h:Lcom/b/a/ff;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/b/a/ff;

    invoke-direct {v0, p0}, Lcom/b/a/ff;-><init>(Lcom/b/a/fc;)V

    iput-object v0, p0, Lcom/b/a/fc;->h:Lcom/b/a/ff;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/b/a/fc;->h:Lcom/b/a/ff;

    return-object v0
.end method
