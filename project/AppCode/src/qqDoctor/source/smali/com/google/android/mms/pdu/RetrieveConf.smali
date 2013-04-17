.class public Lcom/google/android/mms/pdu/RetrieveConf;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "RetrieveConf.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 219
    return-void
.end method

.method public getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()[B
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageClass()[B
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageId()[B
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadReport()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getRetrieveStatus()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionId()[B
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentType([B)V
    .locals 0
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 53
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
    .line 71
    return-void
.end method

.method public setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 91
    return-void
.end method

.method public setMessageClass([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 111
    return-void
.end method

.method public setMessageId([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 129
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
    .line 147
    return-void
.end method

.method public setRetrieveStatus(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method

.method public setRetrieveText(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 183
    return-void
.end method

.method public setTransactionId([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 201
    return-void
.end method
