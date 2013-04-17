.class public final Lcom/tencent/feedback/common/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/feedback/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/32 v9, 0xea60

    const-wide/16 v4, 0x7530

    const/16 v6, 0xc

    const/4 v2, 0x3

    .line 68
    new-instance v0, Lcom/tencent/feedback/common/c;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/tencent/feedback/common/c;-><init>(III)V

    sput-object v0, Lcom/tencent/feedback/common/d;->a:Lcom/tencent/feedback/common/c;

    .line 69
    new-instance v0, Lcom/tencent/feedback/common/a;

    const/16 v1, 0x32

    const-wide/32 v2, 0x493e0

    move-wide v7, v4

    invoke-direct/range {v0 .. v8}, Lcom/tencent/feedback/common/a;-><init>(IJJIJ)V

    .line 70
    new-instance v0, Lcom/tencent/feedback/common/e;

    invoke-direct {v0, v6, v9, v10}, Lcom/tencent/feedback/common/e;-><init>(IJ)V

    .line 71
    new-instance v0, Lcom/tencent/feedback/common/b;

    const/4 v1, 0x7

    invoke-direct {v0, v9, v10, v1}, Lcom/tencent/feedback/common/b;-><init>(JI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Lcom/tencent/feedback/common/c;
    .locals 2

    .prologue
    .line 75
    sget-object v1, Lcom/tencent/feedback/common/d;->a:Lcom/tencent/feedback/common/c;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/d;->a:Lcom/tencent/feedback/common/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
