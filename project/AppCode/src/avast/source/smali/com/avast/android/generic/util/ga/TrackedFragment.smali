.class public abstract Lcom/avast/android/generic/util/ga/TrackedFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TrackedFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/af;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/support/v4/app/FragmentBreadCrumbs;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-string v0, "breadcrumbs"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentBreadCrumbs;

    return-object v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "GA: trackEvent"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    .line 152
    invoke-static {v1}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_2

    .line 157
    const-string v2, "hideTitlebar"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 170
    sget v0, Lcom/avast/android/generic/t;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 165
    const-string v2, "hideTitlebar"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 85
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->a()Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->c(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->a(Landroid/view/View;)Landroid/support/v4/app/FragmentBreadCrumbs;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentBreadCrumbs;->setActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 63
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->a_()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->a_()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "titleResourceId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 68
    if-lez v1, :cond_2

    .line 69
    invoke-virtual {p0, v1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
