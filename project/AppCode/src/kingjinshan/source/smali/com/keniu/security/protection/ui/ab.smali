.class final Lcom/keniu/security/protection/ui/ab;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/keniu/security/protection/ui/ab;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/ab;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-virtual {v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 313
    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_ec_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/keniu/security/protection/ui/ab;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    return-void
.end method
