.class public abstract Lcom/b/a/c;
.super Lcom/b/a/e;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/b/a/ew;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/b/a/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/b/a/cq;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/cq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 665
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/cq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Lcom/b/a/ev;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-interface {p0}, Lcom/b/a/ev;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 624
    invoke-virtual {v0}, Lcom/b/a/cq;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Lcom/b/a/ev;->a(Lcom/b/a/cq;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/b/a/cq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_1
    invoke-interface {p0}, Lcom/b/a/ev;->a_()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 631
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/cq;

    .line 632
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 634
    invoke-virtual {v1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v3

    sget-object v4, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v3, v4, :cond_2

    .line 635
    invoke-virtual {v1}, Lcom/b/a/cq;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 636
    const/4 v3, 0x0

    .line 637
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 638
    check-cast v0, Lcom/b/a/ev;

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/b/a/c;->a(Ljava/lang/String;Lcom/b/a/cq;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p2}, Lcom/b/a/c;->a(Lcom/b/a/ev;Ljava/lang/String;Ljava/util/List;)V

    move v3, v5

    goto :goto_2

    .line 643
    :cond_3
    invoke-interface {p0, v1}, Lcom/b/a/ev;->a(Lcom/b/a/cq;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 644
    check-cast v0, Lcom/b/a/ev;

    const/4 v3, -0x1

    invoke-static {p1, v1, v3}, Lcom/b/a/c;->a(Ljava/lang/String;Lcom/b/a/cq;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/b/a/c;->a(Lcom/b/a/ev;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 651
    :cond_4
    return-void
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;Lcom/b/a/ew;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 488
    invoke-interface {p3}, Lcom/b/a/ew;->C()Lcom/b/a/cj;

    move-result-object v2

    .line 506
    const/4 v1, 0x0

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    .line 512
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/m;->a()I

    move-result v6

    .line 513
    if-eqz v6, :cond_8

    .line 514
    sget v7, Lcom/b/a/go;->n:I

    if-ne v6, v7, :cond_4

    .line 518
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v6

    .line 520
    if-eqz v6, :cond_c

    .line 528
    instance-of v1, p2, Lcom/b/a/db;

    if-eqz v1, :cond_2

    .line 529
    move-object v0, p2

    check-cast v0, Lcom/b/a/db;

    move-object v1, v0

    invoke-virtual {v1, v2, v6}, Lcom/b/a/db;->a(Lcom/b/a/cj;I)Lcom/b/a/de;

    move-result-object v1

    .line 535
    :goto_1
    if-eqz v1, :cond_3

    .line 536
    iget-object v3, v1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    .line 537
    iget-object v1, v1, Lcom/b/a/de;->b:Lcom/b/a/ev;

    invoke-interface {v1}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v4

    .line 538
    invoke-interface {p3, v3}, Lcom/b/a/ew;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/ev;

    .line 539
    if-eqz v1, :cond_1

    .line 540
    invoke-interface {v4, v1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    .line 542
    :cond_1
    if-eqz v5, :cond_b

    .line 544
    invoke-virtual {v5}, Lcom/b/a/i;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/m;->a(Ljava/io/InputStream;)Lcom/b/a/m;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/b/a/ew;->d(Lcom/b/a/m;)Lcom/b/a/ew;

    move-object v1, v8

    :goto_2
    move-object v5, v1

    move v1, v6

    .line 548
    goto :goto_0

    :cond_2
    move-object v1, v8

    .line 532
    goto :goto_1

    .line 551
    :cond_3
    if-eqz v5, :cond_a

    .line 552
    invoke-static {}, Lcom/b/a/gj;->a()Lcom/b/a/gk;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/b/a/gk;->a(Lcom/b/a/i;)Lcom/b/a/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gk;->a()Lcom/b/a/gj;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/b/a/gi;->a(ILcom/b/a/gj;)Lcom/b/a/gi;

    move-object v1, v8

    :goto_3
    move-object v5, v1

    move v1, v6

    .line 559
    goto :goto_0

    .line 560
    :cond_4
    sget v7, Lcom/b/a/go;->o:I

    if-ne v6, v7, :cond_7

    .line 561
    if-nez v1, :cond_5

    .line 564
    invoke-virtual {p0}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v5

    goto :goto_0

    .line 565
    :cond_5
    if-nez v4, :cond_6

    .line 567
    invoke-static {}, Lcom/b/a/gj;->a()Lcom/b/a/gk;

    move-result-object v6

    invoke-virtual {p0}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/b/a/gk;->a(Lcom/b/a/i;)Lcom/b/a/gk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/gk;->a()Lcom/b/a/gj;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lcom/b/a/gi;->a(ILcom/b/a/gj;)Lcom/b/a/gi;

    goto :goto_0

    .line 574
    :cond_6
    invoke-virtual {p0, v4, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    goto :goto_0

    .line 578
    :cond_7
    invoke-virtual {p0, v6}, Lcom/b/a/m;->b(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 584
    :cond_8
    sget v1, Lcom/b/a/go;->m:I

    invoke-virtual {p0, v1}, Lcom/b/a/m;->a(I)V

    .line 586
    if-eqz v4, :cond_9

    .line 587
    invoke-interface {v4}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v1

    invoke-interface {p3, v3, v1}, Lcom/b/a/ew;->b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    .line 589
    :cond_9
    return-void

    :cond_a
    move-object v1, v5

    goto :goto_3

    :cond_b
    move-object v1, v5

    goto :goto_2

    :cond_c
    move v1, v6

    goto/16 :goto_0
.end method

.method static a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;Lcom/b/a/ew;I)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 339
    invoke-interface {p3}, Lcom/b/a/ew;->C()Lcom/b/a/cj;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/bg;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lcom/b/a/go;->l:I

    if-ne p4, v1, :cond_a

    .line 343
    invoke-interface {p3}, Lcom/b/a/ew;->C()Lcom/b/a/cj;

    move-result-object v2

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move v1, v7

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/m;->a()I

    move-result v6

    if-eqz v6, :cond_8

    sget v7, Lcom/b/a/go;->n:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v6

    if-eqz v6, :cond_1e

    instance-of v1, p2, Lcom/b/a/db;

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/b/a/db;

    move-object v1, v0

    invoke-virtual {v1, v2, v6}, Lcom/b/a/db;->a(Lcom/b/a/cj;I)Lcom/b/a/de;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    iget-object v1, v1, Lcom/b/a/de;->b:Lcom/b/a/ev;

    invoke-interface {v1}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v4

    invoke-interface {p3, v3}, Lcom/b/a/ew;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/ev;

    if-eqz v1, :cond_1

    invoke-interface {v4, v1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    :cond_1
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/b/a/i;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/m;->a(Ljava/io/InputStream;)Lcom/b/a/m;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/b/a/ew;->d(Lcom/b/a/m;)Lcom/b/a/ew;

    move-object v1, v8

    :goto_2
    move-object v5, v1

    move v1, v6

    goto :goto_0

    :cond_2
    move-object v1, v8

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_1c

    invoke-static {}, Lcom/b/a/gj;->a()Lcom/b/a/gk;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/b/a/gk;->a(Lcom/b/a/i;)Lcom/b/a/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gk;->a()Lcom/b/a/gj;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/b/a/gi;->a(ILcom/b/a/gj;)Lcom/b/a/gi;

    move-object v1, v8

    :goto_3
    move-object v5, v1

    move v1, v6

    goto :goto_0

    :cond_4
    sget v7, Lcom/b/a/go;->o:I

    if-ne v6, v7, :cond_7

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v5

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    invoke-static {}, Lcom/b/a/gj;->a()Lcom/b/a/gk;

    move-result-object v6

    invoke-virtual {p0}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/b/a/gk;->a(Lcom/b/a/i;)Lcom/b/a/gk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/gk;->a()Lcom/b/a/gj;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lcom/b/a/gi;->a(ILcom/b/a/gj;)Lcom/b/a/gi;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v4, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/b/a/m;->b(I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_8
    sget v1, Lcom/b/a/go;->m:I

    invoke-virtual {p0, v1}, Lcom/b/a/m;->a(I)V

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v1

    invoke-interface {p3, v3, v1}, Lcom/b/a/ew;->b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    :cond_9
    move v1, v9

    .line 479
    :goto_4
    return v1

    .line 348
    :cond_a
    invoke-static {p4}, Lcom/b/a/go;->a(I)I

    move-result v3

    .line 349
    invoke-static {p4}, Lcom/b/a/go;->b(I)I

    move-result v4

    .line 354
    invoke-virtual {v2, v4}, Lcom/b/a/cj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 360
    instance-of v1, p2, Lcom/b/a/db;

    if-eqz v1, :cond_d

    .line 361
    move-object v0, p2

    check-cast v0, Lcom/b/a/db;

    move-object v1, v0

    invoke-virtual {v1, v2, v4}, Lcom/b/a/db;->a(Lcom/b/a/cj;I)Lcom/b/a/de;

    move-result-object v1

    .line 364
    if-nez v1, :cond_c

    move-object v1, v8

    move-object v2, v8

    .line 385
    :cond_b
    :goto_5
    if-eqz v2, :cond_10

    .line 386
    invoke-virtual {v2}, Lcom/b/a/cq;->j()Lcom/b/a/gq;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Z)I

    move-result v5

    if-ne v3, v5, :cond_f

    move v3, v7

    move v5, v7

    .line 400
    :goto_6
    if-eqz v5, :cond_11

    .line 401
    invoke-virtual {p1, p4, p0}, Lcom/b/a/gi;->a(ILcom/b/a/m;)Z

    move-result v1

    goto :goto_4

    .line 367
    :cond_c
    iget-object v2, v1, Lcom/b/a/de;->a:Lcom/b/a/cq;

    .line 368
    iget-object v1, v1, Lcom/b/a/de;->b:Lcom/b/a/ev;

    .line 369
    if-nez v1, :cond_b

    invoke-virtual {v2}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v5

    sget-object v6, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v5, v6, :cond_b

    .line 371
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message-typed extension lacked default instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/b/a/cq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v1, v8

    move-object v2, v8

    .line 377
    goto :goto_5

    .line 380
    :cond_e
    invoke-virtual {v2, v4}, Lcom/b/a/cj;->b(I)Lcom/b/a/cq;

    move-result-object v1

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    .line 391
    :cond_f
    invoke-virtual {v2}, Lcom/b/a/cq;->o()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v2}, Lcom/b/a/cq;->j()Lcom/b/a/gq;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Z)I

    move-result v5

    if-ne v3, v5, :cond_10

    move v3, v9

    move v5, v7

    .line 395
    goto :goto_6

    :cond_10
    move v3, v7

    move v5, v9

    .line 397
    goto :goto_6

    .line 404
    :cond_11
    if-eqz v3, :cond_15

    .line 405
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v1

    .line 406
    invoke-virtual {p0, v1}, Lcom/b/a/m;->c(I)I

    move-result v1

    .line 407
    invoke-virtual {v2}, Lcom/b/a/cq;->j()Lcom/b/a/gq;

    move-result-object v3

    sget-object v4, Lcom/b/a/gq;->n:Lcom/b/a/gq;

    if-ne v3, v4, :cond_13

    .line 408
    :goto_7
    invoke-virtual {p0}, Lcom/b/a/m;->v()I

    move-result v3

    if-lez v3, :cond_14

    .line 409
    invoke-virtual {p0}, Lcom/b/a/m;->m()I

    move-result v3

    .line 410
    invoke-virtual {v2}, Lcom/b/a/cq;->u()Lcom/b/a/co;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/b/a/co;->b(I)Lcom/b/a/cp;

    move-result-object v3

    .line 411
    if-nez v3, :cond_12

    move v1, v9

    .line 414
    goto/16 :goto_4

    .line 416
    :cond_12
    invoke-interface {p3, v2, v3}, Lcom/b/a/ew;->a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto :goto_7

    .line 419
    :cond_13
    :goto_8
    invoke-virtual {p0}, Lcom/b/a/m;->v()I

    move-result v3

    if-lez v3, :cond_14

    .line 420
    invoke-virtual {v2}, Lcom/b/a/cq;->j()Lcom/b/a/gq;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/b/a/dh;->a(Lcom/b/a/m;Lcom/b/a/gq;)Ljava/lang/Object;

    move-result-object v3

    .line 422
    invoke-interface {p3, v2, v3}, Lcom/b/a/ew;->a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto :goto_8

    .line 425
    :cond_14
    invoke-virtual {p0, v1}, Lcom/b/a/m;->d(I)V

    :goto_9
    move v1, v9

    .line 479
    goto/16 :goto_4

    .line 428
    :cond_15
    sget-object v3, Lcom/b/a/b;->a:[I

    invoke-virtual {v2}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/cs;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 468
    invoke-virtual {v2}, Lcom/b/a/cq;->j()Lcom/b/a/gq;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/m;Lcom/b/a/gq;)Ljava/lang/Object;

    move-result-object v1

    .line 472
    :goto_a
    invoke-virtual {v2}, Lcom/b/a/cq;->m()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 473
    invoke-interface {p3, v2, v1}, Lcom/b/a/ew;->a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto :goto_9

    .line 431
    :pswitch_0
    if-eqz v1, :cond_17

    .line 432
    invoke-interface {v1}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v1

    move-object v3, v1

    .line 436
    :goto_b
    invoke-virtual {v2}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-nez v1, :cond_16

    .line 437
    invoke-interface {p3, v2}, Lcom/b/a/ew;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/ev;

    invoke-interface {v3, v1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    .line 439
    :cond_16
    invoke-virtual {v2}, Lcom/b/a/cq;->e()I

    move-result v1

    invoke-virtual {p0, v1, v3, p2}, Lcom/b/a/m;->a(ILcom/b/a/ey;Lcom/b/a/df;)V

    .line 440
    invoke-interface {v3}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v1

    goto :goto_a

    .line 434
    :cond_17
    invoke-interface {p3, v2}, Lcom/b/a/ew;->e(Lcom/b/a/cq;)Lcom/b/a/ew;

    move-result-object v1

    move-object v3, v1

    goto :goto_b

    .line 445
    :pswitch_1
    if-eqz v1, :cond_19

    .line 446
    invoke-interface {v1}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v1

    move-object v3, v1

    .line 450
    :goto_c
    invoke-virtual {v2}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-nez v1, :cond_18

    .line 451
    invoke-interface {p3, v2}, Lcom/b/a/ew;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/ev;

    invoke-interface {v3, v1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    .line 453
    :cond_18
    invoke-virtual {p0, v3, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 454
    invoke-interface {v3}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v1

    goto :goto_a

    .line 448
    :cond_19
    invoke-interface {p3, v2}, Lcom/b/a/ew;->e(Lcom/b/a/cq;)Lcom/b/a/ew;

    move-result-object v1

    move-object v3, v1

    goto :goto_c

    .line 458
    :pswitch_2
    invoke-virtual {p0}, Lcom/b/a/m;->m()I

    move-result v1

    .line 459
    invoke-virtual {v2}, Lcom/b/a/cq;->u()Lcom/b/a/co;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/b/a/co;->b(I)Lcom/b/a/cp;

    move-result-object v3

    .line 462
    if-nez v3, :cond_1b

    .line 463
    invoke-virtual {p1, v4, v1}, Lcom/b/a/gi;->a(II)Lcom/b/a/gi;

    move v1, v9

    .line 464
    goto/16 :goto_4

    .line 475
    :cond_1a
    invoke-interface {p3, v2, v1}, Lcom/b/a/ew;->b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto/16 :goto_9

    :cond_1b
    move-object v1, v3

    goto :goto_a

    :cond_1c
    move-object v1, v5

    goto/16 :goto_3

    :cond_1d
    move-object v1, v5

    goto/16 :goto_2

    :cond_1e
    move v1, v6

    goto/16 :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static b(Lcom/b/a/ev;)Lcom/b/a/gf;
    .locals 3
    .parameter

    .prologue
    .line 605
    new-instance v0, Lcom/b/a/gf;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-static {p0, v2, v1}, Lcom/b/a/c;->a(Lcom/b/a/ev;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/b/a/gf;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private d([BII)Lcom/b/a/c;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    invoke-super {p0, p1, p2, p3}, Lcom/b/a/e;->a([BII)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method private d([BIILcom/b/a/df;)Lcom/b/a/c;
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 732
    invoke-super {p0, p1, p2, p3, p4}, Lcom/b/a/e;->a([BIILcom/b/a/df;)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method private static d(Lcom/b/a/ev;)Ljava/util/List;
    .locals 2
    .parameter

    .prologue
    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/b/a/c;->a(Lcom/b/a/ev;Ljava/lang/String;Ljava/util/List;)V

    .line 615
    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 5
    .parameter

    .prologue
    .line 255
    invoke-interface {p1}, Lcom/b/a/ev;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/c;->C()Lcom/b/a/cj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    invoke-interface {p1}, Lcom/b/a/ev;->a_()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/cq;

    .line 272
    invoke-virtual {v1}, Lcom/b/a/cq;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 274
    invoke-virtual {p0, v1, v2}, Lcom/b/a/c;->a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {v1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v2

    sget-object v4, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v2, v4, :cond_4

    .line 277
    invoke-virtual {p0, v1}, Lcom/b/a/c;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/ev;

    .line 278
    invoke-interface {v2}, Lcom/b/a/ev;->I()Lcom/b/a/ev;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/b/a/c;->b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto :goto_0

    .line 281
    :cond_3
    invoke-interface {v2}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;

    invoke-interface {v2, v0}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/b/a/c;->b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto :goto_0

    .line 288
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/b/a/c;->b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto :goto_0

    .line 292
    :cond_5
    invoke-interface {p1}, Lcom/b/a/ev;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/c;->a(Lcom/b/a/gg;)Lcom/b/a/c;

    .line 294
    return-object p0
.end method

.method public a(Lcom/b/a/gg;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/b/a/c;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/c;->c(Lcom/b/a/gg;)Lcom/b/a/ew;

    .line 596
    return-object p0
.end method

.method public final a(Lcom/b/a/i;)Lcom/b/a/c;
    .locals 0
    .parameter

    .prologue
    .line 695
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/i;)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method public final a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 703
    invoke-super {p0, p1, p2}, Lcom/b/a/e;->b(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method public final a(Lcom/b/a/m;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 300
    invoke-static {}, Lcom/b/a/db;->a()Lcom/b/a/db;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/c;->a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/b/a/c;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 312
    if-eqz v1, :cond_1

    .line 313
    invoke-static {p1, v0, p2, p0, v1}, Lcom/b/a/c;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;Lcom/b/a/ew;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/c;->c(Lcom/b/a/gg;)Lcom/b/a/ew;

    .line 323
    return-object p0
.end method

.method public final a(Ljava/io/InputStream;)Lcom/b/a/c;
    .locals 0
    .parameter

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/b/a/e;->c(Ljava/io/InputStream;)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method public final a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 746
    invoke-super {p0, p1, p2}, Lcom/b/a/e;->c(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method public final a([B)Lcom/b/a/c;
    .locals 0
    .parameter

    .prologue
    .line 709
    invoke-super {p0, p1}, Lcom/b/a/e;->b([B)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method public final a([BLcom/b/a/df;)Lcom/b/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 724
    invoke-super {p0, p1, p2}, Lcom/b/a/e;->b([BLcom/b/a/df;)Lcom/b/a/e;

    move-result-object p0

    check-cast p0, Lcom/b/a/c;

    return-object p0
.end method

.method public final synthetic a([BII)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/c;->d([BII)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([BIILcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/c;->d([BIILcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Lcom/b/a/c;
.end method

.method public final synthetic b(Lcom/b/a/i;)Lcom/b/a/e;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;)Lcom/b/a/e;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([B)Lcom/b/a/e;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a([B)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([BLcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/gg;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/gg;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([BII)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/c;->d([BII)Lcom/b/a/c;

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
    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/c;->d([BIILcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/io/InputStream;)Z
    .locals 1
    .parameter

    .prologue
    .line 752
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/io/InputStream;Lcom/b/a/df;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 760
    invoke-super {p0, p1, p2}, Lcom/b/a/e;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/b/a/c;
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/b/a/c;->a_()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    invoke-virtual {p0, v0}, Lcom/b/a/c;->d(Lcom/b/a/cq;)Lcom/b/a/ew;

    goto :goto_0

    .line 251
    :cond_0
    return-object p0
.end method

.method public final synthetic c(Ljava/io/InputStream;)Lcom/b/a/e;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BII)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/c;->d([BII)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BIILcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/c;->d([BIILcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/i;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([B)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a([B)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BLcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/b/a/c;->b()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/b/a/c;->b()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/i;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d([B)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a([B)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d([BLcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/io/InputStream;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(Ljava/io/InputStream;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/b/a/c;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/b/a/c;->b()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/b/a/c;->c()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/b/a/c;->b()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/b/a/c;->c()Lcom/b/a/c;

    move-result-object v0

    return-object v0
.end method
