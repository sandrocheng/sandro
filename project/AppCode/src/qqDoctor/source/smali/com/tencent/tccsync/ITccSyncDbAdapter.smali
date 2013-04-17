.class public interface abstract Lcom/tencent/tccsync/ITccSyncDbAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;,
        Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;,
        Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    }
.end annotation


# virtual methods
.method public abstract add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<[B>;[I[I)I"
        }
    .end annotation
.end method

.method public abstract add([BLjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;"
        }
    .end annotation
.end method

.method public abstract del([B)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
.end method

.method public abstract getCurrObject(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;"
        }
    .end annotation
.end method

.method public abstract getCurrObjectInfo(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;"
        }
    .end annotation
.end method

.method public abstract getSyncDataType()Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
.end method

.method public abstract getSyncType()Lcom/tencent/tccsync/RemoteSync$SyncType;
.end method

.method public abstract hasEnoughStorageSpace(J)Z
.end method

.method public abstract isAtEnd()Z
.end method

.method public abstract isExist([B)Z
.end method

.method public abstract mdf([B[BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
.end method

.method public abstract seekFirst(Ljava/util/concurrent/atomic/AtomicInteger;)Z
.end method

.method public abstract seekNext()Z
.end method

.method public abstract setSyncType(Lcom/tencent/tccsync/RemoteSync$SyncType;)V
.end method

.method public abstract size()I
.end method

.method public abstract syncFreeze()Z
.end method

.method public abstract syncInit()Z
.end method
