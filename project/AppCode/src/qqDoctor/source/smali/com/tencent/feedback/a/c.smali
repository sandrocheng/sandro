.class public abstract Lcom/tencent/feedback/a/c;
.super Ljava/lang/Object;
.source "CountProccessAbs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/a/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/feedback/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/a/c;->a:Lcom/tencent/feedback/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;
    .locals 2
    .parameter

    .prologue
    .line 42
    const-class v1, Lcom/tencent/feedback/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/a/c;->a:Lcom/tencent/feedback/a/c;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 44
    new-instance v0, Lcom/tencent/feedback/a/c$a;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/a/c$a;-><init>(Landroid/content/Context;)V

    .line 45
    sput-object v0, Lcom/tencent/feedback/a/c;->a:Lcom/tencent/feedback/a/c;

    invoke-virtual {v0}, Lcom/tencent/feedback/a/c;->a()V

    .line 47
    :cond_0
    sget-object v0, Lcom/tencent/feedback/a/c;->a:Lcom/tencent/feedback/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/tencent/feedback/a/c;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    const-class v1, Lcom/tencent/feedback/a/c;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CountProccessAbs setInstance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/tencent/feedback/a/c;->a:Lcom/tencent/feedback/a/c;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/tencent/feedback/a/c;->a:Lcom/tencent/feedback/a/c;

    invoke-virtual {v0}, Lcom/tencent/feedback/a/c;->b()V

    .line 55
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/a/c;->a:Lcom/tencent/feedback/a/c;

    .line 56
    const-string v0, "CountProccessAbs setInstance end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;
.end method

.method public abstract a(I)Ljava/util/List;
.end method

.method public abstract a()V
.end method

.method public abstract a(Lcom/tencent/feedback/a/a;)V
.end method

.method public abstract a(Ljava/lang/String;[JZZ)V
.end method

.method public abstract b()V
.end method
