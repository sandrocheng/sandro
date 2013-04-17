.class public Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbtl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbtl;

    const-string v1, "networkload"

    invoke-direct {v0, v1}, Lbtl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->a:Lbtl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSelfMobileDownloadBytes()J
    .locals 5

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->a:Lbtl;

    const-string v2, "mobile_download_bytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lbtl;->b(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSelfMobileUploadBytes()J
    .locals 5

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->a:Lbtl;

    const-string v2, "mobile_upload_bytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lbtl;->b(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateSelfMobileDownloadBytes(J)V
    .locals 3

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->a:Lbtl;

    const-string v2, "mobile_download_bytes"

    invoke-virtual {v0, v2, p0, p1}, Lbtl;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateSelfMobileUploadBytes(J)V
    .locals 3

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->a:Lbtl;

    const-string v2, "mobile_upload_bytes"

    invoke-virtual {v0, v2, p0, p1}, Lbtl;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
