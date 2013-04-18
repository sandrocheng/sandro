.class final Lcom/ijinshan/kinghelper/firewall/cu;
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
    .line 402
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 407
    if-nez p2, :cond_2

    .line 409
    const-string v0, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 422
    const-string v0, "\u62e8\u6253\u957f\u9014\u65f6"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 426
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 427
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 428
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 430
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const v1, 0x7f0b0697

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->showDialog(I)V

    .line 435
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z

    .line 454
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x6000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 456
    return-void

    .line 410
    :cond_2
    if-ne p2, v2, :cond_3

    .line 412
    const-string v0, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_3
    const-string v0, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_4
    const-string v0, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 442
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 443
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 444
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    goto :goto_1

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 449
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 450
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 451
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cu;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    goto :goto_1
.end method
