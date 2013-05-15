.class Lcom/avast/android/generic/app/account/aq;
.super Landroid/content/BroadcastReceiver;
.source "DisconnectFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/DisconnectFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/DisconnectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avast/android/generic/app/account/aq;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aq;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->a(Lcom/avast/android/generic/app/account/DisconnectFragment;)Lcom/avast/android/generic/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aq;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/aq;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/DisconnectFragment;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/support/v4/app/FragmentManager;I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aq;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->b(Lcom/avast/android/generic/app/account/DisconnectFragment;)V

    goto :goto_0
.end method
