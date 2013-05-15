.class Lcom/avast/android/generic/app/account/m;
.super Landroid/os/AsyncTask;
.source "AccountFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/AccountFragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 509
    iput-object p1, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    .line 510
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 505
    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->g:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    .line 507
    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->i:Landroid/content/Context;

    .line 512
    iput-object p2, p0, Lcom/avast/android/generic/app/account/m;->i:Landroid/content/Context;

    .line 513
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 659
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 660
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->f:Landroid/content/BroadcastReceiver;

    const-string v3, "com.google.android.c2dm.permission.SEND"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 665
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/m;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->s(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/o;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/app/account/o;-><init>(Lcom/avast/android/generic/app/account/m;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/avast/android/generic/app/account/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/avast/android/generic/app/account/m;->g:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/m;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/generic/app/account/m;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/m;->b()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    .line 578
    :cond_0
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->b:Ljava/lang/String;

    .line 579
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->c:Ljava/lang/String;

    .line 580
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->e:Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->d:Ljava/lang/String;

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 588
    new-instance v0, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    :try_start_1
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/m;->b()V

    .line 618
    const-string v2, "AccountFragment"

    const-string v3, "C2DM registration error"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v3, Lcom/avast/android/generic/z;->ac:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/avast/android/generic/app/account/m;->i:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/m;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_1
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_8

    move v0, v1

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->g:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 592
    add-int/lit8 v0, v0, 0x1

    .line 593
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 595
    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v2}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v2}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_4

    .line 596
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_4
    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 603
    :cond_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->g:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 604
    :cond_6
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 605
    new-instance v0, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 621
    :catchall_0
    move-exception v0

    throw v0

    .line 606
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->g:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 607
    const-string v0, "AccountFragment"

    const-string v2, "C2DM registration error (timeout)"

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v2, Lcom/avast/android/generic/z;->b:I

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/m;->a(Ljava/lang/String;)V

    .line 609
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 614
    :cond_8
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 629
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/m;->b()V

    .line 635
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->t(Lcom/avast/android/generic/app/account/AccountFragment;)V

    .line 637
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->q(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    new-instance v1, Lcom/avast/android/generic/app/account/j;

    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/avast/android/generic/app/account/j;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->b(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/j;)Lcom/avast/android/generic/app/account/j;

    .line 643
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->u(Lcom/avast/android/generic/app/account/AccountFragment;)Lcom/avast/android/generic/app/account/j;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avast/android/generic/app/account/m;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/avast/android/generic/app/account/m;->c:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/avast/android/generic/app/account/m;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/avast/android/generic/app/account/m;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/avast/android/generic/app/account/m;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 497
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/m;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/m;->b()V

    .line 655
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->q(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/m;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 517
    new-instance v0, Lcom/avast/android/generic/app/account/n;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/account/n;-><init>(Lcom/avast/android/generic/app/account/m;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->f:Landroid/content/BroadcastReceiver;

    .line 553
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->q(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 554
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0, p0}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/m;)V

    .line 557
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/m;->a()V

    .line 560
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/g;->a(Landroid/content/Context;)V

    .line 571
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v1, Lcom/avast/android/generic/z;->cj:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;
    :try_end_0
    .catch Lcom/avast/android/generic/util/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/m;->b()V

    .line 568
    const-string v1, "AccountFragment"

    const-string v2, "C2DM registration error"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    iget-object v0, p0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v1, Lcom/avast/android/generic/z;->b:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/m;->h:Ljava/lang/String;

    goto :goto_0
.end method
