.class public Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.powermanager.levelrecorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/service/BatteryPowerRecordReciver;->a:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    sget v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-virtual {v0, v1}, Lr;->i(I)V

    :cond_0
    return-void
.end method
