.class Lcom/avast/android/generic/app/settings/j;
.super Ljava/lang/Object;
.source "SetRecoveryNumberDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/j;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/j;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/j;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-static {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V

    .line 136
    return-void
.end method
