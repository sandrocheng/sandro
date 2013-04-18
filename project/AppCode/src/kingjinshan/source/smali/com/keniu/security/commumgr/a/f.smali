.class final Lcom/keniu/security/commumgr/a/f;
.super Landroid/os/Handler;
.source "RpCtrl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 106
    invoke-static {}, Lcom/keniu/security/commumgr/a/e;->b()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0475

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 108
    invoke-static {}, Lcom/keniu/security/commumgr/a/e;->b()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0476

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
