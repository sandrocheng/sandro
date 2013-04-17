.class public abstract Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/tencent/tmsecure/module/permission/IDummyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/permission/IDummyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

.field private d:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

.field private e:Landroid/os/IBinder;

.field private f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;-><init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lbtm;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Lbtm;->a(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    iput-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->e:Landroid/os/IBinder;

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->e:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final addPermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->addItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z

    :cond_0
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected execTransactForOwn(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->b:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->a:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Lbxk;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    :goto_0
    iput-object v3, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->a:Ljava/lang/String;

    invoke-static {}, Lbxk;->b()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p1, :pswitch_data_0

    move v1, v0

    :goto_1
    return v1

    :cond_1
    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->g:Z

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->d:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v4, v0, v2, v3}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->update(III)Z

    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_4
    invoke-static {p2}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->update(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z

    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->pingDummyService(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->addItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z

    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_7
    invoke-static {p2}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->removeItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z

    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final getInnerBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->e:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getPermissionRequestInfo(ILandroid/os/Parcel;Landroid/os/Parcel;I)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected getPermissionTable()Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    goto :goto_0
.end method

.method protected abstract getServiceName()Ljava/lang/String;
.end method

.method protected innerOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->e:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method protected abstract onHookHappen(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v3, 0x132b534

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->execTransactForOwn(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->getPermissionTable()Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->d:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    :goto_1
    iget-object v3, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->g:Z

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->getPermissionRequestInfo(ILandroid/os/Parcel;Landroid/os/Parcel;I)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget v6, v5, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {v4, v3, v6}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->getValue(II)I

    move-result v3

    const v4, 0xffff

    if-eq v3, v4, :cond_4

    iput v3, v5, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mValue:I

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IBinder;->pingBinder()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-interface {v0, v5}, Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;->onRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)I

    move-result v0

    :goto_3
    sparse-switch v3, :sswitch_data_0

    move v1, v2

    :goto_4
    :sswitch_0
    if-eqz v1, :cond_4

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->onHookHappen(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->d:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    iget-boolean v3, v3, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->g:Z

    goto :goto_2

    :sswitch_1
    move v1, v2

    goto :goto_4

    :sswitch_2
    if-eqz v0, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_4

    :cond_3
    move v0, v2

    goto :goto_5

    :sswitch_3
    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->innerOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method

.method public pingDummyService(ILjava/lang/String;)I
    .locals 2

    const/16 v1, 0xc

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->f:Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->pingDummyService(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x457

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 v0, 0x1e61

    goto :goto_0

    :cond_2
    if-le v1, p1, :cond_3

    const/16 v0, 0x22b8

    goto :goto_0

    :cond_3
    const/16 v0, 0x270f

    goto :goto_0
.end method

.method public final removePermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->removeItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z

    :cond_0
    return-void
.end method

.method public final setDummyServiceCallback(Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->d:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->g:Z

    return-void
.end method

.method public final setPermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    return-void
.end method

.method public final updatePermissionTable(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->update(III)Z

    :cond_0
    return-void
.end method

.method public final updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;->c:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;->update(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)Z

    :cond_0
    return-void
.end method
