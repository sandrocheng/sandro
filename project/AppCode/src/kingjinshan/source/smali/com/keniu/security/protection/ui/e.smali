.class final Lcom/keniu/security/protection/ui/e;
.super Ljava/lang/Object;
.source "PreventTheftExperienceInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 182
    iget-object v0, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    const-class v2, Lcom/keniu/security/protection/ScreenLockService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v1, "preview"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 191
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    const-class v2, Lcom/keniu/security/protection/ScreenLockService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v1, "preview"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 199
    iget-object v0, p0, Lcom/keniu/security/protection/ui/e;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-virtual {v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b()V

    .line 201
    :cond_2
    return-void
.end method
