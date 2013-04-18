.class final Lcom/ijinshan/kinghelper/firewall/i;
.super Ljava/lang/Object;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/h;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/h;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/i;->c:Lcom/ijinshan/kinghelper/firewall/h;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/i;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ijinshan/kinghelper/firewall/i;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/i;->c:Lcom/ijinshan/kinghelper/firewall/h;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/h;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/i;->b:J

    invoke-static {v0, p2, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;IJ)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/i;->c:Lcom/ijinshan/kinghelper/firewall/h;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/h;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    iget-wide v1, p0, Lcom/ijinshan/kinghelper/firewall/i;->b:J

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/i;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;IJLjava/lang/String;)V

    goto :goto_0
.end method
