.class public abstract Lcom/avast/android/generic/util/ga/TrackedListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "TrackedListFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/support/v4/app/FragmentBreadCrumbs;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-string v0, "breadcrumbs"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentBreadCrumbs;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "GA: trackEvent"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 151
    invoke-static {v1}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_2

    .line 156
    const-string v2, "hideTitlebar"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 169
    sget v0, Lcom/avast/android/generic/t;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    .line 164
    const-string v2, "hideTitlebar"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroyView()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    .line 88
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->f()Ljava/lang/String;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->c(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->a(Landroid/view/View;)Landroid/support/v4/app/FragmentBreadCrumbs;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentBreadCrumbs;->setActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 58
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->a_()I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->a_()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "titleResourceId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 62
    if-lez v1, :cond_2

    .line 63
    invoke-virtual {p0, v1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
