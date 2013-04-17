.class public final Lgraystrategy/Attachment;
.super Lcom/qq/taf/jce/JceStruct;
.source "Attachment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_data:[B


# instance fields
.field public createTime:J

.field public data:[B

.field public fileName:Ljava/lang/String;

.field public type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lgraystrategy/Attachment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lgraystrategy/Attachment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-byte v0, p0, Lgraystrategy/Attachment;->type:B

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lgraystrategy/Attachment;->data:[B

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgraystrategy/Attachment;->createTime:J

    .line 71
    iget-byte v0, p0, Lgraystrategy/Attachment;->type:B

    invoke-virtual {p0, v0}, Lgraystrategy/Attachment;->setType(B)V

    .line 72
    iget-object v0, p0, Lgraystrategy/Attachment;->data:[B

    invoke-virtual {p0, v0}, Lgraystrategy/Attachment;->setData([B)V

    .line 73
    iget-object v0, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/Attachment;->setFileName(Ljava/lang/String;)V

    .line 74
    iget-wide v0, p0, Lgraystrategy/Attachment;->createTime:J

    invoke-virtual {p0, v0, v1}, Lgraystrategy/Attachment;->setCreateTime(J)V

    .line 75
    return-void
.end method

.method public constructor <init>(B[BLjava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-byte v0, p0, Lgraystrategy/Attachment;->type:B

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lgraystrategy/Attachment;->data:[B

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgraystrategy/Attachment;->createTime:J

    .line 79
    invoke-virtual {p0, p1}, Lgraystrategy/Attachment;->setType(B)V

    .line 80
    invoke-virtual {p0, p2}, Lgraystrategy/Attachment;->setData([B)V

    .line 81
    invoke-virtual {p0, p3}, Lgraystrategy/Attachment;->setFileName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p4, p5}, Lgraystrategy/Attachment;->setCreateTime(J)V

    .line 83
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "graystrategy.Attachment"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :cond_0
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    sget-boolean v1, Lgraystrategy/Attachment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 160
    iget-byte v1, p0, Lgraystrategy/Attachment;->type:B

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 161
    iget-object v1, p0, Lgraystrategy/Attachment;->data:[B

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 162
    iget-object v1, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 163
    iget-wide v1, p0, Lgraystrategy/Attachment;->createTime:J

    const-string v3, "createTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 164
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    check-cast p1, Lgraystrategy/Attachment;

    .line 94
    iget-byte v1, p0, Lgraystrategy/Attachment;->type:B

    iget-byte v2, p1, Lgraystrategy/Attachment;->type:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lgraystrategy/Attachment;->data:[B

    iget-object v2, p1, Lgraystrategy/Attachment;->data:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-wide v1, p0, Lgraystrategy/Attachment;->createTime:J

    iget-wide v3, p1, Lgraystrategy/Attachment;->createTime:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "graystrategy.Attachment"

    return-object v0
.end method

.method public final getCreateTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lgraystrategy/Attachment;->createTime:J

    return-wide v0
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lgraystrategy/Attachment;->data:[B

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()B
    .locals 1

    .prologue
    .line 31
    iget-byte v0, p0, Lgraystrategy/Attachment;->type:B

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 141
    iget-byte v0, p0, Lgraystrategy/Attachment;->type:B

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lgraystrategy/Attachment;->type:B

    .line 143
    sget-object v0, Lgraystrategy/Attachment;->cache_data:[B

    if-nez v0, :cond_0

    .line 145
    new-array v0, v1, [B

    .line 146
    sput-object v0, Lgraystrategy/Attachment;->cache_data:[B

    aput-byte v3, v0, v3

    .line 149
    :cond_0
    sget-object v0, Lgraystrategy/Attachment;->cache_data:[B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/Attachment;->data:[B

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    .line 153
    iget-wide v0, p0, Lgraystrategy/Attachment;->createTime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lgraystrategy/Attachment;->createTime:J

    .line 155
    return-void
.end method

.method public final setCreateTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-wide p1, p0, Lgraystrategy/Attachment;->createTime:J

    .line 67
    return-void
.end method

.method public final setData([B)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lgraystrategy/Attachment;->data:[B

    .line 47
    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public final setType(B)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-byte p1, p0, Lgraystrategy/Attachment;->type:B

    .line 37
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-byte v0, p0, Lgraystrategy/Attachment;->type:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 129
    iget-object v0, p0, Lgraystrategy/Attachment;->data:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 130
    iget-object v0, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lgraystrategy/Attachment;->fileName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 134
    :cond_0
    iget-wide v0, p0, Lgraystrategy/Attachment;->createTime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 135
    return-void
.end method
