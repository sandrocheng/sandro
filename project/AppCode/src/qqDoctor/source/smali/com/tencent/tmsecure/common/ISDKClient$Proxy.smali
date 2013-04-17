.class public Lcom/tencent/tmsecure/common/ISDKClient$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/common/ISDKClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/common/ISDKClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->a:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->b:I

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecure/common/ISDKClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.tencent.tmsecure.common.ISDKClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/tmsecure/common/ISDKClient;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/tmsecure/common/ISDKClient;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;

    iget-object v1, p0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->a:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->a:Landroid/os/IBinder;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->b:I

    iget v2, p1, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.tencent.tmsecure.common.ISDKClient"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->b:I

    return v0
.end method

.method public sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v0, "com.tencent.tmsecure.common.ISDKClient"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->a:Landroid/os/IBinder;

    const v3, 0x132b535

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    const-class v0, Lcom/tencent/tmsecure/common/DataEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/DataEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
