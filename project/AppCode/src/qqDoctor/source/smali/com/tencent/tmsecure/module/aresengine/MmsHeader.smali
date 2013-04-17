.class public Lcom/tencent/tmsecure/module/aresengine/MmsHeader;
.super Lcom/tencent/tmsecure/common/BaseEntity;


# instance fields
.field public messageType:I

.field public messageclass:[B

.field public mmsVersion:I

.field public phonenumCharset:I

.field public subject:Ljava/lang/String;

.field public subjectCharset:I

.field public transactionId:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->phonenumCharset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->subject:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->subjectCharset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->messageclass:[B

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->messageclass:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->messageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->transactionId:[B

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->transactionId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->mmsVersion:I

    return-void
.end method


# virtual methods
.method a(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->phonenumCharset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->subjectCharset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->messageclass:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->messageclass:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->messageclass:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->messageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->transactionId:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->transactionId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->transactionId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsHeader;->mmsVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
