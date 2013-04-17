.class public interface abstract Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;
.super Ljava/lang/Object;


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final DEFAULT_NETWORK_FEATURE:Ljava/lang/String; = "enableMMS"


# virtual methods
.method public abstract beginMmsConnectivity(Ljava/lang/String;)I
.end method

.method public abstract retrieveMmsContent(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
.end method

.method public abstract sendAcknowledgeInd(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
.end method

.method public abstract sendNotifyRespInd(ILcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
.end method
