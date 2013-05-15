.class final Lcom/avast/android/mobilesecurity/app/trafficinfo/d;
.super Landroid/os/Handler;
.source "NetworkStatsService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/d;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;

    .line 488
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 489
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 493
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/d;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;Landroid/content/Intent;)V

    .line 494
    return-void
.end method
