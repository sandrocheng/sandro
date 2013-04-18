.class final Lcom/keniu/security/util/ah;
.super Ljava/lang/Object;
.source "MyAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/util/MyAlertController;


# direct methods
.method constructor <init>(Lcom/keniu/security/util/MyAlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->a(Lcom/keniu/security/util/MyAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->b(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v0}, Lcom/keniu/security/util/MyAlertController;->b(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->c(Lcom/keniu/security/util/MyAlertController;)Z

    move-result v1

    .line 124
    :goto_0
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    :cond_0
    if-eqz v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v0}, Lcom/keniu/security/util/MyAlertController;->k(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->j(Lcom/keniu/security/util/MyAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    :cond_1
    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->d(Lcom/keniu/security/util/MyAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->e(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 118
    iget-object v0, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v0}, Lcom/keniu/security/util/MyAlertController;->e(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->f(Lcom/keniu/security/util/MyAlertController;)Z

    move-result v1

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->g(Lcom/keniu/security/util/MyAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->h(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 121
    iget-object v0, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v0}, Lcom/keniu/security/util/MyAlertController;->h(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/keniu/security/util/ah;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->i(Lcom/keniu/security/util/MyAlertController;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
