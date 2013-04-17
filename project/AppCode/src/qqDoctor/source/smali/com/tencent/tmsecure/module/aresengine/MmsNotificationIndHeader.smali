.class public Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;
.super Lcom/tencent/tmsecure/module/aresengine/MmsHeader;


# instance fields
.field public contentClass:I

.field public contentLocation:[B

.field public deliveryReport:I

.field public expiry:J

.field public messageSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->expiry:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subjectCharset:I

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageclass:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageType()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageType:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->expiry:J

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentClass()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getDeliveryReport()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMmsVersion()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->mmsVersion:I

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/NotificationInd;-><init>()V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->phonenumCharset:I

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subjectCharset:I

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->setCharacterSet(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_3
    :try_start_1
    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentClass(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    :cond_4
    :try_start_2
    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setDeliveryReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-wide v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->expiry:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/NotificationInd;->setExpiry(J)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageclass:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageclass:[B

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageClass([B)V

    :cond_5
    iget-wide v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageSize(J)V

    :try_start_3
    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageType:I

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageType(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->mmsVersion:I

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setMmsVersion(I)V
    :try_end_4
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setTransactionId([B)V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_5
.end method

.method final a(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->a(Landroid/os/Parcel;)V

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->expiry:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->messageSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->deliveryReport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
