.class Lcom/avast/android/generic/ui/v;
.super Landroid/content/BroadcastReceiver;
.source "PasswordDialog.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/PasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/avast/android/generic/ui/v;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/avast/android/generic/ui/v;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->c(Lcom/avast/android/generic/ui/PasswordDialog;)V

    .line 219
    return-void
.end method
