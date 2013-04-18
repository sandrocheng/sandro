.class public final Lcom/keniu/security/monitor/d;
.super Ljava/lang/Object;
.source "UnistLogCatMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static a:Lcom/keniu/security/monitor/d;


# instance fields
.field private b:Lcom/keniu/security/monitor/e;

.field private c:Landroid/app/ActivityManager;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/monitor/d;->a:Lcom/keniu/security/monitor/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/keniu/security/monitor/d;->b:Lcom/keniu/security/monitor/e;

    .line 25
    iput-object v0, p0, Lcom/keniu/security/monitor/d;->c:Landroid/app/ActivityManager;

    .line 26
    iput-object v0, p0, Lcom/keniu/security/monitor/d;->d:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/keniu/security/monitor/d;
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/keniu/security/monitor/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/monitor/d;->a:Lcom/keniu/security/monitor/d;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/keniu/security/monitor/d;

    invoke-direct {v1}, Lcom/keniu/security/monitor/d;-><init>()V

    sput-object v1, Lcom/keniu/security/monitor/d;->a:Lcom/keniu/security/monitor/d;

    .line 32
    :cond_0
    sget-object v1, Lcom/keniu/security/monitor/d;->a:Lcom/keniu/security/monitor/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    sget v0, Lcom/keniu/security/monitor/a;->p:I

    if-ne p1, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/keniu/security/monitor/d;->c()V

    .line 261
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_1
    sget v0, Lcom/keniu/security/monitor/a;->o:I

    if-ne p1, v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/keniu/security/monitor/d;->b()V

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lcom/keniu/security/monitor/d;->d:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 40
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    const v2, 0x4fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 42
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    const v2, 0x4fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->b:Lcom/keniu/security/monitor/e;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/monitor/d;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->c:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->d:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/keniu/security/monitor/d;->c:Landroid/app/ActivityManager;

    .line 52
    :cond_0
    new-instance v0, Lcom/keniu/security/monitor/e;

    invoke-direct {v0, p0}, Lcom/keniu/security/monitor/e;-><init>(Lcom/keniu/security/monitor/d;)V

    iput-object v0, p0, Lcom/keniu/security/monitor/d;->b:Lcom/keniu/security/monitor/e;

    .line 53
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->b:Lcom/keniu/security/monitor/e;

    invoke-virtual {v0}, Lcom/keniu/security/monitor/e;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->b:Lcom/keniu/security/monitor/e;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/keniu/security/monitor/d;->b:Lcom/keniu/security/monitor/e;

    invoke-virtual {v0}, Lcom/keniu/security/monitor/e;->a()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/monitor/d;->b:Lcom/keniu/security/monitor/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
