.class public Lcom/google/android/mms/pdu/SendReq;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "SendReq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public addBcc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 43
    return-void
.end method

.method public addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 70
    return-void
.end method

.method public getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()[B
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMessageClass()[B
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReadReport()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionId()[B
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    return-void
.end method

.method public setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 79
    return-void
.end method

.method public setContentType([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 97
    return-void
.end method

.method public setDeliveryReport(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public setExpiry(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 135
    return-void
.end method

.method public setMessageClass([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 174
    return-void
.end method

.method public setMessageSize(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 154
    return-void
.end method

.method public setReadReport(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 201
    return-void
.end method

.method public setTransactionId([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 219
    return-void
.end method
