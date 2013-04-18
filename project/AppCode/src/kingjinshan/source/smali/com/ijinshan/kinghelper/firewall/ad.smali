.class final Lcom/ijinshan/kinghelper/firewall/ad;
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
    .line 689
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 694
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->c(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(I)I

    move-result v0

    .line 703
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    if-lez v0, :cond_1

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 708
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->finish()V

    .line 709
    return-void

    .line 697
    :cond_0
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE_CALL"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ad;->a:Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;->c(Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(I)I

    move-result v0

    goto :goto_0

    .line 703
    :cond_1
    const v0, 0x7f0b0127

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
