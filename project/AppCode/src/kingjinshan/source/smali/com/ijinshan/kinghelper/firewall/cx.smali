.class final Lcom/ijinshan/kinghelper/firewall/cx;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

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

    .line 522
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 523
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->i(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z

    .line 526
    const-string v0, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 528
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 529
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 530
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 531
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cx;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 534
    :cond_0
    return-void
.end method
