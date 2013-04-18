.class final Lcom/ijinshan/kinghelper/firewall/ci;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/ci;->a:Landroid/widget/TextView;

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

    .line 697
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->n(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 704
    :cond_0
    const-string v0, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    const-string v1, "\u4e0d\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    if-ne v0, v1, :cond_1

    .line 706
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 711
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const v1, 0x7f0b008d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    :goto_1
    return-void

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z

    .line 718
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->o(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->j(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->m(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ci;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->p(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    :goto_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x5000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    goto :goto_1

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->o(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->j(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->o(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->o(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->m(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 740
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ci;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->o(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
