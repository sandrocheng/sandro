.class public abstract Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;
.super Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback$Stub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onHandleAslynRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onHandleSyncRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final onRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mValue:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mValue:I

    if-nez v1, :cond_2

    :cond_0
    new-instance v1, Lbxg;

    invoke-direct {v1, p0, p1}, Lbxg;-><init>(Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V

    invoke-virtual {v1}, Lbxg;->start()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mValue:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;->onHandleSyncRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
