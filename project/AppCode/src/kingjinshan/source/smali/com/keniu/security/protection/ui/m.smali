.class final Lcom/keniu/security/protection/ui/m;
.super Ljava/lang/Object;
.source "PreventTheftMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 114
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    sget-object v1, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const v3, 0x7f0b0760

    invoke-virtual {v2, v3}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    sget-object v1, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->b:Ljava/lang/String;

    const-string v2, "file:///android_asset/html/pritection_help.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const-class v3, Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/m;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const-class v3, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f080212
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
