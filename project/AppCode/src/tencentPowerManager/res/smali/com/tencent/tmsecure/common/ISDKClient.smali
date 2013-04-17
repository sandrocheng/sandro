.class public interface abstract Lcom/tencent/tmsecure/common/ISDKClient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/common/ISDKClient$Proxy;,
        Lcom/tencent/tmsecure/common/ISDKClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
