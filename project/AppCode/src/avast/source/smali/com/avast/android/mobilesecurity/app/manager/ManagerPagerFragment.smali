.class public Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "ManagerPagerFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# instance fields
.field private a:Lcom/viewpagerindicator/a;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/support/v4/view/x;

.field private d:Lcom/avast/android/mobilesecurity/t;

.field private e:Landroid/content/SharedPreferences;

.field private f:Z

.field private g:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[I

.field private k:I

.field private l:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 369
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;Landroid/support/v4/view/x;)Landroid/support/v4/view/x;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c:Landroid/support/v4/view/x;

    return-object p1
.end method

.method static synthetic a(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->e()V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/viewpagerindicator/a;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->a:Lcom/viewpagerindicator/a;

    return-object v0
.end method

.method private static b(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 236
    new-instance v1, Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d00ad

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f07013d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 240
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->a:Lcom/viewpagerindicator/a;

    .line 243
    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/x;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c:Landroid/support/v4/view/x;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c:Landroid/support/v4/view/x;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f:Z

    if-nez v1, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    move v1, v0

    .line 272
    :goto_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c:Landroid/support/v4/view/x;

    invoke-virtual {v3}, Landroid/support/v4/view/x;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v4

    invoke-static {v4, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 275
    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 277
    const/4 v1, 0x1

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    if-eqz v1, :cond_2

    .line 281
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 284
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k:I

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 300
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f()Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a()I

    move-result v3

    .line 306
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->h:[Ljava/lang/String;

    .line 309
    :goto_0
    new-instance v4, Lcom/avast/android/mobilesecurity/app/manager/p;

    invoke-direct {v4, p0, v3, v2, v0}, Lcom/avast/android/mobilesecurity/app/manager/p;-><init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;ILcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 331
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->i:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private f()Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    .line 341
    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    return-object v0
.end method

.method private g()Ljava/util/List;
    .locals 4

    .prologue
    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c:Landroid/support/v4/view/x;

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-static {v3, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_1
    return-object v2
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic i(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)[I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->j:[I

    return-object v0
.end method

.method static synthetic l(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "/ms/appManager"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f0c01ed

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "manager_pager_retained"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    .line 156
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    .line 158
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->e:Landroid/content/SharedPreferences;

    const-string v2, "selected_tab"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;->a:I

    .line 159
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    const-string v2, "manager_pager_retained"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    :cond_1
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/n;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/manager/n;-><init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)V

    .line 229
    new-array v1, v3, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-array v0, v7, [Ljava/lang/String;

    const v1, 0x7f0c02c7

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0c02cb

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0c02ca

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const v2, 0x7f0c02c9

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->h:[Ljava/lang/String;

    .line 105
    new-array v0, v6, [Ljava/lang/String;

    const v1, 0x7f0c02c7

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0c02cb

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->i:[Ljava/lang/String;

    .line 108
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->j:[I

    .line 112
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->d:Lcom/avast/android/mobilesecurity/t;

    .line 113
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->e:Landroid/content/SharedPreferences;

    .line 115
    iput v4, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k:I

    .line 116
    if-eqz p1, :cond_0

    .line 117
    const-string v0, "order_by"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k:I

    .line 119
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k:I

    if-gez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->d:Lcom/avast/android/mobilesecurity/t;

    const-string v1, "am_order"

    invoke-virtual {v0, v1, v3}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k:I

    .line 122
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    const-string v1, "mOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "mOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k:I

    .line 127
    :cond_1
    return-void

    .line 108
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f:Z

    .line 132
    const v0, 0x7f03005c

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroyView()V

    .line 259
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->d()V

    .line 262
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f()Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    const-string v1, "order_by"

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f:Z

    .line 254
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f07013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    .line 139
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/m;->a(Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V

    .line 141
    const v0, 0x7f07013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->l:Landroid/widget/Button;

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->h:[Ljava/lang/String;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->l:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/manager/m;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/manager/m;-><init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method
