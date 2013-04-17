.class public final Lcom/tencent/feedback/common/f;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/common/f$c;,
        Lcom/tencent/feedback/common/f$b;,
        Lcom/tencent/feedback/common/f$d;,
        Lcom/tencent/feedback/common/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/feedback/common/f$a;

.field private static b:Lcom/tencent/feedback/common/a;

.field private static c:Lcom/tencent/feedback/common/f$d;

.field private static d:Lcom/tencent/feedback/common/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide/16 v4, 0x7530

    const/16 v6, 0xc

    const/4 v13, 0x1

    const/16 v7, 0xa

    const-wide/32 v2, 0xea60

    .line 101
    new-instance v0, Lcom/tencent/feedback/common/f$a;

    const/4 v1, 0x3

    invoke-direct {v0, v7, v7, v1, v7}, Lcom/tencent/feedback/common/f$a;-><init>(IIII)V

    sput-object v0, Lcom/tencent/feedback/common/f;->a:Lcom/tencent/feedback/common/f$a;

    .line 102
    new-instance v0, Lcom/tencent/feedback/common/a;

    const/16 v1, 0x32

    const-wide/32 v9, 0x200000

    move-wide v7, v4

    invoke-direct/range {v0 .. v10}, Lcom/tencent/feedback/common/a;-><init>(IJJIJJ)V

    sput-object v0, Lcom/tencent/feedback/common/f;->b:Lcom/tencent/feedback/common/a;

    .line 103
    new-instance v0, Lcom/tencent/feedback/common/f$d;

    invoke-direct {v0, v6, v2, v3}, Lcom/tencent/feedback/common/f$d;-><init>(IJ)V

    sput-object v0, Lcom/tencent/feedback/common/f;->c:Lcom/tencent/feedback/common/f$d;

    .line 104
    new-instance v0, Lcom/tencent/feedback/common/b;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/feedback/common/b;-><init>(JI)V

    .line 105
    new-instance v4, Lcom/tencent/feedback/common/f$b;

    const-wide/32 v5, 0x1b77400

    move-wide v7, v2

    move v9, v13

    move-wide v10, v2

    move v12, v13

    invoke-direct/range {v4 .. v12}, Lcom/tencent/feedback/common/f$b;-><init>(JJIJI)V

    .line 106
    new-instance v0, Lcom/tencent/feedback/common/f$c;

    const-wide/32 v1, 0x1499700

    invoke-direct {v0, v1, v2}, Lcom/tencent/feedback/common/f$c;-><init>(J)V

    sput-object v0, Lcom/tencent/feedback/common/f;->d:Lcom/tencent/feedback/common/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static a()Lcom/tencent/feedback/common/f$a;
    .locals 2

    .prologue
    .line 110
    sget-object v1, Lcom/tencent/feedback/common/f;->a:Lcom/tencent/feedback/common/f$a;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/f;->a:Lcom/tencent/feedback/common/f$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/tencent/feedback/common/a;
    .locals 2

    .prologue
    .line 118
    sget-object v1, Lcom/tencent/feedback/common/f;->b:Lcom/tencent/feedback/common/a;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/f;->b:Lcom/tencent/feedback/common/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Lcom/tencent/feedback/common/f$d;
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lcom/tencent/feedback/common/f;->c:Lcom/tencent/feedback/common/f$d;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/f;->c:Lcom/tencent/feedback/common/f$d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()Lcom/tencent/feedback/common/f$c;
    .locals 2

    .prologue
    .line 150
    sget-object v1, Lcom/tencent/feedback/common/f;->d:Lcom/tencent/feedback/common/f$c;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/f;->d:Lcom/tencent/feedback/common/f$c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
