.class Lcom/avast/android/mobilesecurity/app/firewall/y;
.super Ljava/lang/Object;
.source "FirewallLogsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/z;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/z;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/y;)V

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->c(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    .line 148
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)V

    goto :goto_0
.end method
