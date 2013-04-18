.class final Lcom/ijinshan/kinghelper/firewall/r;
.super Ljava/lang/Object;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/p;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/q;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/q;Lcom/ijinshan/kinghelper/firewall/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/r;->b:Lcom/ijinshan/kinghelper/firewall/q;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/r;->a:Lcom/ijinshan/kinghelper/firewall/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 575
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/r;->a:Lcom/ijinshan/kinghelper/firewall/p;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/p;->k:I

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    .line 578
    const-string v1, "FirewallCallLogListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete log call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/r;->a:Lcom/ijinshan/kinghelper/firewall/p;

    iget v3, v3, Lcom/ijinshan/kinghelper/firewall/p;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",re="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/r;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 582
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/r;->b:Lcom/ijinshan/kinghelper/firewall/q;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/r;->b:Lcom/ijinshan/kinghelper/firewall/q;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 583
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/r;->b:Lcom/ijinshan/kinghelper/firewall/q;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/q;->a(Lcom/ijinshan/kinghelper/firewall/q;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 584
    return-void
.end method
