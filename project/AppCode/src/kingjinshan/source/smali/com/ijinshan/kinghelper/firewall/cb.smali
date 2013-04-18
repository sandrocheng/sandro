.class final Lcom/ijinshan/kinghelper/firewall/cb;
.super Ljava/lang/Object;
.source "IpDialNoUseNumberListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cb;->c:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/cb;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/cb;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cb;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cb;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/cb;->c:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cb;->c:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    .line 169
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cb;->c:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    .line 170
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cb;->c:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    .line 171
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cb;->c:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Lcom/ijinshan/kinghelper/firewall/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ce;->notifyDataSetChanged()V

    .line 174
    :cond_0
    return-void
.end method
