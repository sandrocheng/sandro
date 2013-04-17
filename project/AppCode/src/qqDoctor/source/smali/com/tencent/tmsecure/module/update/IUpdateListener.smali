.class public interface abstract Lcom/tencent/tmsecure/module/update/IUpdateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;
    }
.end annotation


# virtual methods
.method public abstract onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
.end method

.method public abstract onUpdateCanceled()V
.end method

.method public abstract onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
.end method

.method public abstract onUpdateFinished()V
.end method

.method public abstract onUpdateStarted()V
.end method
