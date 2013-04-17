.class public final Lcommon/RequestPackage;
.super Lcom/qq/taf/jce/JceStruct;
.source "RequestPackage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static n:[B

.field private static synthetic o:Z


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

.field private m:Ljava/lang/String;


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
    sput-boolean v0, Lcommon/RequestPackage;->o:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-byte v1, p0, Lcommon/RequestPackage;->a:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcommon/RequestPackage;->f:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcommon/RequestPackage;->g:[B

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 39
    iput-byte v1, p0, Lcommon/RequestPackage;->j:B

    .line 41
    iput-byte v1, p0, Lcommon/RequestPackage;->k:B

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    .line 179
    iget-byte v0, p0, Lcommon/RequestPackage;->a:B

    iput-byte v0, p0, Lcommon/RequestPackage;->a:B

    .line 180
    iget-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 184
    iget v0, p0, Lcommon/RequestPackage;->f:I

    iput v0, p0, Lcommon/RequestPackage;->f:I

    .line 185
    iget-object v0, p0, Lcommon/RequestPackage;->g:[B

    iput-object v0, p0, Lcommon/RequestPackage;->g:[B

    .line 186
    iget-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 188
    iget-byte v0, p0, Lcommon/RequestPackage;->j:B

    iput-byte v0, p0, Lcommon/RequestPackage;->j:B

    .line 189
    iget-byte v0, p0, Lcommon/RequestPackage;->k:B

    iput-byte v0, p0, Lcommon/RequestPackage;->k:B

    .line 190
    iget-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    iput-object v0, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-byte p1, p0, Lcommon/RequestPackage;->a:B

    .line 55
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lcommon/RequestPackage;->f:I

    .line 105
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final a([B)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcommon/RequestPackage;->g:[B

    .line 115
    return-void
.end method

.method public final b(B)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-byte p1, p0, Lcommon/RequestPackage;->j:B

    .line 145
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final c(B)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-byte p1, p0, Lcommon/RequestPackage;->k:B

    .line 155
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 252
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :cond_0
    return-object v0

    .line 256
    :catch_0
    move-exception v1

    sget-boolean v1, Lcommon/RequestPackage;->o:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 330
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 331
    iget-byte v1, p0, Lcommon/RequestPackage;->a:B

    const-string v2, "platformId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 332
    iget-object v1, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    const-string v2, "productId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 333
    iget-object v1, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    const-string v2, "productVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 334
    iget-object v1, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    const-string v2, "sdkId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 335
    iget-object v1, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    const-string v2, "sdkVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 336
    iget v1, p0, Lcommon/RequestPackage;->f:I

    const-string v2, "cmd"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 337
    iget-object v1, p0, Lcommon/RequestPackage;->g:[B

    const-string v2, "sBuffer"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 338
    iget-object v1, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    const-string v2, "hardware_os"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 339
    iget-object v1, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    const-string v2, "qua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 340
    iget-byte v1, p0, Lcommon/RequestPackage;->j:B

    const-string v2, "encryType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 341
    iget-byte v1, p0, Lcommon/RequestPackage;->k:B

    const-string v2, "zipType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 342
    iget-object v1, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    const-string v2, "productIdentity"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 343
    iget-object v1, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 344
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 213
    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    check-cast p1, Lcommon/RequestPackage;

    .line 220
    iget-byte v1, p0, Lcommon/RequestPackage;->a:B

    iget-byte v2, p1, Lcommon/RequestPackage;->a:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget v1, p0, Lcommon/RequestPackage;->f:I

    iget v2, p1, Lcommon/RequestPackage;->f:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcommon/RequestPackage;->g:[B

    iget-object v2, p1, Lcommon/RequestPackage;->g:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-byte v1, p0, Lcommon/RequestPackage;->j:B

    iget-byte v2, p1, Lcommon/RequestPackage;->j:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-byte v1, p0, Lcommon/RequestPackage;->k:B

    iget-byte v2, p1, Lcommon/RequestPackage;->k:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    iget-object v2, p1, Lcommon/RequestPackage;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 239
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    iget-byte v0, p0, Lcommon/RequestPackage;->a:B

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/RequestPackage;->a:B

    .line 296
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    .line 298
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    .line 300
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    .line 302
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    .line 304
    iget v0, p0, Lcommon/RequestPackage;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcommon/RequestPackage;->f:I

    .line 306
    sget-object v0, Lcommon/RequestPackage;->n:[B

    if-nez v0, :cond_0

    .line 308
    new-array v0, v3, [B

    .line 309
    sput-object v0, Lcommon/RequestPackage;->n:[B

    aput-byte v2, v0, v2

    .line 312
    :cond_0
    sget-object v0, Lcommon/RequestPackage;->n:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->g:[B

    .line 314
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    .line 316
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    .line 318
    iget-byte v0, p0, Lcommon/RequestPackage;->j:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/RequestPackage;->j:B

    .line 320
    iget-byte v0, p0, Lcommon/RequestPackage;->k:B

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcommon/RequestPackage;->k:B

    .line 322
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    .line 324
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-byte v0, p0, Lcommon/RequestPackage;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 264
    iget-object v0, p0, Lcommon/RequestPackage;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 265
    iget-object v0, p0, Lcommon/RequestPackage;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 266
    iget-object v0, p0, Lcommon/RequestPackage;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcommon/RequestPackage;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 268
    iget v0, p0, Lcommon/RequestPackage;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 269
    iget-object v0, p0, Lcommon/RequestPackage;->g:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 270
    iget-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcommon/RequestPackage;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcommon/RequestPackage;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 278
    :cond_1
    iget-byte v0, p0, Lcommon/RequestPackage;->j:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 279
    iget-byte v0, p0, Lcommon/RequestPackage;->k:B

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 280
    iget-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcommon/RequestPackage;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcommon/RequestPackage;->m:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 288
    :cond_3
    return-void
.end method
