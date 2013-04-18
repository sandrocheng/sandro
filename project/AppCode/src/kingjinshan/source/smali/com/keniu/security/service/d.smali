.class public final Lcom/keniu/security/service/d;
.super Ljava/lang/Object;
.source "ReportServiceMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final a:Ljava/lang/String; = "ReportServiceMonitor"

.field private static b:Z

.field private static c:Lcom/keniu/security/service/d;

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/service/d;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    .line 35
    const-class v0, Lcom/keniu/security/service/d;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/keniu/security/service/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 39
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/keniu/security/service/d;->b:Z

    .line 41
    sget-object v1, Lcom/keniu/security/service/d;->c:Lcom/keniu/security/service/d;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/keniu/security/service/d;

    invoke-direct {v1}, Lcom/keniu/security/service/d;-><init>()V

    sput-object v1, Lcom/keniu/security/service/d;->c:Lcom/keniu/security/service/d;

    .line 43
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 44
    sget v2, Lcom/keniu/security/monitor/a;->n:I

    sget-object v3, Lcom/keniu/security/service/d;->c:Lcom/keniu/security/service/d;

    const v4, 0x4fffffff

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    sget v0, Lcom/keniu/security/monitor/a;->n:I

    if-ne p1, v0, :cond_0

    .line 23
    const-string v0, "ReportServiceMonitor"

    const-string v1, "monitorNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/keniu/security/service/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/keniu/security/service/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;)V

    .line 31
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
