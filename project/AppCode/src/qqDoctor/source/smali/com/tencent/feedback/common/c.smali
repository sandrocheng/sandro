.class public abstract Lcom/tencent/feedback/common/c;
.super Ljava/lang/Object;
.source "AsyncTaskHandlerAbs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/common/c$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Lcom/tencent/feedback/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/feedback/common/c;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/feedback/common/c;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/tencent/feedback/common/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/c;->b:Lcom/tencent/feedback/common/c;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/tencent/feedback/common/c$a;

    invoke-direct {v0}, Lcom/tencent/feedback/common/c$a;-><init>()V

    sput-object v0, Lcom/tencent/feedback/common/c;->b:Lcom/tencent/feedback/common/c;

    .line 50
    :cond_0
    sget-object v0, Lcom/tencent/feedback/common/c;->b:Lcom/tencent/feedback/common/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a(ILjava/lang/Runnable;JJ)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;J)V
.end method
