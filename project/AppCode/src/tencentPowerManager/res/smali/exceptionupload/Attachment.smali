.class public final Lexceptionupload/Attachment;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field private static d:[B

.field private static synthetic e:Z


# instance fields
.field private a:B

.field private b:Ljava/lang/String;

.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lexceptionupload/Attachment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lexceptionupload/Attachment;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-byte v0, p0, Lexceptionupload/Attachment;->a:B

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lexceptionupload/Attachment;->c:[B

    .line 54
    iget-byte v0, p0, Lexceptionupload/Attachment;->a:B

    iput-byte v0, p0, Lexceptionupload/Attachment;->a:B

    .line 55
    iget-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lexceptionupload/Attachment;->c:[B

    iput-object v0, p0, Lexceptionupload/Attachment;->c:[B

    .line 57
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-byte p1, p0, Lexceptionupload/Attachment;->a:B

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final a([B)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lexceptionupload/Attachment;->c:[B

    .line 50
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 80
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :cond_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    sget-boolean v1, Lexceptionupload/Attachment;->e:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 120
    iget-byte v1, p0, Lexceptionupload/Attachment;->a:B

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 121
    iget-object v1, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 122
    iget-object v1, p0, Lexceptionupload/Attachment;->c:[B

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 123
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 68
    check-cast p1, Lexceptionupload/Attachment;

    .line 70
    iget-byte v0, p0, Lexceptionupload/Attachment;->a:B

    iget-byte v1, p1, Lexceptionupload/Attachment;->a:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lexceptionupload/Attachment;->c:[B

    iget-object v1, p1, Lexceptionupload/Attachment;->c:[B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 69
    goto :goto_0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    iget-byte v0, p0, Lexceptionupload/Attachment;->a:B

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lexceptionupload/Attachment;->a:B

    .line 105
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 107
    sget-object v0, Lexceptionupload/Attachment;->d:[B

    if-nez v0, :cond_0

    .line 109
    new-array v0, v2, [B

    .line 110
    sput-object v0, Lexceptionupload/Attachment;->d:[B

    aput-byte v1, v0, v1

    .line 113
    :cond_0
    sget-object v0, Lexceptionupload/Attachment;->d:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/Attachment;->c:[B

    .line 115
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-byte v0, p0, Lexceptionupload/Attachment;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 92
    iget-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lexceptionupload/Attachment;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 97
    return-void
.end method
