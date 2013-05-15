.class Lcom/avast/android/mobilesecurity/app/manager/n;
.super Landroid/os/AsyncTask;
.source "ManagerPagerFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 5
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/bk;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->c(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)V

    .line 195
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->d(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/x;

    move-result-object v0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/manager/q;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->e(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/app/manager/q;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;Landroid/support/v4/view/x;)Landroid/support/v4/view/x;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->d(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/x;)V

    .line 199
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/ViewPager;)V

    .line 201
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    move-result-object v1

    iget v1, v1, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/manager/o;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/manager/o;-><init>(Lcom/avast/android/mobilesecurity/app/manager/n;)V

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/bk;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/n;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/n;->a(Ljava/lang/Void;)V

    return-void
.end method
