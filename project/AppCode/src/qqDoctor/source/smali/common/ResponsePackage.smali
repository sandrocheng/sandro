.class public final Lcommon/ResponsePackage;
.super Lcom/qq/taf/jce/JceStruct;
.source "ResponsePackage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static h:[B

.field private static synthetic i:Z


# instance fields
.field public a:B

.field private b:I

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:B

.field private f:B

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcommon/ResponsePackage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcommon/ResponsePackage;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-byte v1, p0, Lcommon/ResponsePackage;->a:B

    .line 23
    iput v1, p0, Lcommon/ResponsePackage;->b:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcommon/ResponsePackage;->c:[B

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    .line 29
    iput-byte v1, p0, Lcommon/ResponsePackage;->e:B

    .line 31
    iput-byte v1, p0, Lcommon/ResponsePackage;->f:B

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcommon/ResponsePackage;->g:J

    .line 107
    iget-byte v0, p0, Lcommon/ResponsePackage;->a:B

    iput-byte v0, p0, Lcommon/ResponsePackage;->a:B

    .line 108
    iget v0, p0, Lcommon/ResponsePackage;->b:I

    iput v0, p0, Lcommon/ResponsePackage;->b:I

    .line 109
    iget-object v0, p0, Lcommon/ResponsePackage;->c:[B

    iput-object v0, p0, Lcommon/ResponsePackage;->c:[B

    .line 110
    iget-object v0, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    iput-object v0, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    .line 111
    iget-byte v0, p0, Lcommon/ResponsePackage;->e:B

    iput-byte v0, p0, Lcommon/ResponsePackage;->e:B

    .line 112
    iget-byte v0, p0, Lcommon/ResponsePackage;->f:B

    iput-byte v0, p0, Lcommon/ResponsePackage;->f:B

    .line 113
    iget-wide v0, p0, Lcommon/ResponsePackage;->g:J

    iput-wide v0, p0, Lcommon/ResponsePackage;->g:J

    .line 114
    return-void
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 37
    iget-byte v0, p0, Lcommon/ResponsePackage;->a:B

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcommon/ResponsePackage;->b:I

    return v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcommon/ResponsePackage;->c:[B

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 162
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :cond_0
    return-object v0

    .line 166
    :catch_0
    move-exception v1

    sget-boolean v1, Lcommon/ResponsePackage;->i:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 211
    iget-byte v1, p0, Lcommon/ResponsePackage;->a:B

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 212
    iget v1, p0, Lcommon/ResponsePackage;->b:I

    const-string v2, "cmd"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 213
    iget-object v1, p0, Lcommon/ResponsePackage;->c:[B

    const-string v2, "sBuffer"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 214
    iget-object v1, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    const-string v2, "srcGatewayIp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 215
    iget-byte v1, p0, Lcommon/ResponsePackage;->e:B

    const-string v2, "encryType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 216
    iget-byte v1, p0, Lcommon/ResponsePackage;->f:B

    const-string v2, "zipType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 217
    iget-wide v1, p0, Lcommon/ResponsePackage;->g:J

    const-string v3, "serverTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 218
    return-void
.end method

.method public final e()B
    .locals 1

    .prologue
    .line 77
    iget-byte v0, p0, Lcommon/ResponsePackage;->e:B

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    check-cast p1, Lcommon/ResponsePackage;

    .line 136
    iget-byte v1, p0, Lcommon/ResponsePackage;->a:B

    iget-byte v2, p1, Lcommon/ResponsePackage;->a:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget v1, p0, Lcommon/ResponsePackage;->b:I

    iget v2, p1, Lcommon/ResponsePackage;->b:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcommon/ResponsePackage;->c:[B

    iget-object v2, p1, Lcommon/ResponsePackage;->c:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    iget-object v2, p1, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-byte v1, p0, Lcommon/ResponsePackage;->e:B

    iget-byte v2, p1, Lcommon/ResponsePackage;->e:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-byte v1, p0, Lcommon/ResponsePackage;->f:B

    iget-byte v2, p1, Lcommon/ResponsePackage;->f:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-wide v1, p0, Lcommon/ResponsePackage;->g:J

    iget-wide v3, p1, Lcommon/ResponsePackage;->g:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()B
    .locals 1

    .prologue
    .line 87
    iget-byte v0, p0, Lcommon/ResponsePackage;->f:B

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcommon/ResponsePackage;->g:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    iget-byte v0, p0, Lcommon/ResponsePackage;->a:B

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/ResponsePackage;->a:B

    .line 188
    iget v0, p0, Lcommon/ResponsePackage;->b:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcommon/ResponsePackage;->b:I

    .line 190
    sget-object v0, Lcommon/ResponsePackage;->h:[B

    if-nez v0, :cond_0

    .line 192
    new-array v0, v2, [B

    .line 193
    sput-object v0, Lcommon/ResponsePackage;->h:[B

    aput-byte v3, v0, v3

    .line 196
    :cond_0
    sget-object v0, Lcommon/ResponsePackage;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcommon/ResponsePackage;->c:[B

    .line 198
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    .line 200
    iget-byte v0, p0, Lcommon/ResponsePackage;->e:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/ResponsePackage;->e:B

    .line 202
    iget-byte v0, p0, Lcommon/ResponsePackage;->f:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/ResponsePackage;->f:B

    .line 204
    iget-wide v0, p0, Lcommon/ResponsePackage;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcommon/ResponsePackage;->g:J

    .line 206
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    iget-byte v0, p0, Lcommon/ResponsePackage;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 174
    iget v0, p0, Lcommon/ResponsePackage;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 175
    iget-object v0, p0, Lcommon/ResponsePackage;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 176
    iget-object v0, p0, Lcommon/ResponsePackage;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 177
    iget-byte v0, p0, Lcommon/ResponsePackage;->e:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 178
    iget-byte v0, p0, Lcommon/ResponsePackage;->f:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 179
    iget-wide v0, p0, Lcommon/ResponsePackage;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 180
    return-void
.end method
