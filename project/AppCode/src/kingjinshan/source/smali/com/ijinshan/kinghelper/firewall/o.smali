.class final Lcom/ijinshan/kinghelper/firewall/o;
.super Ljava/lang/Object;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/o;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

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

    .line 869
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/o;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    const-string v1, "sao_call_del"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 872
    invoke-static {v2, v2}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/o;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 874
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/o;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    .line 876
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/o;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    const v1, 0x7f0b0125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 881
    return-void
.end method
