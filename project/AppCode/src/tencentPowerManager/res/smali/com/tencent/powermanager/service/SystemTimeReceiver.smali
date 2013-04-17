.class public Lcom/tencent/powermanager/service/SystemTimeReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->d:Z

    return-void
.end method
