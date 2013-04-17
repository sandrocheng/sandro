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


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.tmsecure.common.ISDKClient"

.field public static final TRANSACTION_SENDMESSAGE:I = 0x132b535


# virtual methods
.method public abstract sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
