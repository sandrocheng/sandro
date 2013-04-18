.class final Lcom/keniu/security/traffic/bq;
.super Landroid/content/BroadcastReceiver;
.source "TrafficMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/traffic/bq;-><init>(Lcom/keniu/security/traffic/TrafficMainActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/keniu/security/traffic/bq;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/keniu/security/traffic/bq;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateTrafficMainData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/keniu/security/traffic/bq;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->b(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    goto :goto_0
.end method
