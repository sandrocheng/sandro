.class final Lcom/ijinshan/kinghelper/firewall/cw;
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
    .line 499
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/mydb/opt/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->h(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->h(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->h(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->h(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 506
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->h(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(I)V

    .line 507
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 513
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    goto :goto_0

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/mydb/opt/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cw;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->showDialog(I)V

    goto :goto_1
.end method
