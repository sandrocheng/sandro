.class Lcom/avast/android/mobilesecurity/app/globalactivitylog/s;
.super Ljava/lang/Object;
.source "GlobalActivityLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/s;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/s;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.app.globalactivitylog.ACTION_FILTER_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    const-string v1, "position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/s;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 519
    return-void
.end method
