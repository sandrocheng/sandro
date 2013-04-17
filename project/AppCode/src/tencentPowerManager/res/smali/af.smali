.class public final Laf;
.super Ljava/lang/Object;


# static fields
.field private static b:Laf;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/android/internal/os/PowerProfile;

.field private d:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laf;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method private a(D)D
    .locals 8

    iget-object v0, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v1, "battery.capacity"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v1, "cpu.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_8

    iget-object v0, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v1, "cpu.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {}, Lan;->a()Lan;

    move-result-object v4

    invoke-virtual {v4}, Lan;->f()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    div-double/2addr v0, v4

    :cond_0
    const-wide v4, 0x4055400000000000L

    cmpg-double v4, v0, v4

    if-gez v4, :cond_7

    const-wide v0, 0x4055400000000000L

    :cond_1
    :goto_1
    const-wide v4, 0x40019999a0000000L

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    iget-object v2, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {}, Laq;->a()Laq;

    move-result-object v4

    invoke-virtual {v4}, Laq;->f()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4020

    div-double/2addr v2, v4

    add-double/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {}, Lap;->a()Lap;

    move-result-object v4

    invoke-virtual {v4}, Lap;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4038

    div-double/2addr v0, v6

    add-double/2addr v0, v4

    :cond_2
    invoke-static {}, Lap;->a()Lap;

    move-result-object v4

    invoke-virtual {v4}, Lap;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/high16 v4, 0x4024

    add-double/2addr v0, v4

    :cond_3
    invoke-static {}, Lah;->a()Lah;

    move-result-object v4

    invoke-virtual {v4}, Lah;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010

    div-double/2addr v4, v6

    add-double/2addr v0, v4

    :cond_4
    add-double/2addr v0, v2

    iget-object v2, p0, Laf;->a:Lcom/android/internal/os/PowerProfile;

    const-string v3, "battery.capacity"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    div-double v0, v2, v0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4049

    cmpl-double v2, v0, v2

    if-lez v2, :cond_5

    const-wide/high16 v0, 0x4049

    :cond_5
    :goto_2
    return-wide v0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const-wide v4, 0x405f400000000000L

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    const-wide v0, 0x405f400000000000L

    goto/16 :goto_1

    :cond_8
    const-wide v0, 0x404259999999999aL

    mul-double/2addr v0, p1

    goto :goto_2
.end method

.method public static a()Laf;
    .locals 3

    const-class v1, Laf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laf;->b:Laf;

    if-nez v0, :cond_0

    new-instance v0, Laf;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Laf;-><init>(Landroid/content/Context;)V

    sput-object v0, Laf;->b:Laf;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Laf;->b:Laf;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lbx;)V
    .locals 2

    const-class v1, Laf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laf;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->c()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lbx;->a(D)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 5

    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->c()D

    move-result-wide v1

    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    iget-wide v3, v0, Laf;->d:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_1

    sget-object v3, Laf;->c:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    sget-object v0, Laf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbx;

    invoke-interface {v0, v1, v2}, Lbx;->a(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    iput-wide v1, v0, Laf;->d:D

    return-void
.end method

.method public static b(Lbx;)Z
    .locals 2

    sget-object v1, Laf;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laf;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laf;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final c()D
    .locals 10

    const-wide v8, 0x3fe6666666666666L

    const-wide/high16 v2, 0x4059

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v4

    invoke-virtual {v4}, Lr;->h()D

    move-result-wide v0

    sget v5, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v6, 0xf

    if-ge v5, v6, :cond_0

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v0, v5

    :cond_0
    invoke-virtual {v4}, Lr;->y()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_2

    invoke-direct {p0, v0, v1}, Laf;->a(D)D

    move-result-wide v0

    sget v4, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    int-to-double v4, v4

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    :goto_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0

    :cond_2
    invoke-virtual {v4}, Lr;->z()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    sget v6, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v4, v0

    mul-double/2addr v4, v8

    invoke-direct {p0, v0, v1}, Laf;->a(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    sget v6, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    int-to-double v6, v6

    mul-double/2addr v0, v6

    div-double/2addr v0, v2

    add-double/2addr v0, v4

    goto :goto_0
.end method
