.class public Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.super Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;


# static fields
.field public static final PROTOCOL_TYPE_MMS:I = 0x1

.field public static final PROTOCOL_TYPE_SMS:I = 0x0

.field public static final PROTOCOL_TYPE_WAPPUSH:I = 0x2

.field public static final SMS_TYPE_IN:I = 0x1

.field public static final SMS_TYPE_SENT:I = 0x2


# instance fields
.field public body:Ljava/lang/String;

.field public date:J

.field public mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

.field public protocolType:I

.field public transient raw:Landroid/content/Intent;

.field public read:I

.field public smstype:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>()V

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/MmsData;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v1, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/MmsData;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/NotificationInd;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget-wide v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    return-void
.end method

.method public static a([B)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public static a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)[B
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->smstype:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->writeToParcel(Landroid/os/Parcel;)V

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method


# virtual methods
.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->b()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Ljava/lang/String;J)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
