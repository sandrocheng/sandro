.class final Lcom/ijinshan/kinghelper/firewall/cz;
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
    .line 571
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 575
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->a(I)V

    .line 576
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(I)V

    .line 577
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->i(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z

    .line 580
    const-string v0, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 582
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 583
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 584
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 585
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 589
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cz;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 590
    return-void
.end method
