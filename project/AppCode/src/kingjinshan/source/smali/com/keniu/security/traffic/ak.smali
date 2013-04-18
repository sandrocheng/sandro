.class final Lcom/keniu/security/traffic/ak;
.super Landroid/os/Handler;
.source "TrafficFireWallMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/keniu/security/traffic/ak;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/keniu/security/traffic/ak;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 361
    iget-object v0, p0, Lcom/keniu/security/traffic/ak;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->d(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    .line 362
    return-void
.end method
