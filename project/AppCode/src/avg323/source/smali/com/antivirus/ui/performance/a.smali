.class public Lcom/antivirus/ui/performance/a;
.super Lcom/avg/tuneup/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected F()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/storage/StorageActivity;

    const-class v1, Lcom/avg/tuneup/storage/b;

    const-string v2, "StorageFragment"

    const-string v3, "storage_usage"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/antivirus/ui/performance/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected G()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    const-class v1, Lcom/avg/tuneup/traffic/y;

    const-string v2, "TrafficMeterFragment"

    const-string v3, "data_usage"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/antivirus/ui/performance/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected H()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/battery/BatteryStateActivity;

    const-class v1, Lcom/avg/tuneup/battery/r;

    const-string v2, "BatteryStateFragment"

    const-string v3, "battery_consumption"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/antivirus/ui/performance/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected I()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;

    const-class v1, Lcom/avg/tuneup/taskkiller/d;

    const-string v2, "TaskKillerFragment"

    const-string v3, "task_killer"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/antivirus/ui/performance/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method
