.class public Lcom/keniu/security/process/ProcessWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "ProcessWidget.java"


# static fields
.field private static a:Lcom/keniu/security/process/ad;

.field private static b:Landroid/os/Handler;

.field private static c:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/keniu/security/process/ProcessWidget;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/keniu/security/process/ProcessWidget;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    sget-object v0, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "widget_update"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    sput-object v0, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    :cond_0
    sget-object v0, Lcom/keniu/security/process/ProcessWidget;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    sput-object v0, Lcom/keniu/security/process/ProcessWidget;->b:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/process/ae;

    invoke-direct {v1, p0, p1}, Lcom/keniu/security/process/ae;-><init>(Lcom/keniu/security/process/ProcessWidget;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    :cond_1
    sget-object v0, Lcom/keniu/security/process/ProcessWidget;->a:Lcom/keniu/security/process/ad;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/keniu/security/process/ad;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/ad;-><init>(Lcom/keniu/security/process/ProcessWidget;)V

    sput-object v1, Lcom/keniu/security/process/ProcessWidget;->a:Lcom/keniu/security/process/ad;

    .line 67
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/process/ProcessWidget;->a:Lcom/keniu/security/process/ad;

    invoke-virtual {v1, v2, v0}, Lcom/keniu/security/MoSecurityApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    :cond_2
    :goto_0
    return-void

    .line 71
    :cond_3
    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 75
    sget-object v0, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 76
    sput-object v2, Lcom/keniu/security/process/ProcessWidget;->c:Landroid/os/HandlerThread;

    .line 82
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/process/ProcessWidget;->a:Lcom/keniu/security/process/ad;

    invoke-virtual {v0, v1}, Lcom/keniu/security/MoSecurityApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    sput-object v2, Lcom/keniu/security/process/ProcessWidget;->b:Landroid/os/Handler;

    .line 87
    sput-object v2, Lcom/keniu/security/process/ProcessWidget;->a:Lcom/keniu/security/process/ad;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
