.class public Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "AntiTheftOfferFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "/ms/wizard/antiTheft"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/wizard/WizardAccountActivity;->call(Landroid/content/Context;Z)V

    .line 60
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const v0, 0x7f030038

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/wizard/a;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/wizard/a;-><init>(Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/wizard/b;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/wizard/b;-><init>(Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-object v0
.end method
