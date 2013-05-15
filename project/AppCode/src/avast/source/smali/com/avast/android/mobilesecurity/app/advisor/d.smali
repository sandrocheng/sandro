.class Lcom/avast/android/mobilesecurity/app/advisor/d;
.super Landroid/os/AsyncTask;
.source "AdvisorPagerFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/bk;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)V

    .line 135
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/x;

    move-result-object v0

    if-nez v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/advisor/f;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/advisor/f;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;Landroid/support/v4/view/x;)Landroid/support/v4/view/x;

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->d(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/x;)V

    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->d(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/ViewPager;)V

    .line 141
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->e(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->d(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->e(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;

    move-result-object v1

    iget v1, v1, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment$RetainFragment;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/advisor/e;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/advisor/e;-><init>(Lcom/avast/android/mobilesecurity/app/advisor/d;)V

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/bk;)V

    .line 162
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->c(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;)Landroid/support/v4/view/x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/x;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/d;->a:Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 111
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/advisor/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/advisor/d;->a(Ljava/lang/Void;)V

    return-void
.end method
