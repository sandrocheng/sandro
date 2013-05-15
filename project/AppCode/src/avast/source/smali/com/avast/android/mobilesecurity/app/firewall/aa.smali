.class Lcom/avast/android/mobilesecurity/app/firewall/aa;
.super Ljava/lang/Object;
.source "FirewallLogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/firewall/z;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/z;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/aa;->b:Lcom/avast/android/mobilesecurity/app/firewall/z;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/aa;->b:Lcom/avast/android/mobilesecurity/app/firewall/z;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/z;->a:Lcom/avast/android/mobilesecurity/app/firewall/y;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/aa;->b:Lcom/avast/android/mobilesecurity/app/firewall/z;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/firewall/z;->a:Lcom/avast/android/mobilesecurity/app/firewall/y;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method
