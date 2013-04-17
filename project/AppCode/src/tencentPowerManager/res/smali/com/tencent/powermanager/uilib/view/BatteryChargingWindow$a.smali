.class final Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->d(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)V

    :cond_0
    return-void
.end method
