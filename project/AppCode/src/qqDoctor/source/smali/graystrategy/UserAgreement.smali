.class public final Lgraystrategy/UserAgreement;
.super Lcom/qq/taf/jce/JceStruct;
.source "UserAgreement.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_data:[B


# instance fields
.field public agreementId:I

.field public data:[B

.field public userAgreeDetailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lgraystrategy/UserAgreement;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lgraystrategy/UserAgreement;->$assertionsDisabled:Z

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

    iput v0, p0, Lgraystrategy/UserAgreement;->agreementId:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lgraystrategy/UserAgreement;->data:[B

    .line 59
    iget v0, p0, Lgraystrategy/UserAgreement;->agreementId:I

    invoke-virtual {p0, v0}, Lgraystrategy/UserAgreement;->setAgreementId(I)V

    .line 60
    iget-object v0, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/UserAgreement;->setUserAgreeDetailUrl(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgraystrategy/UserAgreement;->data:[B

    invoke-virtual {p0, v0}, Lgraystrategy/UserAgreement;->setData([B)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lgraystrategy/UserAgreement;->agreementId:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lgraystrategy/UserAgreement;->data:[B

    .line 66
    invoke-virtual {p0, p1}, Lgraystrategy/UserAgreement;->setAgreementId(I)V

    .line 67
    invoke-virtual {p0, p2}, Lgraystrategy/UserAgreement;->setUserAgreeDetailUrl(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p3}, Lgraystrategy/UserAgreement;->setData([B)V

    .line 69
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "graystrategy.UserAgreement"

    return-object v0
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

    sget-boolean v1, Lgraystrategy/UserAgreement;->$assertionsDisabled:Z

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
    iget v1, p0, Lgraystrategy/UserAgreement;->agreementId:I

    const-string v2, "agreementId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 143
    iget-object v1, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    const-string v2, "userAgreeDetailUrl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 144
    iget-object v1, p0, Lgraystrategy/UserAgreement;->data:[B

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
    check-cast p1, Lgraystrategy/UserAgreement;

    .line 80
    iget v1, p0, Lgraystrategy/UserAgreement;->agreementId:I

    iget v2, p1, Lgraystrategy/UserAgreement;->agreementId:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lgraystrategy/UserAgreement;->data:[B

    iget-object v2, p1, Lgraystrategy/UserAgreement;->data:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "graystrategy.UserAgreement"

    return-object v0
.end method

.method public final getAgreementId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lgraystrategy/UserAgreement;->agreementId:I

    return v0
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lgraystrategy/UserAgreement;->data:[B

    return-object v0
.end method

.method public final getUserAgreeDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    return-object v0
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget v0, p0, Lgraystrategy/UserAgreement;->agreementId:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lgraystrategy/UserAgreement;->agreementId:I

    .line 127
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    .line 129
    sget-object v0, Lgraystrategy/UserAgreement;->cache_data:[B

    if-nez v0, :cond_0

    .line 131
    new-array v0, v1, [B

    .line 132
    sput-object v0, Lgraystrategy/UserAgreement;->cache_data:[B

    aput-byte v2, v0, v2

    .line 135
    :cond_0
    sget-object v0, Lgraystrategy/UserAgreement;->cache_data:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/UserAgreement;->data:[B

    .line 137
    return-void
.end method

.method public final setAgreementId(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lgraystrategy/UserAgreement;->agreementId:I

    .line 35
    return-void
.end method

.method public final setData([B)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lgraystrategy/UserAgreement;->data:[B

    .line 55
    return-void
.end method

.method public final setUserAgreeDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget v0, p0, Lgraystrategy/UserAgreement;->agreementId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 114
    iget-object v0, p0, Lgraystrategy/UserAgreement;->userAgreeDetailUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lgraystrategy/UserAgreement;->data:[B

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lgraystrategy/UserAgreement;->data:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 119
    :cond_0
    return-void
.end method
