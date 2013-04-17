.class public interface abstract Lcom/tencent/tmsecure/module/network/INetworkInfoDao;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract getAll()Ljava/util/ArrayList;
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

.method public abstract getClosingDayForMonth()I
.end method

.method public abstract getLastNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;
.end method

.method public abstract getSystemTimeChange(Ljava/util/Date;)Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;
.end method

.method public abstract getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;
.end method

.method public abstract getTotalForMonth()J
.end method

.method public abstract getUsedForMonth()J
.end method

.method public abstract insert(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
.end method

.method public abstract resetToDayNetworkInfoEntity()V
.end method

.method public abstract setClosingDayForMonth(I)V
.end method

.method public abstract setLastNetDataEntity(Lcom/tencent/tmsecure/module/network/NetDataEntity;)V
.end method

.method public abstract setTodayNetworkInfoEntity(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
.end method

.method public abstract setTotalForMonth(J)V
.end method

.method public abstract setUsedForMonth(J)V
.end method
