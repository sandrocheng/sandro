.class final Lcom/ijinshan/kinghelper/firewall/ap;
.super Ljava/lang/Object;
.source "FirewallSettingsKeysActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ap;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/ap;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ap;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ap;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    const v1, 0x7f0b005b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ap;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ap;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    const v1, 0x7f0b005c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ap;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ap;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ap;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;)Lcom/ijinshan/kinghelper/firewall/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/aq;->notifyDataSetChanged()V

    .line 67
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ap;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ap;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method
