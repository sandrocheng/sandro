.class public final Lcom/keniu/security/process/s;
.super Ljava/lang/Object;
.source "ProcessScreenMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static f:Lcom/keniu/security/process/s;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/ActivityManager;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/s;->a:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "screenmonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keniu/security/process/s;->g:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/keniu/security/process/s;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/process/s;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keniu/security/process/s;->h:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic a(Landroid/os/Debug$MemoryInfo;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTotalPss"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/process/s;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/process/s;->b:Landroid/app/ActivityManager;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/process/s;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/process/s;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/process/s;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/process/s;->c:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/keniu/security/process/s;
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/keniu/security/process/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/process/s;->f:Lcom/keniu/security/process/s;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/keniu/security/process/s;

    invoke-direct {v1}, Lcom/keniu/security/process/s;-><init>()V

    sput-object v1, Lcom/keniu/security/process/s;->f:Lcom/keniu/security/process/s;

    .line 47
    :cond_0
    sget-object v1, Lcom/keniu/security/process/s;->f:Lcom/keniu/security/process/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/keniu/security/process/s;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/process/s;->d:Ljava/util/List;

    return-object p1
.end method

.method private a(IF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/keniu/security/process/s;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    const-string v1, "cleartime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v1, "clearmemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%1$.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v1, "killCount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/process/s;IF)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/process/s;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cleartime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "clearmemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%1$.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "killCount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Landroid/os/Debug$MemoryInfo;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTotalPss"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/process/s;)Landroid/app/ActivityManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/process/s;->b:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/process/s;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/process/s;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/process/s;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/process/s;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/process/s;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/process/s;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/keniu/security/process/s;->h:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/process/u;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/u;-><init>(Lcom/keniu/security/process/s;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->p:I

    const v2, 0x4fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->p:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 70
    iget-object v0, p0, Lcom/keniu/security/process/s;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/process/s;->f:Lcom/keniu/security/process/s;

    .line 74
    return-void
.end method
