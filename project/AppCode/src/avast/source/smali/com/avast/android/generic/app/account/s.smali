.class Lcom/avast/android/generic/app/account/s;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 41
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    sget v2, Lcom/avast/android/generic/z;->cj:I

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->i()Lcom/avast/android/generic/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->i()Lcom/avast/android/generic/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/account/AccountActivity;->call(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/account/AccountActivity;->call(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/account/AccountActivity;->call(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/s;->a:Lcom/avast/android/generic/app/account/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->h()V

    goto/16 :goto_0
.end method
