.class Lcom/avast/android/mobilesecurity/app/trafficinfo/w;
.super Landroid/support/v4/e/a;
.source "TrafficinfoFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 453
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    .line 454
    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 451
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->n:Z

    .line 455
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 485
    check-cast p1, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    .line 487
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c()V

    .line 491
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->b:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->d(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 522
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->d:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_1

    .line 524
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 525
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0310

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Ljava/lang/String;)V

    .line 527
    const v1, 0x7f020117

    invoke-virtual {p1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(I)V

    .line 528
    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setFocusable(Z)V

    .line 530
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setClickable(Z)V

    .line 549
    :goto_1
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->n:Z

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setEnabled(Z)V

    .line 550
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->c:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setTag(Ljava/lang/Object;)V

    .line 551
    return-void

    .line 495
    :pswitch_0
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->e(Z)V

    .line 496
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Z)V

    .line 497
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->f(Z)V

    .line 498
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->f:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->g:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJ)V

    goto :goto_0

    .line 501
    :pswitch_1
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Z)V

    .line 502
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->e(Z)V

    .line 503
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Z)V

    .line 504
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->h:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->i:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(JJ)V

    goto/16 :goto_0

    .line 507
    :pswitch_2
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Z)V

    .line 508
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->f(Z)V

    .line 509
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Z)V

    .line 510
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->j:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->k:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(JJ)V

    goto/16 :goto_0

    .line 513
    :pswitch_3
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Z)V

    .line 514
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->e(Z)V

    .line 515
    invoke-virtual {p1, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->f(Z)V

    .line 516
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->l:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->m:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(JJ)V

    goto/16 :goto_0

    .line 532
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p1, v5}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setFocusable(Z)V

    .line 534
    invoke-virtual {p1, v5}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setClickable(Z)V

    .line 538
    const/4 v0, 0x0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 540
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->c:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 544
    :cond_2
    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 545
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Z)V

    .line 558
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0}, Landroid/support/v4/e/a;->notifyDataSetChanged()V

    .line 480
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->n:Z

    .line 481
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 460
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->b:I

    .line 461
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->i:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->c:I

    .line 462
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->w:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->d:I

    .line 463
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->x:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->e:I

    .line 464
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->f:I

    .line 465
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->g:I

    .line 466
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->y:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->h:I

    .line 467
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->i:I

    .line 468
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->A:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->j:I

    .line 469
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->z:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->k:I

    .line 470
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->C:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->l:I

    .line 471
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;->B:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->m:I

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;->n:Z

    .line 474
    invoke-super {p0, p1}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
