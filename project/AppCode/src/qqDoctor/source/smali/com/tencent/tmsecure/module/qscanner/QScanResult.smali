.class public final Lcom/tencent/tmsecure/module/qscanner/QScanResult;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

.field private static synthetic b:Z


# instance fields
.field public advice:I

.field public apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

.field public discription:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public malwareid:I

.field public name:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setApkkey(Lcom/tencent/tmsecure/module/qscanner/ApkKey;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setType(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setDiscription(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setAdvice(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setMalwareid(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/qscanner/ApkKey;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setApkkey(Lcom/tencent/tmsecure/module/qscanner/ApkKey;)V

    invoke-virtual {p0, p2}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setType(I)V

    invoke-virtual {p0, p3}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setDiscription(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setAdvice(I)V

    invoke-virtual {p0, p6}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setMalwareid(I)V

    invoke-virtual {p0, p7}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QScanResult"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->b:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    const-string v2, "apkkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    const-string v2, "discription"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    const-string v2, "advice"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    const-string v2, "malwareid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QScanResult"

    return-object v0
.end method

.method public final getAdvice()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    return v0
.end method

.method public final getApkkey()Lcom/tencent/tmsecure/module/qscanner/ApkKey;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    return-object v0
.end method

.method public final getDiscription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getMalwareid()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->a:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->a:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->a:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    return-void
.end method

.method public final setAdvice(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    return-void
.end method

.method public final setApkkey(Lcom/tencent/tmsecure/module/qscanner/ApkKey;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    return-void
.end method

.method public final setDiscription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    return-void
.end method

.method public final setMalwareid(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
