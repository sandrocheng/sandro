.class final Lcom/keniu/security/protection/ui/k;
.super Ljava/lang/Object;
.source "PreventTheftGuideECActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/keniu/security/protection/ui/k;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/k;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 122
    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_ec_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/keniu/security/protection/ui/k;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method
