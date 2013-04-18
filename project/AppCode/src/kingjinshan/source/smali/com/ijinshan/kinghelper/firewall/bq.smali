.class final Lcom/ijinshan/kinghelper/firewall/bq;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bq;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iput-wide p2, p0, Lcom/ijinshan/kinghelper/firewall/bq;->a:J

    iput-object p4, p0, Lcom/ijinshan/kinghelper/firewall/bq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bq;->c:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/bq;->a:J

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/bq;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;JLjava/lang/String;)V

    .line 453
    return-void
.end method
