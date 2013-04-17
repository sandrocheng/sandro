.class public Lcom/tencent/tmsecure/module/aresengine/MmsData;
.super Lcom/tencent/tmsecure/common/BaseEntity;


# instance fields
.field public mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

.field public mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

.field public mmsParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/MmsPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    new-instance v3, Lcom/tencent/tmsecure/module/aresengine/MmsPart;

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/tmsecure/module/aresengine/MmsPart;-><init>(Lcom/google/android/mms/pdu/PduPart;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->a(Ljava/lang/String;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->a(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->a()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_1
.end method

.method public final a(Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;-><init>(Lcom/google/android/mms/pdu/NotificationInd;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    return-void
.end method

.method public final a(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;-><init>(Lcom/google/android/mms/pdu/RetrieveConf;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/PduBody;)V

    return-void
.end method

.method final a(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;-><init>(Lcom/google/android/mms/pdu/SendReq;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/PduBody;)V

    return-void
.end method

.method final a()[B
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    :cond_0
    return-object v0
.end method

.method final b()[B
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->transactionId:[B

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->transactionId:[B

    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->a(Landroid/os/Parcel;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
