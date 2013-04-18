.class final Lcom/ijinshan/kinghelper/firewall/av;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ijinshan/kinghelper/firewall/au;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/au;IJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/av;->d:Lcom/ijinshan/kinghelper/firewall/au;

    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/av;->a:I

    iput-wide p3, p0, Lcom/ijinshan/kinghelper/firewall/av;->b:J

    iput-object p5, p0, Lcom/ijinshan/kinghelper/firewall/av;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 160
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/av;->a:I

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/av;->d:Lcom/ijinshan/kinghelper/firewall/au;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/av;->b:J

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/av;->c:Ljava/lang/String;

    iget v4, p0, Lcom/ijinshan/kinghelper/firewall/av;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;IJLjava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/av;->d:Lcom/ijinshan/kinghelper/firewall/au;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/av;->b:J

    const/4 v3, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;IJLjava/lang/String;)V

    goto :goto_0
.end method
