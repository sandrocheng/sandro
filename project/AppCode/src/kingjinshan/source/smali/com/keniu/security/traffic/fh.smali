.class final Lcom/keniu/security/traffic/fh;
.super Landroid/os/Handler;
.source "TrafficZiFeiSubSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/keniu/security/traffic/fh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/traffic/fh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/util/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aw;->a()V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/keniu/security/traffic/fh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v1, 0x7f0b02c9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/fh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->setResult(I)V

    .line 62
    iget-object v0, p0, Lcom/keniu/security/traffic/fh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->finish()V

    .line 63
    return-void

    .line 56
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/keniu/security/traffic/fh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v1, 0x7f0b02ca

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
