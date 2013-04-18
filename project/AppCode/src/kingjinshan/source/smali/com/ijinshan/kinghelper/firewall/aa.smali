.class final Lcom/ijinshan/kinghelper/firewall/aa;
.super Ljava/lang/Object;
.source "FirewallLogDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/aa;->c:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    iput-boolean p2, p0, Lcom/ijinshan/kinghelper/firewall/aa;->a:Z

    iput-wide p3, p0, Lcom/ijinshan/kinghelper/firewall/aa;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/aa;->a:Z

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aa;->c:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/aa;->b:J

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;J)Z

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aa;->c:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/aa;->b:J

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;J)Z

    goto :goto_0
.end method
