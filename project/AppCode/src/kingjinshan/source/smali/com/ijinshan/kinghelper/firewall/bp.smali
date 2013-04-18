.class final Lcom/ijinshan/kinghelper/firewall/bp;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bp;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/bp;->a:Z

    iput-wide p2, p0, Lcom/ijinshan/kinghelper/firewall/bp;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/bp;->a:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bp;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/bp;->b:J

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;J)Z

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bp;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/bp;->b:J

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;J)Z

    goto :goto_0
.end method
