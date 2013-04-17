.class final Lbvd;
.super Ljava/lang/Object;

# interfaces
.implements Lbui;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Lcom/google/android/mms/pdu/GenericPdu;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lbvd;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final a([B)V
    .locals 1

    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v0, p1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    iput-object v0, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lbvd;->a:Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v2, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    iput-object v1, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    iget-object v1, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    instance-of v1, v1, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget-object v2, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iput v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget-object v0, p0, Lbvd;->a:Landroid/content/Intent;

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iput v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;-><init>()V

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, p0, Lbvd;->b:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/NotificationInd;)V

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
