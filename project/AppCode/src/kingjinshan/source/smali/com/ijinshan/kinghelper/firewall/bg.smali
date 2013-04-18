.class final Lcom/ijinshan/kinghelper/firewall/bg;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bg;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/bg;->a:I

    iput p3, p0, Lcom/ijinshan/kinghelper/firewall/bg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bg;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bg;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/bg;->a:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->b(I)V

    .line 1099
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bg;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/bg;->b:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->a(I)V

    .line 1100
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bg;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bg;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const v2, 0x7f0b0164

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/ijinshan/kinghelper/firewall/bg;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/ijinshan/kinghelper/firewall/bg;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->a(Ljava/lang/CharSequence;)V

    .line 1105
    :cond_0
    return-void
.end method
