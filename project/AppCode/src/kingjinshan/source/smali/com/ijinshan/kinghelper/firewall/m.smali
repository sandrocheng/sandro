.class final Lcom/ijinshan/kinghelper/firewall/m;
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
    .line 742
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 745
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->d(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Ljava/lang/String;

    move-result-object v0

    .line 746
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Ljava/lang/String;[Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 748
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 749
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->b()V

    .line 751
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->e(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Z

    .line 753
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->f(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    .line 759
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/m;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    const v1, 0x7f0b0125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 764
    return-void
.end method
