.class final Lcom/ijinshan/kinghelper/firewall/cy;
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
    .line 556
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->j(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->k(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->l(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->h(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(I)V

    .line 563
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->k(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(I)V

    .line 565
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->g(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 567
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cy;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 568
    return-void
.end method
