.class Lcom/avast/android/generic/app/account/ab;
.super Ljava/lang/Object;
.source "ConnectionCheckFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/aa;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 376
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v0, v0, Lcom/avast/android/generic/app/account/aa;->q:I

    sparse-switch v0, :sswitch_data_0

    .line 665
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v0, v0, Lcom/avast/android/generic/app/account/aa;->q:I

    if-lt v0, v4, :cond_c

    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v0, v0, Lcom/avast/android/generic/app/account/aa;->q:I

    if-ge v0, v6, :cond_c

    .line 669
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->m(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 670
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->bY:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v4, v4, Lcom/avast/android/generic/app/account/aa;->q:I

    rsub-int/lit8 v4, v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v1, v1, Lcom/avast/android/generic/app/account/aa;->q:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(I)V

    goto :goto_0

    .line 381
    :sswitch_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->j:Z

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 383
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->f:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 386
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ac;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ac;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 398
    :sswitch_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->l:Z

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 400
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->D:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 403
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ah;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ah;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->k:Z

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 414
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->K:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 417
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ai;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ai;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->m:Z

    if-eqz v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 428
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->R:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/aj;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/aj;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->n:Z

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 442
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->cL:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 445
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ak;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ak;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 457
    :sswitch_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->g:Z

    if-nez v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 459
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->bO:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/al;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/al;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 471
    :cond_6
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->i:Z

    if-nez v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 473
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->cO:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 476
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/am;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/am;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 485
    :cond_7
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->h:Z

    if-nez v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 487
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->cp:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 490
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/an;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/an;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 502
    :sswitch_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->e:Z

    if-nez v0, :cond_8

    .line 503
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 504
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->r:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 507
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 509
    :cond_8
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->f:Z

    if-nez v0, :cond_9

    .line 510
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 511
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->p:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 514
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 516
    :cond_9
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->o:Lcom/avast/android/generic/app/account/u;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/u;->a()Lcom/avast/android/generic/app/account/v;

    move-result-object v0

    sget-object v1, Lcom/avast/android/generic/app/account/v;->a:Lcom/avast/android/generic/app/account/v;

    if-eq v0, v1, :cond_2

    .line 517
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 518
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->b:Z

    .line 519
    sget-object v0, Lcom/avast/android/generic/app/account/ap;->a:[I

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->o:Lcom/avast/android/generic/app/account/u;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/u;->a()Lcom/avast/android/generic/app/account/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/v;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 530
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->y:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 533
    :goto_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->cM:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 535
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ao;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ao;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->y:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    goto :goto_2

    .line 524
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->bZ:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    goto :goto_2

    .line 527
    :pswitch_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->cC:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    goto :goto_2

    .line 547
    :sswitch_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->p:Lcom/avast/a/a/a/c;

    sget-object v1, Lcom/avast/a/a/a/c;->a:Lcom/avast/a/a/a/c;

    if-eq v0, v1, :cond_a

    .line 548
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 550
    sget-object v0, Lcom/avast/android/generic/app/account/ap;->b:[I

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->p:Lcom/avast/a/a/a/c;

    invoke-virtual {v1}, Lcom/avast/a/a/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 555
    :pswitch_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->af:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 558
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 562
    :pswitch_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->ch:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 565
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 569
    :pswitch_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->bz:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->cW:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 572
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->l(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 576
    :pswitch_6
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->aB:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->cW:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 579
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->l(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 583
    :pswitch_7
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->ca:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 586
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ad;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ad;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 597
    :pswitch_8
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->V:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 600
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 604
    :pswitch_9
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->bk:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 607
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 611
    :pswitch_a
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->at:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 614
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ae;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ae;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 627
    :pswitch_b
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->bG:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 630
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 634
    :pswitch_c
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->ad:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 637
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 646
    :cond_a
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 650
    :sswitch_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->h(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V

    .line 652
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->m(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v3, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 654
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->aG:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->cW:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 657
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->l(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 679
    :cond_b
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(I)V

    goto/16 :goto_0

    .line 685
    :cond_c
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->c:Z

    if-eqz v0, :cond_d

    .line 686
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iput-boolean v5, v0, Lcom/avast/android/generic/app/account/aa;->b:Z

    .line 688
    :cond_d
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    if-eqz v0, :cond_10

    .line 689
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->b:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/q;->d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 696
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->c:Z

    if-eqz v0, :cond_e

    .line 697
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 698
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/af;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/af;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 734
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->c(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v0, v0, Lcom/avast/android/generic/app/account/aa;->q:I

    if-ge v0, v4, :cond_12

    .line 737
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v1, v1, Lcom/avast/android/generic/app/account/aa;->q:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(I)V

    goto/16 :goto_0

    .line 690
    :cond_f
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/q;->f:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    .line 708
    :cond_10
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->cE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 710
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 713
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget v0, v0, Lcom/avast/android/generic/app/account/aa;->q:I

    if-ge v0, v4, :cond_11

    .line 714
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->i:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 717
    :cond_11
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v1, v1, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->i:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/ag;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ag;-><init>(Lcom/avast/android/generic/app/account/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 739
    :cond_12
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/account/aa;->a:Z

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x1a -> :sswitch_5
    .end sparse-switch

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 550
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
