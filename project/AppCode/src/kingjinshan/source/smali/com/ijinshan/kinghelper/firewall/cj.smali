.class final Lcom/ijinshan/kinghelper/firewall/cj;
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
    .line 748
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cj;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/cj;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 753
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cj;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->n(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cj;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Z)Z

    .line 756
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cj;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cj;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x5000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 759
    return-void
.end method
