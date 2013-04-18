.class final Lcom/keniu/security/protection/ui/n;
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
    .line 132
    iput-object p1, p0, Lcom/keniu/security/protection/ui/n;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/keniu/security/protection/ui/n;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    .line 138
    const-string v1, "pto"

    const-string v2, "8"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/keniu/security/protection/ui/n;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    iget-boolean v1, v1, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->a:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/keniu/security/protection/ui/n;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const v1, 0x7f0b07b3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    iget-object v0, p0, Lcom/keniu/security/protection/ui/n;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftMainActivity;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/n;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    iget-object v1, p0, Lcom/keniu/security/protection/ui/n;->a:Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
