.class final Lcom/b/a/gc;
.super Ljava/lang/Object;
.source "TextFormat.java"


# instance fields
.field final a:Z


# direct methods
.method synthetic constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/gc;-><init>(ZB)V

    return-void
.end method

.method private constructor <init>(ZB)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-boolean p1, p0, Lcom/b/a/gc;->a:Z

    .line 223
    return-void
.end method

.method private a(IILjava/util/List;Lcom/b/a/gd;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 403
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 404
    const-string v2, ": "

    invoke-virtual {p4, v2}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 405
    invoke-static {p2, v1, p4}, Lcom/b/a/fy;->a(ILjava/lang/Object;Lcom/b/a/gd;)V

    .line 406
    iget-boolean v1, p0, Lcom/b/a/gc;->a:Z

    if-eqz v1, :cond_0

    const-string v1, " "

    :goto_1
    invoke-virtual {p4, v1}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    goto :goto_1

    .line 408
    :cond_1
    return-void
.end method

.method private a(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 239
    invoke-direct {p0, p1, v1, p3}, Lcom/b/a/gc;->b(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/gc;->b(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    .line 244
    :cond_1
    return-void
.end method

.method private a(Lcom/b/a/ev;Lcom/b/a/gd;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-interface {p1}, Lcom/b/a/ev;->a_()Ljava/util/Map;

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

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/cq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/b/a/gc;->a(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p1}, Lcom/b/a/ev;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/b/a/gc;->a(Lcom/b/a/gg;Lcom/b/a/gd;)V

    .line 232
    return-void
.end method

.method static synthetic a(Lcom/b/a/gc;Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/gc;->a(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/gc;Lcom/b/a/ev;Lcom/b/a/gd;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/b/a/gc;->a(Lcom/b/a/ev;Lcom/b/a/gd;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/gc;Lcom/b/a/gg;Lcom/b/a/gd;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/b/a/gc;->a(Lcom/b/a/gg;Lcom/b/a/gd;)V

    return-void
.end method

.method private a(Lcom/b/a/gg;Lcom/b/a/gd;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/b/a/gg;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 369
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/gj;

    .line 370
    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/b/a/gj;->c()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6, p2}, Lcom/b/a/gc;->a(IILjava/util/List;Lcom/b/a/gd;)V

    .line 372
    const/4 v5, 0x5

    invoke-virtual {v2}, Lcom/b/a/gj;->d()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6, p2}, Lcom/b/a/gc;->a(IILjava/util/List;Lcom/b/a/gd;)V

    .line 374
    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/b/a/gj;->e()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6, p2}, Lcom/b/a/gc;->a(IILjava/util/List;Lcom/b/a/gd;)V

    .line 376
    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/b/a/gj;->f()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6, p2}, Lcom/b/a/gc;->a(IILjava/util/List;Lcom/b/a/gd;)V

    .line 378
    invoke-virtual {v2}, Lcom/b/a/gj;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/b/a/gg;

    move-object v3, v0

    .line 379
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 380
    iget-boolean v2, p0, Lcom/b/a/gc;->a:Z

    if-eqz v2, :cond_1

    .line 381
    const-string v2, " { "

    invoke-virtual {p2, v2}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 386
    :goto_1
    invoke-direct {p0, v3, p2}, Lcom/b/a/gc;->a(Lcom/b/a/gg;Lcom/b/a/gd;)V

    .line 387
    iget-boolean v2, p0, Lcom/b/a/gc;->a:Z

    if-eqz v2, :cond_2

    .line 388
    const-string v2, "} "

    invoke-virtual {p2, v2}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_1
    const-string v2, " {\n"

    invoke-virtual {p2, v2}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p2}, Lcom/b/a/gd;->a()V

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {p2}, Lcom/b/a/gd;->b()V

    .line 391
    const-string v2, "}\n"

    invoke-virtual {p2, v2}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_3
    return-void
.end method

.method private b(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p1}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v0

    sget-object v1, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/cq;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/b/a/cq;->s()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 272
    :goto_1
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_4

    .line 273
    iget-boolean v0, p0, Lcom/b/a/gc;->a:Z

    if-eqz v0, :cond_3

    .line 274
    const-string v0, " { "

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 283
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/gc;->c(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    .line 285
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_6

    .line 286
    iget-boolean v0, p0, Lcom/b/a/gc;->a:Z

    if-eqz v0, :cond_5

    .line 287
    const-string v0, "} "

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 299
    :goto_3
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/cq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v0

    sget-object v1, Lcom/b/a/cs;->j:Lcom/b/a/cs;

    if-ne v0, v1, :cond_2

    .line 266
    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/cq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 276
    :cond_3
    const-string v0, " {\n"

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p3}, Lcom/b/a/gd;->a()V

    goto :goto_2

    .line 280
    :cond_4
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 289
    :cond_5
    invoke-virtual {p3}, Lcom/b/a/gd;->b()V

    .line 290
    const-string v0, "}\n"

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 293
    :cond_6
    iget-boolean v0, p0, Lcom/b/a/gc;->a:Z

    if-eqz v0, :cond_7

    .line 294
    const-string v0, " "

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 296
    :cond_7
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/b/a/gc;Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/gc;->c(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    return-void
.end method

.method private c(Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    sget-object v0, Lcom/b/a/fz;->a:[I

    invoke-virtual {p1}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 309
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :pswitch_3
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    :pswitch_4
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/fy;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/b/a/fy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    :pswitch_7
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 342
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/b/a/fy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 343
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :pswitch_8
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 348
    check-cast p2, Lcom/b/a/i;

    invoke-static {p2}, Lcom/b/a/fy;->a(Lcom/b/a/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 349
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :pswitch_9
    check-cast p2, Lcom/b/a/cp;

    invoke-virtual {p2}, Lcom/b/a/cp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :pswitch_a
    check-cast p2, Lcom/b/a/ev;

    invoke-direct {p0, p2, p3}, Lcom/b/a/gc;->a(Lcom/b/a/ev;Lcom/b/a/gd;)V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
