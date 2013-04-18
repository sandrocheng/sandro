.class final Lcom/ijinshan/cleaner/al;
.super Landroid/os/Handler;
.source "SDcardCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 392
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 393
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 485
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 396
    :pswitch_1
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 398
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->j(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v4, 0x7f0b027f

    invoke-virtual {v3, v4}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const-string v2, "mg_rub_sdcard_scan"

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 406
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 407
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/adapter/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/adapter/f;->notifyDataSetChanged()V

    .line 419
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->l(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    move-object v2, v0

    .line 420
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 422
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->l(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/cleaner/a/c;

    .line 423
    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/a/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ijinshan/cleaner/a/c;->c(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v2}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/ijinshan/cleaner/a/c;->a(J)V

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/adapter/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/adapter/f;->a()V

    .line 438
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/adapter/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/adapter/f;->notifyDataSetChanged()V

    .line 439
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    .line 442
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g()J

    move-result-wide v1

    .line 444
    iget-object v3, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 445
    iget-object v3, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 446
    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 447
    iget-object v3, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->j(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5171\u626b\u63cf\u5230 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u9879SD\u5361\u6570\u636e,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u603b\u5927\u5c0f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v8

    .line 449
    :goto_2
    if-ge v3, v2, :cond_4

    .line 450
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/cleaner/a/c;

    .line 451
    iget-object v4, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v4}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v3, 0x7f0b0279

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    sget-object v2, Lcom/ijinshan/cleaner/aq;->b:Lcom/ijinshan/cleaner/aq;

    iput-object v2, v1, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    .line 456
    :cond_5
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    iget-object v1, v1, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 458
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    iget-object v1, v1, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->o(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v3, 0x7f0b027e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v6, 0x7f0b0273

    invoke-virtual {v5, v6}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v3, 0x7f0b0277

    invoke-virtual {v2, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    sget-object v2, Lcom/ijinshan/cleaner/aq;->c:Lcom/ijinshan/cleaner/aq;

    iput-object v2, v1, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    goto/16 :goto_0

    .line 467
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v5, 0x7f0b0280

    invoke-virtual {v4, v5}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/hoi/widget/o;->a(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hoi/widget/o;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hoi/widget/o;->a(I)V

    goto/16 :goto_0

    .line 475
    :pswitch_4
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const-string v2, "\u6e05\u7406\u5b8c\u6210\uff01"

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 477
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 478
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/o;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 479
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hoi/widget/o;->dismiss()V

    .line 480
    :cond_6
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->q(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;

    .line 482
    :cond_7
    iget-object v1, p0, Lcom/ijinshan/cleaner/al;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->r(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
