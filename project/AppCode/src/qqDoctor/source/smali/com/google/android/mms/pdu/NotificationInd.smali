.class public Lcom/google/android/mms/pdu/NotificationInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "NotificationInd.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getContentClass()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getContentLocation()[B
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageClass()[B
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionId()[B
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentClass(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public setContentLocation([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 77
    return-void
.end method

.method public setDeliveryReport(I)V
    .locals 0
    .parameter "asInteger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 216
    return-void
.end method

.method public setExpiry(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 98
    return-void
.end method

.method public setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 119
    return-void
.end method

.method public setMessageClass([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 140
    return-void
.end method

.method public setMessageSize(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 159
    return-void
.end method

.method public setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 178
    return-void
.end method

.method public setTransactionId([B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 197
    return-void
.end method
