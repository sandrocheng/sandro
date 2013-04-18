.class final Lcom/keniu/security/protection/ui/ah;
.super Ljava/lang/Object;
.source "PreventTheftSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/keniu/security/protection/ui/ah;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/keniu/security/protection/ui/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/keniu/security/protection/ui/ah;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/ah;->a:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/ui/ah;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/ah;->a:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
