.class public Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "FirewallFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avast/android/generic/util/y;


# static fields
.field public static a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;


# instance fields
.field private b:Lcom/avast/android/generic/util/x;

.field private c:Z

.field private d:Lcom/avast/android/mobilesecurity/t;

.field private e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private f:Ljava/util/List;

.field private g:Z

.field private h:Z

.field private i:Lcom/actionbarsherlock/view/MenuItem;

.field private j:Lcom/avast/android/generic/ui/widget/NextRow;

.field private k:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

.field private l:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

.field private m:Lcom/avast/android/mobilesecurity/app/firewall/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/p;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/firewall/p;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->f:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/m;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/firewall/m;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->l:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    .line 104
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/n;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/firewall/n;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->m:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    .line 386
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->d:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 258
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c(Ljava/lang/String;)V

    .line 260
    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(I)V

    .line 261
    invoke-virtual {v0, v3}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setFocusable(Z)V

    .line 262
    invoke-virtual {v0, v3}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setClickable(Z)V

    .line 264
    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/a/d;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Lcom/avast/android/mobilesecurity/l;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->b:Lcom/avast/android/generic/util/x;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->l:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/firewall/a/d;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/avast/android/generic/util/x;Lcom/avast/android/mobilesecurity/app/firewall/a/b;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Lcom/avast/android/generic/d/e;)V

    .line 268
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    if-eqz p3, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 275
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsActivity;->call(Landroid/content/Context;)V

    .line 558
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 530
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v2

    .line 532
    new-instance v4, Lcom/avast/android/mobilesecurity/app/firewall/t;

    invoke-direct {v4}, Lcom/avast/android/mobilesecurity/app/firewall/t;-><init>()V

    .line 539
    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/u;

    invoke-direct {v5, p0, v2}, Lcom/avast/android/mobilesecurity/app/firewall/u;-><init>(Landroid/content/Context;Z)V

    .line 548
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/v;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/firewall/v;-><init>(Landroid/content/Context;ZLcom/avast/android/mobilesecurity/app/firewall/core/a;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 554
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0700cc

    invoke-static {v0, p1, v1, v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailActivity;->call(Landroid/content/Context;Ljava/lang/String;II)V

    .line 344
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    .line 248
    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/avast/android/mobilesecurity/app/firewall/core/a;ZLandroid/os/Handler;Landroid/os/Handler;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 497
    const-string v2, "Firewall: Applying rules..."

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 498
    invoke-static {p0, p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->d(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    if-eqz p1, :cond_1

    invoke-static {p0, p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 506
    :goto_0
    if-eqz v2, :cond_2

    .line 507
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 509
    if-eqz p1, :cond_0

    .line 510
    if-eqz p4, :cond_0

    .line 511
    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 524
    :cond_0
    :goto_1
    return v0

    .line 502
    :cond_1
    if-nez p1, :cond_4

    invoke-static {p0, p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->b(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 503
    goto :goto_0

    .line 518
    :cond_2
    const-string v0, "Firewall: Failed - ignoring changes..."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 520
    if-eqz p5, :cond_3

    if-nez p3, :cond_3

    .line 521
    invoke-virtual {p5, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    move v0, v1

    .line 524
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aJ()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c033f

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_1
    const v1, 0x7f0c0307

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    if-eqz v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->k:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->k:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aJ()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0c0308

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_3
    const v0, 0x7f0c033e

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 572
    :cond_4
    const v0, 0x7f0c0309

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/generic/ui/widget/NextRow;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->j:Lcom/avast/android/generic/ui/widget/NextRow;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/generic/util/x;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->b:Lcom/avast/android/generic/util/x;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/mobilesecurity/app/firewall/a/b;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->l:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    return-void
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirewallFragment.onLoadFinished() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    invoke-virtual {v0, p2}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_0
    return-void
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 151
    const v0, 0x7f0c0305

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "/ms/firewall"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 297
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 299
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/w;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/avast/android/mobilesecurity/app/firewall/w;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->c:Z

    .line 304
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->c:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;Z)Z

    .line 311
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 312
    const/16 v1, 0x38

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 313
    const-string v0, "FirewallFragment.onActivityCreated()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 315
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->g:Z

    .line 316
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    new-instance v0, Lcom/avast/android/generic/util/x;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avast/android/generic/util/x;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/util/y;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->b:Lcom/avast/android/generic/util/x;

    .line 158
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->d:Lcom/avast/android/mobilesecurity/t;

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->setHasOptionsMenu(Z)V

    .line 160
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirewallFragment.onCreateLoader() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 349
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 280
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 281
    const v0, 0x7f07023d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    .line 282
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 283
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    const v0, 0x7f030053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 167
    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 365
    const-string v0, "FirewallFragment.onLoaderReset()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    .line 368
    if-eqz v0, :cond_0

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 287
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 292
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 289
    :pswitch_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a()V

    .line 290
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023d
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 483
    :try_start_0
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->h:Z

    if-eqz v1, :cond_0

    .line 484
    sget-object v1, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onPause()V

    .line 492
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "Firewall: Error applying rules"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 320
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onResume()V

    .line 321
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->g:Z

    if-nez v0, :cond_0

    .line 324
    const-string v0, "FirewallFragment.onResume()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->notifyDataSetChanged()V

    .line 326
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->c()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v1

    .line 330
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    .line 331
    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setEnabled(Z)V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->g:Z

    .line 335
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 172
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    const v0, 0x7f0c0308

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-direct {p0, v0, v1, v4}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->k:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    .line 181
    const v0, 0x7f0c030a

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ROOTED"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const v0, 0x7f0c030b

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KERNEL"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const v0, 0x7f0c030c

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIASERVER"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const v0, 0x7f0c030d

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VPNCONN"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const v0, 0x7f0c030e

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINUXSHELL"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const v0, 0x7f0c030f

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSCOMMS"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const v0, 0x7f070130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 191
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->c()V

    .line 193
    const v0, 0x7f070131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->j:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 195
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->j:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/q;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/q;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->l:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->m:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    new-instance v5, Lcom/avast/android/mobilesecurity/app/firewall/r;

    invoke-direct {v5, p0}, Lcom/avast/android/mobilesecurity/app/firewall/r;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;-><init>(Landroid/content/Context;Lcom/avast/android/generic/ui/widget/CheckBoxRow;Lcom/avast/android/mobilesecurity/app/firewall/a/b;Lcom/avast/android/mobilesecurity/app/firewall/core/a;Lcom/avast/android/mobilesecurity/app/firewall/a/a;)V

    invoke-virtual {v6, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 225
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/s;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/s;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 235
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->j:Lcom/avast/android/generic/ui/widget/NextRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->h:Z

    .line 238
    return-void
.end method
