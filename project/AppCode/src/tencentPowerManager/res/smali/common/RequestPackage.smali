.class public final Lcommon/RequestPackage;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field private static m:[B

.field private static synthetic n:Z


# instance fields
.field private a:B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:[B

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:B

.field private k:B

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcommon/RequestPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcommon/RequestPackage;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    iput-byte v1, p0, Lcommon/RequestPackage;->a:B

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcommon/RequestPackage;->f:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcommon/RequestPackage;->g:[B

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 34
    iput-byte v1, p0, Lcommon/RequestPackage;->j:B

    .line 36
    iput-byte v1, p0, Lcommon/RequestPackage;->k:B

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 162
    iget-byte v0, p0, Lcommon/RequestPackage;->a:B

    iput-byte v0, p0, Lcommon/RequestPackage;->a:B

    .line 163
    iget-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 167
    iget v0, p0, Lcommon/RequestPackage;->f:I

    iput v0, p0, Lcommon/RequestPackage;->f:I

    .line 168
    iget-object v0, p0, Lcommon/RequestPackage;->g:[B

    iput-object v0, p0, Lcommon/RequestPackage;->g:[B

    .line 169
    iget-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 171
    iget-byte v0, p0, Lcommon/RequestPackage;->j:B

    iput-byte v0, p0, Lcommon/RequestPackage;->j:B

    .line 172
    iget-byte v0, p0, Lcommon/RequestPackage;->k:B

    iput-byte v0, p0, Lcommon/RequestPackage;->k:B

    .line 173
    iget-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 174
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-byte p1, p0, Lcommon/RequestPackage;->a:B

    .line 48
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcommon/RequestPackage;->f:I

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final a([B)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcommon/RequestPackage;->g:[B

    .line 108
    return-void
.end method

.method public final b(B)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-byte p1, p0, Lcommon/RequestPackage;->j:B

    .line 138
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final c(B)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-byte p1, p0, Lcommon/RequestPackage;->k:B

    .line 148
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 215
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :cond_0
    return-object v0

    .line 219
    :catch_0
    move-exception v1

    sget-boolean v1, Lcommon/RequestPackage;->n:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 287
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 288
    iget-byte v1, p0, Lcommon/RequestPackage;->a:B

    const-string v2, "platformId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 289
    iget-object v1, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    const-string v2, "productId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 290
    iget-object v1, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    const-string v2, "productVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 291
    iget-object v1, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    const-string v2, "sdkId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 292
    iget-object v1, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    const-string v2, "sdkVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 293
    iget v1, p0, Lcommon/RequestPackage;->f:I

    const-string v2, "cmd"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 294
    iget-object v1, p0, Lcommon/RequestPackage;->g:[B

    const-string v2, "sBuffer"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 295
    iget-object v1, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    const-string v2, "hardware_os"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 296
    iget-object v1, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    const-string v2, "qua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 297
    iget-byte v1, p0, Lcommon/RequestPackage;->j:B

    const-string v2, "encryType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 298
    iget-byte v1, p0, Lcommon/RequestPackage;->k:B

    const-string v2, "zipType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 299
    iget-object v1, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    const-string v2, "productIdentity"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 300
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 194
    check-cast p1, Lcommon/RequestPackage;

    .line 196
    iget-byte v0, p0, Lcommon/RequestPackage;->a:B

    iget-byte v1, p1, Lcommon/RequestPackage;->a:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    iget-object v1, p1, Lcommon/RequestPackage;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    iget-object v1, p1, Lcommon/RequestPackage;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    iget-object v1, p1, Lcommon/RequestPackage;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    iget-object v1, p1, Lcommon/RequestPackage;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget v0, p0, Lcommon/RequestPackage;->f:I

    iget v1, p1, Lcommon/RequestPackage;->f:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcommon/RequestPackage;->g:[B

    iget-object v1, p1, Lcommon/RequestPackage;->g:[B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    iget-object v1, p1, Lcommon/RequestPackage;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    iget-object v1, p1, Lcommon/RequestPackage;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-byte v0, p0, Lcommon/RequestPackage;->j:B

    iget-byte v1, p1, Lcommon/RequestPackage;->j:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-byte v0, p0, Lcommon/RequestPackage;->k:B

    iget-byte v1, p1, Lcommon/RequestPackage;->k:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    iget-object v1, p1, Lcommon/RequestPackage;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 195
    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 253
    iget-byte v0, p0, Lcommon/RequestPackage;->a:B

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/RequestPackage;->a:B

    .line 255
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 257
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 259
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 261
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 263
    iget v0, p0, Lcommon/RequestPackage;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcommon/RequestPackage;->f:I

    .line 265
    sget-object v0, Lcommon/RequestPackage;->m:[B

    if-nez v0, :cond_0

    .line 267
    new-array v0, v2, [B

    .line 268
    sput-object v0, Lcommon/RequestPackage;->m:[B

    aput-byte v3, v0, v3

    .line 271
    :cond_0
    sget-object v0, Lcommon/RequestPackage;->m:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->g:[B

    .line 273
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 275
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 277
    iget-byte v0, p0, Lcommon/RequestPackage;->j:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/RequestPackage;->j:B

    .line 279
    iget-byte v0, p0, Lcommon/RequestPackage;->k:B

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/RequestPackage;->k:B

    .line 281
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    iget-byte v0, p0, Lcommon/RequestPackage;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 227
    iget-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 228
    iget-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 229
    iget-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 230
    iget-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 231
    iget v0, p0, Lcommon/RequestPackage;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 232
    iget-object v0, p0, Lcommon/RequestPackage;->g:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 233
    iget-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 241
    :cond_1
    iget-byte v0, p0, Lcommon/RequestPackage;->j:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 242
    iget-byte v0, p0, Lcommon/RequestPackage;->k:B

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 243
    iget-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 247
    :cond_2
    return-void
.end method
