.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "TrafficInfoPagerFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# instance fields
.field private a:Lcom/viewpagerindicator/a;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/support/v4/view/x;

.field private d:Lcom/avast/android/mobilesecurity/t;

.field private e:Landroid/content/SharedPreferences;

.field private f:Z

.field private g:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

.field private h:I

.field private i:[Ljava/lang/String;

.field private j:Landroid/widget/Button;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 65
    const/16 v0, 0xb

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->h:I

    .line 368
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;Landroid/support/v4/view/x;)Landroid/support/v4/view/x;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c:Landroid/support/v4/view/x;

    return-object p1
.end method

.method private static a(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 299
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

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 338
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->h:I

    .line 339
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->h:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c:Landroid/support/v4/view/x;

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 355
    instance-of v2, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    if-eqz v2, :cond_0

    .line 356
    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->h:I

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a(I)V

    .line 352
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->j:Landroid/widget/Button;

    const v1, 0x7f0c0360

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->j:Landroid/widget/Button;

    const v1, 0x7f0c0361

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->j:Landroid/widget/Button;

    const v1, 0x7f0c0362

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 360
    :cond_1
    return-void

    .line 339
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/viewpagerindicator/a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a:Lcom/viewpagerindicator/a;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 225
    new-instance v1, Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d00ad

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f070180

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 229
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a:Lcom/viewpagerindicator/a;

    .line 232
    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/x;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c:Landroid/support/v4/view/x;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c:Landroid/support/v4/view/x;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->f:Z

    if-nez v1, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    move v1, v0

    .line 275
    :goto_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c:Landroid/support/v4/view/x;

    invoke-virtual {v3}, Landroid/support/v4/view/x;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v4

    invoke-static {v4, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_0

    .line 279
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 280
    const/4 v1, 0x1

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 287
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->i:[Ljava/lang/String;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/m;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/m;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 329
    return-void
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "/ms/networkMeter"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0c035b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "trafficinfo_pager_retained"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    .line 138
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    .line 140
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e:Landroid/content/SharedPreferences;

    const-string v3, "selected_tab"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;->a:I

    .line 141
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->g:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    const-string v3, "trafficinfo_pager_retained"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 149
    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V

    .line 205
    new-array v2, v1, [Ljava/lang/Void;

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->k:Z

    .line 209
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->j:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c035c

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 207
    goto :goto_0

    .line 215
    :cond_3
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c035d

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v0, "period"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->h:I

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->d:Lcom/avast/android/mobilesecurity/t;

    .line 105
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e:Landroid/content/SharedPreferences;

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0c036d

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f0c036e

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0c036f

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->i:[Ljava/lang/String;

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    const v0, 0x7f03006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroyView()V

    .line 262
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->d()V

    .line 265
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->k:Z

    .line 241
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :goto_1
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_1
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->k:Z

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->j:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    const-string v0, "period"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->f:Z

    .line 257
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f070181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    .line 120
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/m;->a(Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V

    .line 122
    const v0, 0x7f07017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->j:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->j:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/j;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/j;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->h:I

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a(I)V

    .line 131
    return-void
.end method
