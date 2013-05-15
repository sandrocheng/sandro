.class public Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "AdvisorPagerFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# instance fields
.field private a:Lcom/viewpagerindicator/a;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/support/v4/view/x;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z

.field private f:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 240
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;Landroid/support/v4/view/x;)Landroid/support/v4/view/x;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c:Landroid/support/v4/view/x;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/viewpagerindicator/a;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a:Lcom/viewpagerindicator/a;

    return-object v0
.end method

.method private static a(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
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

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/x;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c:Landroid/support/v4/view/x;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 176
    new-instance v1, Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d00ad

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0700c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 180
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a:Lcom/viewpagerindicator/a;

    .line 183
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c:Landroid/support/v4/view/x;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->e:Z

    if-nez v1, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    move v1, v0

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c:Landroid/support/v4/view/x;

    invoke-virtual {v3}, Landroid/support/v4/view/x;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v4

    invoke-static {v4, v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 212
    const/4 v1, 0x1

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 219
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->f:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "/ms/appAdvisor"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0c01eb

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "advisor_pager_retained"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->f:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    .line 100
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->f:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->f:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    .line 102
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->f:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->d:Landroid/content/SharedPreferences;

    const-string v2, "selected_tab"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;->a:I

    .line 103
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->f:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    const-string v2, "advisor_pager_retained"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 111
    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/d;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/advisor/d;-><init>(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)V

    .line 167
    new-array v1, v3, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->d:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->e:Z

    .line 86
    const v0, 0x7f030037

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroyView()V

    .line 194
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->d()V

    .line 197
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->e:Z

    .line 189
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0700c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    .line 93
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/m;->a(Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V

    .line 94
    return-void
.end method
