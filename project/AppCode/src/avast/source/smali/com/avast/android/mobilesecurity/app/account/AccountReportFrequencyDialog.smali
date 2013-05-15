.class public Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AccountReportFrequencyDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;
    .locals 2
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;-><init>()V

    .line 33
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    const v0, 0x7f0e0003

    new-instance v2, Lcom/avast/android/mobilesecurity/app/account/a;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/account/a;-><init>(Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
