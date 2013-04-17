.class public interface abstract Lcom/tencent/tmsecure/module/update/ICheckListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onCheckCanceled()V
.end method

.method public abstract onCheckEvent(I)V
.end method

.method public abstract onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
.end method

.method public abstract onCheckStarted()V
.end method
