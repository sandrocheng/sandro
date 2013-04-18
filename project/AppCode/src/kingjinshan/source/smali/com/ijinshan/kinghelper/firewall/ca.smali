.class final Lcom/ijinshan/kinghelper/firewall/ca;
.super Ljava/lang/Object;
.source "IpDialHeaderAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ca;->a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ca;->a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ca;->a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ca;->a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    const v1, 0x7f0b008d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ca;->a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->m(Ljava/lang/String;)V

    .line 112
    const-string v0, "\u5176\u4ed6IP\u53f7\u7801"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->j(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ca;->a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->W()V

    .line 115
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ca;->a:Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->finish()V

    goto :goto_0
.end method
