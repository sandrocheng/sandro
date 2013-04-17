.class final Lbyb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/reflect/Method;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lbyb;->c:Landroid/content/Context;

    const-string v0, "com.android.internal.os.PowerProfile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAveragePower"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lbyb;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbyb;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()D
    .locals 7

    const-wide/16 v1, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "POWER_WIFI_ACTIVE"

    invoke-direct {p0, v3}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4010

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "POWER_BLUETOOTH_ACTIVE"

    invoke-direct {p0, v0}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method private a(Ljava/lang/String;)D
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbyb;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lbyb;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.internal.os.PowerProfile"

    invoke-static {v4, p1}, Ldi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCallRemainHours()D
    .locals 4

    const-string v0, "POWER_NONE"

    invoke-direct {p0, v0}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "POWER_RADIO_ACTIVE"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-string v2, "POWER_CPU_ACTIVE"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-direct {p0}, Lbyb;->a()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-string v2, "POWER_BATTERY_CAPACITY"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    div-double v0, v2, v0

    return-wide v0
.end method

.method public final getContinueRemainHours()D
    .locals 6

    const-string v0, "POWER_NONE"

    invoke-direct {p0, v0}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "POWER_CPU_ACTIVE"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-string v2, "POWER_SCREEN_FULL"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lbyb;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, La;->a(Landroid/content/ContentResolver;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-direct {p0}, Lbyb;->a()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-string v2, "POWER_BATTERY_CAPACITY"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    div-double v0, v2, v0

    return-wide v0
.end method

.method public final getMaxPowerUseHours()D
    .locals 6

    const-string v0, "POWER_NONE"

    invoke-direct {p0, v0}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "POWER_CPU_ACTIVE"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-string v2, "POWER_SCREEN_FULL"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lbyb;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, La;->a(Landroid/content/ContentResolver;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-string v2, "POWER_WIFI_ACTIVE"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-string v2, "POWER_BLUETOOTH_ACTIVE"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-string v2, "POWER_GPS_ON"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-string v2, "POWER_BATTERY_CAPACITY"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    div-double v0, v2, v0

    return-wide v0
.end method

.method public final getStayRemainHours()D
    .locals 6

    const-string v0, "POWER_NONE"

    invoke-direct {p0, v0}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "POWER_CPU_ACTIVE"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-string v2, "POWER_BATTERY_CAPACITY"

    invoke-direct {p0, v2}, Lbyb;->a(Ljava/lang/String;)D

    move-result-wide v2

    div-double v0, v2, v0

    return-wide v0
.end method
