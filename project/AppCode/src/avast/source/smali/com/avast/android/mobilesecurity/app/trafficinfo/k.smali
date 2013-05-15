.class Lcom/avast/android/mobilesecurity/app/trafficinfo/k;
.super Landroid/os/AsyncTask;
.source "TrafficInfoPagerFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/bk;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->c(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V

    .line 173
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->d(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/x;

    move-result-object v0

    if-nez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;Landroid/support/v4/view/x;)Landroid/support/v4/view/x;

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->d(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/x;)V

    .line 177
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(I)V

    .line 178
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/ViewPager;)V

    .line 180
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->f(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->e(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->f(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;

    move-result-object v1

    iget v1, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment$RetainFragment;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)Lcom/viewpagerindicator/a;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/l;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/l;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/k;)V

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/a;->a(Landroid/support/v4/view/bk;)V

    .line 200
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/k;->a(Ljava/lang/Void;)V

    return-void
.end method
