.class final Lcom/keniu/security/service/e;
.super Ljava/lang/Object;
.source "RubbishSMSScanServiceCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;


# direct methods
.method constructor <init>(Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/keniu/security/service/e;->b:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    iput p2, p0, Lcom/keniu/security/service/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 96
    iget v0, p0, Lcom/keniu/security/service/e;->a:I

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/keniu/security/service/e;->b:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    const-string v1, "\u5783\u573e\u77ed\u4fe1\u626b\u63cf\u5b8c\u6bd5\uff0c\u672a\u53d1\u73b0\u5783\u573e\u77ed\u4fe1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/service/e;->b:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "FirewallLogTabActivity_rubbish_scan_res"

    iget v2, p0, Lcom/keniu/security/service/e;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/keniu/security/service/e;->b:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    invoke-virtual {v1, v0}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
