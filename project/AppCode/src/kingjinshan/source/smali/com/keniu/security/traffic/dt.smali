.class final Lcom/keniu/security/traffic/dt;
.super Ljava/lang/Object;
.source "TrafficXuanFuChuangStateReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/keniu/security/traffic/dt;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x41f0

    .line 259
    iget-object v0, p0, Lcom/keniu/security/traffic/dt;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/dt;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/dt;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a()V

    .line 264
    iget-object v0, p0, Lcom/keniu/security/traffic/dt;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    goto :goto_0
.end method
