.class Lcom/avast/android/mobilesecurity/app/account/a;
.super Ljava/lang/Object;
.source "AccountReportFrequencyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/account/a;->a:Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/a;->a:Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/a;->a:Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/ae;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ae;->a(I)V

    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/a;->a:Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/s;->a(I)Z

    .line 53
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/a;->a:Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportFrequencyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportService;->a(Landroid/content/Context;)V

    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    return-void
.end method
