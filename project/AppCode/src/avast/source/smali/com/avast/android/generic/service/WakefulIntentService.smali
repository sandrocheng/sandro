.class public abstract Lcom/avast/android/generic/service/WakefulIntentService;
.super Landroid/app/IntentService;
.source "WakefulIntentService.java"


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/avast/android/generic/service/WakefulIntentService;

    sput-object v0, Lcom/avast/android/generic/service/WakefulIntentService;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "WakefulIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/avast/android/generic/service/f;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/service/f;-><init>(Lcom/avast/android/generic/service/WakefulIntentService;)V

    iput-object v0, p0, Lcom/avast/android/generic/service/WakefulIntentService;->c:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    sget-object v1, Lcom/avast/android/generic/service/WakefulIntentService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/avast/android/generic/service/WakefulIntentService;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 97
    const/4 v2, 0x1

    const-string v3, "avast! WFIS"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/service/WakefulIntentService;->a:Landroid/os/PowerManager$WakeLock;

    .line 100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const-string v0, "Acquiring wakelock"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/avast/android/generic/service/WakefulIntentService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting service (context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", className "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 108
    if-nez v0, :cond_2

    .line 109
    const-string v0, "Can not start service (NULL)"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 112
    :goto_1
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 104
    :cond_1
    const-string v0, "NULL"

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "Service start initiated"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "res"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v1, "dur"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 119
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/avast/android/generic/service/WakefulIntentService;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent service started for intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/service/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/service/WakefulIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    sget-object v1, Lcom/avast/android/generic/service/WakefulIntentService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_1
    sget-object v0, Lcom/avast/android/generic/service/WakefulIntentService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 73
    const-string v0, "Releasing wakelock"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/avast/android/generic/service/WakefulIntentService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 81
    return-void

    .line 59
    :cond_0
    const-string v0, "NULL ACTION"

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/avast/android/generic/service/WakefulIntentService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_2
    sget-object v2, Lcom/avast/android/generic/service/WakefulIntentService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "Releasing wakelock"

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 74
    sget-object v2, Lcom/avast/android/generic/service/WakefulIntentService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    throw v0

    .line 79
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 77
    :cond_1
    :try_start_4
    const-string v2, "Wakelock reference is null"

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 79
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 77
    :cond_2
    :try_start_6
    const-string v0, "Wakelock reference is null"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1
.end method
