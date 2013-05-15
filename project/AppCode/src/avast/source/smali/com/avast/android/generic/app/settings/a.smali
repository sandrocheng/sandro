.class Lcom/avast/android/generic/app/settings/a;
.super Landroid/content/BroadcastReceiver;
.source "RecoveryNumberDescriptionDialog.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/a;->a:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/a;->a:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->dismiss()V

    .line 51
    return-void
.end method
