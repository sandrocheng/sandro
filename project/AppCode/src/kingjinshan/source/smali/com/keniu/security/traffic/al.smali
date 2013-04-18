.class final Lcom/keniu/security/traffic/al;
.super Ljava/lang/Thread;
.source "TrafficFireWallMainActivity.java"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/keniu/security/traffic/al;->b:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iput-object p2, p0, Lcom/keniu/security/traffic/al;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/keniu/security/traffic/al;->b:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/al;->b:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    .line 368
    iget-object v0, p0, Lcom/keniu/security/traffic/al;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    return-void
.end method
