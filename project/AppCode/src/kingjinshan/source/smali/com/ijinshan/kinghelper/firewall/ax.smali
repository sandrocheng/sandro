.class final Lcom/ijinshan/kinghelper/firewall/ax;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ax;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 836
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ax;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const-string v1, "sao_sms_del"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 838
    invoke-static {v2, v2}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ax;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->d(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/ijinshan/kinghelper/firewall/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 840
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ax;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->d(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/ijinshan/kinghelper/firewall/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->notifyDataSetChanged()V

    .line 842
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ax;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const v1, 0x7f0b0125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 847
    return-void
.end method
