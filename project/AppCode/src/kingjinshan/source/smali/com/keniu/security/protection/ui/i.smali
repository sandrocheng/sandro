.class final Lcom/keniu/security/protection/ui/i;
.super Ljava/lang/Object;
.source "PreventTheftGuideCompleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/keniu/security/protection/ui/i;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/protection/ui/i;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;)V

    goto :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/keniu/security/protection/ui/i;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string v1, "type"

    const-string v2, "first"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/keniu/security/protection/ui/i;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x7f08020a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
