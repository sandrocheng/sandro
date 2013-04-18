.class final Lcom/keniu/security/commumgr/i;
.super Ljava/lang/Object;
.source "NumLocateQueryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    iput-object p2, p0, Lcom/keniu/security/commumgr/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 117
    iget-object v0, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    iget-object v1, p0, Lcom/keniu/security/commumgr/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v2}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->c(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    iget-object v1, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    const v2, 0x7f0b0521

    invoke-virtual {v1, v2}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    iget-object v1, p0, Lcom/keniu/security/commumgr/i;->b:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    const v2, 0x7f0b0522

    invoke-virtual {v1, v2}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
