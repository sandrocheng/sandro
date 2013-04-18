.class final Lcom/ijinshan/kinghelper/firewall/ac;
.super Ljava/lang/Object;
.source "FirewallLogDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ac;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 475
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ac;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ac;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v0, p2}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;I)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ac;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v0, p2}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;I)V

    goto :goto_0
.end method
