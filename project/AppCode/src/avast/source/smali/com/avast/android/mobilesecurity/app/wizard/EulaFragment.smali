.class public Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;
.super Lcom/avast/android/generic/app/wizard/EulaFragment;
.source "EulaFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avast/android/generic/app/wizard/EulaFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "/ms/wizard/eula"

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/avast/android/mobilesecurity/app/wizard/c;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/mobilesecurity/app/wizard/c;-><init>(Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/wizard/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/wizard/WizardAccountActivity;->call(Landroid/content/Context;Z)V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;->call(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferActivity;->call(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/app/wizard/EulaFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->onResume()V

    .line 38
    return-void
.end method
