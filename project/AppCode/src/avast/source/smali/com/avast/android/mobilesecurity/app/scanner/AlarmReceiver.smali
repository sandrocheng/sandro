.class public Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "start"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-static {p1, p2}, Lcom/avast/android/generic/util/ak;->a(II)J

    move-result-wide v0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting next automatic scan to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 39
    new-instance v3, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;

    invoke-direct {v3, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 41
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v0, v4

    move-wide v1, v0

    .line 44
    :goto_0
    const/high16 v0, 0x1000

    invoke-static {p0, v6, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 45
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 46
    return-void

    :cond_0
    move-wide v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 50
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 54
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aO()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aP()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    .line 57
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aQ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-static {}, Lcom/avast/android/generic/d;->a()I

    move-result v1

    .line 63
    invoke-static {v1}, Lcom/avast/android/generic/d;->a(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aR()I

    move-result v0

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 64
    const/16 v0, 0x8

    invoke-static {p1, v3, v2, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanService;->a(Landroid/content/Context;ZZI)V

    .line 68
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 54
    goto :goto_0
.end method
