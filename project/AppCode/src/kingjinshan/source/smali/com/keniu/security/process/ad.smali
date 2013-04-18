.class final Lcom/keniu/security/process/ad;
.super Landroid/content/BroadcastReceiver;
.source "ProcessWidget.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessWidget;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/process/ProcessWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/process/ad;-><init>(Lcom/keniu/security/process/ProcessWidget;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/process/ProcessWidget;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/keniu/security/process/ad;->a:Lcom/keniu/security/process/ProcessWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->a()Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "widget_update"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keniu/security/process/ProcessWidget;->a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 104
    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->a()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Lcom/keniu/security/process/ProcessWidget;->a(Landroid/os/Handler;)Landroid/os/Handler;

    .line 109
    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/process/ae;

    iget-object v2, p0, Lcom/keniu/security/process/ad;->a:Lcom/keniu/security/process/ProcessWidget;

    invoke-direct {v1, v2, p1}, Lcom/keniu/security/process/ae;-><init>(Lcom/keniu/security/process/ProcessWidget;Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->a()Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->a()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 116
    invoke-static {v2}, Lcom/keniu/security/process/ProcessWidget;->a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 120
    :cond_3
    invoke-static {v2}, Lcom/keniu/security/process/ProcessWidget;->a(Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0
.end method
