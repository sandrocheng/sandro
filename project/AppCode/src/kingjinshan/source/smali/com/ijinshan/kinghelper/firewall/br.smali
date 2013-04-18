.class final Lcom/ijinshan/kinghelper/firewall/br;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/br;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iput-wide p2, p0, Lcom/ijinshan/kinghelper/firewall/br;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/br;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 496
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/br;->a:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(I)I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/br;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    if-lez v0, :cond_0

    const v0, 0x7f0b0125

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 505
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/br;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->finish()V

    .line 506
    return-void

    .line 499
    :cond_0
    const v0, 0x7f0b0127

    goto :goto_0
.end method
