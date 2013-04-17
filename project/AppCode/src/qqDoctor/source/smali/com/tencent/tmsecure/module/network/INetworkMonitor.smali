.class public interface abstract Lcom/tencent/tmsecure/module/network/INetworkMonitor;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I
.end method

.method public abstract clearAllLogs()V
.end method

.method public abstract getAllLogs()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefreshState()Z
.end method

.method public abstract notifyConfigChange()V
.end method

.method public abstract removeCallback(I)Z
.end method

.method public abstract removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z
.end method

.method public abstract setRefreshState(Z)V
.end method
