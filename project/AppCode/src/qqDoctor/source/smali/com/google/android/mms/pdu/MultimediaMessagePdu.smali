.class public Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    return-void
.end method


# virtual methods
.method public addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 112
    return-void
.end method

.method public getBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBody(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 41
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 94
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 59
    return-void
.end method
