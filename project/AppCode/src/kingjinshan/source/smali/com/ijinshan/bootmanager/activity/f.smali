.class final Lcom/ijinshan/bootmanager/activity/f;
.super Landroid/os/Handler;
.source "AutoBootMangerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b0589

    const v6, 0x7f0b0588

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 483
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 485
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0, v5}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Z)Z

    .line 486
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->q(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 487
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->d(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->s(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-instance v1, Lcom/ijinshan/bootmanager/a/a;

    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ijinshan/bootmanager/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/a/a;)Lcom/ijinshan/bootmanager/a/a;

    .line 492
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->g(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0593

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->b:Lcom/ijinshan/bootmanager/activity/i;

    iput-object v1, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    .line 502
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0, v8}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I

    .line 508
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I

    .line 509
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->v(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->x(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a()V

    goto/16 :goto_0

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0592

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->a:Lcom/ijinshan/bootmanager/activity/i;

    iput-object v1, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    goto/16 :goto_1

    .line 516
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 519
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v2, 0x7f0b058d

    invoke-static {v0, v1, v2}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;Landroid/app/AlertDialog;I)V

    goto/16 :goto_0

    .line 523
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 525
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 526
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I

    .line 528
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I

    .line 530
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/a/a;->notifyDataSetChanged()V

    .line 531
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->g(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 532
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0593

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    sget-object v1, Lcom/ijinshan/bootmanager/activity/i;->b:Lcom/ijinshan/bootmanager/activity/i;

    iput-object v1, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    .line 535
    :cond_7
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 536
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->d(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b058a

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->e(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->f(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    :cond_8
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 542
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 543
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 544
    :cond_9
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0, v8}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 546
    :cond_a
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 547
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0597

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    :cond_b
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->y(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 552
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_d

    .line 554
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->z(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    .line 555
    :cond_d
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0599

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    :cond_e
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 560
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->v(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->x(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 566
    :pswitch_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_f

    .line 567
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 568
    :cond_f
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v2, 0x7f0b058e

    invoke-static {v0, v1, v2}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;Landroid/app/AlertDialog;I)V

    .line 570
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 573
    :pswitch_4
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 574
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 575
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I

    .line 577
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I

    .line 579
    :cond_10
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/a/a;->notifyDataSetChanged()V

    .line 580
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 581
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 582
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 583
    :cond_11
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0, v8}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 585
    :cond_12
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_13

    .line 586
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0598

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 589
    :cond_13
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->y(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 591
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_15

    .line 593
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->z(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    .line 594
    :cond_15
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b059a

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 598
    :cond_16
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 599
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->v(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->x(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v3}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->d(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const v2, 0x7f0b0594

    invoke-virtual {v1, v2}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->f(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->e(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 611
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 612
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->c(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/f;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/a/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
