.class final Lcom/keniu/security/protection/ui/f;
.super Landroid/os/Handler;
.source "PreventTheftExperienceInfoActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/keniu/security/protection/ui/f;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/keniu/security/protection/ui/f;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-virtual {v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a()V

    .line 210
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/keniu/security/protection/ui/f;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/keniu/security/protection/ui/f;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-virtual {v1}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a()V

    .line 215
    iget-object v1, p0, Lcom/keniu/security/protection/ui/f;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a(Ljava/lang/String;)V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/protection/ui/f;->a:Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->c(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity is destory, can not show dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
