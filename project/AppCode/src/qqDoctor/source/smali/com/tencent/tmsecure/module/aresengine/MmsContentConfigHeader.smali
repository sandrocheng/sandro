.class public Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;
.super Lcom/tencent/tmsecure/module/aresengine/MmsHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;
    }
.end annotation


# instance fields
.field public bccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

.field public ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

.field public contentType:[B

.field public deliveryReport:I

.field public deliverytime:I

.field public expiry:J

.field public messageId:[B

.field public messageSize:J

.field public priority:I

.field public readReport:I

.field public reportAllowed:I

.field public responseStatus:I

.field public responseText:Ljava/lang/String;

.field public retrieveStatus:I

.field public retrieveText:Ljava/lang/String;

.field public retrieveTextCharset:I

.field public toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 6

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->phonenumCharset:I

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageClass()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageType()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageType:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageId:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->contentType:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMmsVersion()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->priority:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getReadReport()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->readReport:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveStatus:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveText:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveTextCharset:I

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getDeliveryReport()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v0, v1

    new-array v0, v0, [Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_4

    :cond_3
    return-void

    :cond_4
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMessageType()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageType:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->contentType:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMmsVersion()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->priority:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->readReport:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->expiry:J

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageSize:J

    if-eqz v2, :cond_1

    array-length v0, v2

    new-array v0, v0, [Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    new-array v0, v0, [Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    move v0, v1

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    new-array v2, v2, [Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    iput-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    :goto_2
    array-length v2, v0

    if-lt v1, v2, :cond_6

    :cond_3
    return-void

    :cond_4
    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v5, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    invoke-direct {v5, v6, v3}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v5, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    invoke-direct {v5, v6, v3}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private a(J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_0
    iget-wide v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->expiry:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    :cond_1
    iget-wide v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageSize:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    :try_start_0
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageType:I

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->contentType:[B

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    :try_start_3
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->priority:I

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->readReport:I

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_4
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v3, v3

    if-lt v0, v3, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v3, v3

    if-lt v0, v3, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v0, :cond_5

    :goto_7
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v0, v0

    if-lt v1, v0, :cond_a

    :cond_5
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v3, v3, v0

    iget-object v4, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v4, :cond_7

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v4, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/SendReq;->addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v3, v3, v0

    iget-object v4, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v4, :cond_9

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v4, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/SendReq;->addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->bccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v3, :cond_b

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->addBcc(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private b(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>()V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->phonenumCharset:I

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_1
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/RetrieveConf;->setDate(J)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subjectCharset:I

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageclass:[B

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageClass([B)V

    :cond_3
    :try_start_1
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageType:I

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageType(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setTransactionId([B)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageId:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageId:[B

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageId([B)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->contentType:[B

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->contentType:[B

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setContentType([B)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    :try_start_3
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->mmsVersion:I

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setMmsVersion(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->priority:I

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setPriority(I)V
    :try_end_4
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->readReport:I

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setReadReport(I)V
    :try_end_5
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveStatus:I

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setRetrieveStatus(I)V
    :try_end_6
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->responseText:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveText:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->retrieveTextCharset:I

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setRetrieveText(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_7
    :try_start_7
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->deliveryReport:I

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setDeliveryReport(I)V
    :try_end_7
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v2, v2

    if-lt v0, v2, :cond_9

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_8

    :cond_9
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->ccAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    aget-object v2, v2, v0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    if-eqz v3, :cond_a

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/RetrieveConf;->addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method final a(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->messageType:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->b(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p2, p3}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->a(J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->toAddresses:[Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
