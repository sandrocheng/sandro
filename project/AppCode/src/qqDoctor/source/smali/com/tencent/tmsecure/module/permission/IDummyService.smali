.class public interface abstract Lcom/tencent/tmsecure/module/permission/IDummyService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/permission/IDummyService$Proxy;,
        Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addPermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pingDummyService(ILjava/lang/String;)I
.end method

.method public abstract removePermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDummyServiceCallback(Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePermissionTable(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
