.class interface abstract Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
