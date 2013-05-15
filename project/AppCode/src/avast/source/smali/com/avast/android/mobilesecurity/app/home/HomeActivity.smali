.class public Lcom/avast/android/mobilesecurity/app/home/HomeActivity;
.super Lcom/avast/android/generic/ui/BaseMultiPaneActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/avast/android/generic/ui/t;
.implements Lcom/avast/android/mobilesecurity/scan/g;


# instance fields
.field private a:Lcom/actionbarsherlock/view/MenuItem;

.field private b:Z

.field private c:Z

.field private g:Lcom/avast/android/mobilesecurity/app/home/n;

.field private h:Lcom/avast/android/generic/app/home/EmptyPaneFragment;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Lcom/avast/android/mobilesecurity/ui/g;

.field private k:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;-><init>()V

    .line 405
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->k:Landroid/os/Handler$Callback;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->b()Landroid/view/View;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/avast/android/mobilesecurity/ui/g;

    const v2, 0x7f0300a6

    invoke-direct {v1, p0, v0, v2}, Lcom/avast/android/mobilesecurity/ui/g;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->j:Lcom/avast/android/mobilesecurity/ui/g;

    .line 183
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->j:Lcom/avast/android/mobilesecurity/ui/g;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/f;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/f;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/g;->a(Lcom/avast/android/mobilesecurity/ui/j;)V

    .line 197
    return-void
.end method

.method private a(IILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v1, 0x7f07008e

    .line 423
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_1

    .line 426
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/app/home/n;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;IILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->g:Lcom/avast/android/mobilesecurity/app/home/n;

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 431
    if-eqz p3, :cond_2

    .line 432
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    :cond_2
    if-lez p2, :cond_0

    .line 435
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 227
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/g;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/home/g;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;IILandroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->c:Z

    return p1
.end method

.method private b()Landroid/view/View;
    .locals 4

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 218
    :cond_1
    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 321
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 323
    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/util/s;

    .line 324
    const-class v2, Lcom/avast/android/generic/a/a;

    invoke-static {p0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/generic/a/a;

    .line 325
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lcom/avast/android/generic/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/h;

    invoke-direct {v0, p0, p1, v1}, Lcom/avast/android/mobilesecurity/app/home/h;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Landroid/view/View;Lcom/avast/android/generic/util/s;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->k:Landroid/os/Handler$Callback;

    .line 341
    const v0, 0x7f07001c

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->k:Landroid/os/Handler$Callback;

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->c()V

    return-void
.end method

.method private b(Ljava/lang/Class;)V
    .locals 2
    .parameter

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;

    .line 527
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->c()I

    move-result v1

    if-gez v1, :cond_0

    .line 529
    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a(Ljava/lang/Class;)V

    .line 532
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)Lcom/avast/android/mobilesecurity/ui/g;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->j:Lcom/avast/android/mobilesecurity/ui/g;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const v3, 0x7f070061

    .line 251
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 252
    invoke-static {p0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->h:Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    invoke-direct {v1}, Lcom/avast/android/generic/app/home/EmptyPaneFragment;-><init>()V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->h:Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->h:Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    const-class v2, Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 259
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    instance-of v1, v0, Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    if-eqz v1, :cond_1

    .line 261
    check-cast v0, Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->h:Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    goto :goto_0
.end method

.method public static call(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->call(Landroid/content/Context;Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public static call(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v1, "open"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 132
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)Landroid/os/Handler$Callback;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->k:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 356
    const/16 v1, 0x2713

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 357
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->d()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->i:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/k;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/home/k;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->i:Landroid/content/BroadcastReceiver;

    .line 548
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 549
    const-string v1, "com.avast.android.mobilesecurity.app.scanner.ACTION_LOG_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v1, "com.avast.android.mobilesecurity.app.scanner.ACTION_PROBLEM_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "com.avast.android.mobilesecurity.service.UPDATE_SUCCESSFUL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "com.avast.android.mobilesecurity.service.UP_TO_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    invoke-static {p0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 554
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 561
    invoke-static {p0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;)V

    .line 562
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/avast/android/generic/ui/a;
    .locals 4
    .parameter

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 501
    const-string v1, "Activity"

    const-string v2, "Fragment"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 503
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    :goto_0
    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->b(Ljava/lang/Class;)V

    .line 510
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->h:Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    if-eqz v2, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->h:Lcom/avast/android/generic/app/home/EmptyPaneFragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 516
    :cond_0
    new-instance v2, Lcom/avast/android/generic/ui/a;

    const v3, 0x7f070061

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/avast/android/generic/ui/a;-><init>(Lcom/avast/android/generic/ui/BaseMultiPaneActivity;Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v2

    .line 504
    :catch_0
    move-exception v2

    .line 505
    const-string v3, "Fragment not found"

    invoke-static {v3, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v1, 0x7f030027

    const/16 v3, 0x2713

    const/4 v2, 0x0

    .line 445
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 446
    if-nez p2, :cond_1

    .line 447
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->b:Z

    if-nez v0, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 452
    invoke-virtual {v0, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->b:Z

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 459
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->am()Z

    move-result v0

    .line 460
    if-eqz v0, :cond_2

    const v0, 0x7f030025

    :goto_1
    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/i;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/i;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(IILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 468
    :cond_3
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->i()Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    :cond_4
    const v0, 0x7f0c01f8

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/j;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/home/j;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(IILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 481
    :cond_5
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/l;

    invoke-direct {v0, p0, v4}, Lcom/avast/android/mobilesecurity/app/home/l;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Lcom/avast/android/mobilesecurity/app/home/d;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 570
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 582
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->d()V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->c:Z

    .line 596
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 597
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->j:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->j:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/g;->d()V

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->setContentView(I)V

    .line 151
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->c()V

    .line 152
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/d;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/d;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 164
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a()V

    .line 166
    if-eqz p1, :cond_0

    const-string v0, "global_activity_log_visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/e;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/e;-><init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 378
    new-instance v0, Landroid/support/v4/a/f;

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->c()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 384
    const v0, 0x7f07023c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a:Lcom/actionbarsherlock/view/MenuItem;

    .line 385
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->g:Lcom/avast/android/mobilesecurity/app/home/n;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->g:Lcom/avast/android/mobilesecurity/app/home/n;

    iget v0, v0, Lcom/avast/android/mobilesecurity/app/home/n;->a:I

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->g:Lcom/avast/android/mobilesecurity/app/home/n;

    iget v1, v1, Lcom/avast/android/mobilesecurity/app/home/n;->b:I

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->g:Lcom/avast/android/mobilesecurity/app/home/n;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/home/n;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(IILandroid/view/View$OnClickListener;)V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->g:Lcom/avast/android/mobilesecurity/app/home/n;

    .line 396
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->d()V

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 352
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 239
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->j:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/g;->c()V

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 368
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onResume()V

    .line 362
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    const-string v0, "global_activity_log_visible"

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->j:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/g;->a()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f070060

    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->d()V

    .line 273
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onStart()V

    .line 275
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->g()V

    .line 278
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 280
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/Application;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/Application;->j()V

    .line 285
    :cond_0
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 286
    const-string v1, "scanDone"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    const-class v0, Lcom/avast/android/mobilesecurity/app/wizard/WizardScannerScanService;

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1, v4}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->call(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;

    .line 290
    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a(I)V

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 297
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 299
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;

    .line 301
    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a()V

    .line 304
    :cond_2
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(Landroid/content/Intent;)V

    .line 307
    :cond_3
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->b()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->b(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 372
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;->onStop()V

    .line 373
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->h()V

    .line 374
    return-void
.end method
