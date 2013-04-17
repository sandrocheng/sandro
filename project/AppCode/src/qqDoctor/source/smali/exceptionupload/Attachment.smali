.class public final Lexceptionupload/Attachment;
.super Lcom/qq/taf/jce/JceStruct;
.source "Attachment.java"

# interfaces
.implements Ljava/lang/Cloneable;


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
    .line 57
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-byte v0, p0, Lexceptionupload/Attachment;->a:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lexceptionupload/Attachment;->c:[B

    .line 59
    iget-byte v0, p0, Lexceptionupload/Attachment;->a:B

    iput-byte v0, p0, Lexceptionupload/Attachment;->a:B

    .line 60
    iget-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lexceptionupload/Attachment;->c:[B

    iput-object v0, p0, Lexceptionupload/Attachment;->c:[B

    .line 62
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-byte p1, p0, Lexceptionupload/Attachment;->a:B

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final a([B)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lexceptionupload/Attachment;->c:[B

    .line 55
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :cond_0
    return-object v0

    .line 106
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
    .line 141
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 142
    iget-byte v1, p0, Lexceptionupload/Attachment;->a:B

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 143
    iget-object v1, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 144
    iget-object v1, p0, Lexceptionupload/Attachment;->c:[B

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 145
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    check-cast p1, Lexceptionupload/Attachment;

    .line 80
    iget-byte v1, p0, Lexceptionupload/Attachment;->a:B

    iget-byte v2, p1, Lexceptionupload/Attachment;->a:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lexceptionupload/Attachment;->c:[B

    iget-object v2, p1, Lexceptionupload/Attachment;->c:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    iget-byte v0, p0, Lexceptionupload/Attachment;->a:B

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lexceptionupload/Attachment;->a:B

    .line 127
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    .line 129
    sget-object v0, Lexceptionupload/Attachment;->d:[B

    if-nez v0, :cond_0

    .line 131
    new-array v0, v2, [B

    .line 132
    sput-object v0, Lexceptionupload/Attachment;->d:[B

    aput-byte v1, v0, v1

    .line 135
    :cond_0
    sget-object v0, Lexceptionupload/Attachment;->d:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/Attachment;->c:[B

    .line 137
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-byte v0, p0, Lexceptionupload/Attachment;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 114
    iget-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lexceptionupload/Attachment;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lexceptionupload/Attachment;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 119
    return-void
.end method
