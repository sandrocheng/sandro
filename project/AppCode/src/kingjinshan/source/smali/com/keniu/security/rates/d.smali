.class final Lcom/keniu/security/rates/d;
.super Landroid/os/Handler;
.source "RatesRequestMainActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->c()V

    .line 83
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->e()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 85
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->d()V

    goto :goto_0

    .line 86
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 87
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->f()V

    goto :goto_0

    .line 88
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 89
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->g()V

    goto :goto_0
.end method
