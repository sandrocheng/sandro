.class final Lcom/ijinshan/kinghelper/firewall/k;
.super Ljava/lang/Object;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/k;->c:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/k;->a:Z

    iput-wide p2, p0, Lcom/ijinshan/kinghelper/firewall/k;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/k;->a:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/k;->c:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/k;->b:J

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;J)Z

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/k;->c:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/k;->b:J

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;J)Z

    goto :goto_0
.end method
