.class final Lcom/keniu/security/g/d;
.super Landroid/os/Handler;
.source "UpdateUIHelper.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/g/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/a;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Lcom/keniu/security/g/n;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    invoke-virtual {p1}, Lcom/keniu/security/g/n;->a()V

    .line 284
    iget-object v1, p1, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    .line 285
    invoke-virtual {v1}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_8

    .line 286
    invoke-virtual {v1}, Lcom/keniu/security/f/t;->a()Lcom/keniu/security/f/v;

    move-result-object v2

    .line 288
    iget v0, v2, Lcom/keniu/security/f/v;->b:I

    if-nez v0, :cond_2

    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->c(Lcom/keniu/security/g/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->d(Lcom/keniu/security/g/a;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->e(Lcom/keniu/security/g/a;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->c(Lcom/keniu/security/g/a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 299
    iget v0, v2, Lcom/keniu/security/f/v;->b:I

    if-eqz v0, :cond_3

    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v1, v2}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V

    goto :goto_0

    .line 301
    :cond_3
    iget v0, v2, Lcom/keniu/security/f/v;->b:I

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v2, v1, v7}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;Z)V

    goto :goto_0

    .line 304
    :cond_4
    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v1, v2}, Lcom/keniu/security/g/a;->b(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V

    goto :goto_0

    .line 308
    :cond_5
    const-string v3, "antivirus.db"

    .line 310
    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/keniu/security/f/v;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, v2, Lcom/keniu/security/f/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v6

    .line 312
    :goto_1
    if-ge v5, v4, :cond_9

    .line 313
    iget-object v0, v2, Lcom/keniu/security/f/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    .line 321
    :goto_2
    if-eqz v0, :cond_7

    .line 322
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v1, v2}, Lcom/keniu/security/g/a;->c(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V

    goto :goto_0

    .line 312
    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 324
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->e(Lcom/keniu/security/g/a;)V

    goto :goto_0

    .line 328
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-virtual {v1}, Lcom/keniu/security/f/t;->j()I

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;I)V

    goto :goto_0

    :cond_9
    move v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const v3, 0x7f0b0409

    const v5, 0x7f0b0247

    const v4, 0x7f0b0218

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/keniu/security/g/n;

    .line 337
    invoke-virtual {v0}, Lcom/keniu/security/g/n;->a()V

    iget-object v1, v0, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    invoke-virtual {v1}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/keniu/security/f/t;->a()Lcom/keniu/security/f/v;

    move-result-object v2

    iget v0, v2, Lcom/keniu/security/f/v;->b:I

    if-nez v0, :cond_2

    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->c(Lcom/keniu/security/g/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->d(Lcom/keniu/security/g/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->e(Lcom/keniu/security/g/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->c(Lcom/keniu/security/g/a;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, v2, Lcom/keniu/security/f/v;->b:I

    if-eqz v0, :cond_3

    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v1, v2}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V

    goto :goto_0

    :cond_3
    iget v0, v2, Lcom/keniu/security/f/v;->b:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v2, v1, v7}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;Z)V

    goto :goto_0

    :cond_4
    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v1, v2}, Lcom/keniu/security/g/a;->b(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V

    goto :goto_0

    :cond_5
    const-string v3, "antivirus.db"

    iget v0, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v0, :cond_e

    iget-object v0, v2, Lcom/keniu/security/f/v;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, v2, Lcom/keniu/security/f/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v6

    :goto_1
    if-ge v5, v4, :cond_e

    iget-object v0, v2, Lcom/keniu/security/f/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0, v1, v2}, Lcom/keniu/security/g/a;->c(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->e(Lcom/keniu/security/g/a;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-virtual {v1}, Lcom/keniu/security/f/t;->j()I

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;I)V

    goto/16 :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/keniu/security/g/i;

    .line 342
    iget-object v1, v0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/q;->dismiss()V

    .line 344
    :cond_9
    iget-object v0, v0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    .line 345
    invoke-virtual {v0}, Lcom/keniu/security/f/p;->j()I

    move-result v1

    if-nez v1, :cond_a

    .line 347
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->k()Z

    goto/16 :goto_0

    .line 352
    :cond_a
    iget-object v1, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    invoke-static {v1, v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;I)V

    goto/16 :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/keniu/security/g/r;

    .line 359
    iget-object v1, v0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/q;->dismiss()V

    .line 361
    :cond_b
    iget-object v0, v0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    .line 362
    invoke-virtual {v0}, Lcom/keniu/security/f/w;->j()I

    move-result v1

    if-nez v1, :cond_d

    .line 363
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->c(Lcom/keniu/security/g/a;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 364
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v2, v0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v1, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v2

    const-string v3, "antivirus.db"

    invoke-virtual {v2, v3}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 366
    :cond_c
    iget-object v0, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v2, v0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v1, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 369
    :cond_d
    iget-object v1, p0, Lcom/keniu/security/g/d;->a:Lcom/keniu/security/g/a;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->j()I

    move-result v0

    invoke-static {v1, v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;I)V

    goto/16 :goto_0

    :cond_e
    move v0, v6

    goto/16 :goto_2

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
