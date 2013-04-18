.class public Lcom/keniu/security/monitor/MonitorNetworkConnectivity;
.super Landroid/content/BroadcastReceiver;
.source "MonitorNetworkConnectivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/keniu/security/monitor/MonitorNetworkConnectivity;

    invoke-direct {v1}, Lcom/keniu/security/monitor/MonitorNetworkConnectivity;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 18
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 20
    sget v0, Lcom/keniu/security/monitor/a;->n:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 24
    sget v0, Lcom/keniu/security/monitor/a;->o:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    .line 26
    :cond_2
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    sget v0, Lcom/keniu/security/monitor/a;->p:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0
.end method
