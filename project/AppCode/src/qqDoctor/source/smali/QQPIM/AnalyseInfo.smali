.class public final LQQPIM/AnalyseInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_actionLevel:I

.field static cache_cloudCheck:LQQPIM/CloudCheck;

.field static cache_featureKey:LQQPIM/FeatureKey;

.field static cache_softInfo:LQQPIM/SoftInfo;

.field static cache_softState:I

.field static cache_uploadFileInfo:LQQPIM/UploadFileInfo;


# instance fields
.field public actionID:I

.field public actionLevel:I

.field public cloudCheck:LQQPIM/CloudCheck;

.field public featureKey:LQQPIM/FeatureKey;

.field public report_feature:I

.field public softInfo:LQQPIM/SoftInfo;

.field public softState:I

.field public uploadFileInfo:LQQPIM/UploadFileInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/AnalyseInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iput-object v1, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    iput-object v1, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iput v0, p0, LQQPIM/AnalyseInfo;->report_feature:I

    iput-object v1, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    iput v0, p0, LQQPIM/AnalyseInfo;->softState:I

    iput v0, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    iput v0, p0, LQQPIM/AnalyseInfo;->actionID:I

    iget-object v0, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setFeatureKey(LQQPIM/FeatureKey;)V

    iget-object v0, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setSoftInfo(LQQPIM/SoftInfo;)V

    iget-object v0, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setCloudCheck(LQQPIM/CloudCheck;)V

    iget v0, p0, LQQPIM/AnalyseInfo;->report_feature:I

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setReport_feature(I)V

    iget-object v0, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setUploadFileInfo(LQQPIM/UploadFileInfo;)V

    iget v0, p0, LQQPIM/AnalyseInfo;->softState:I

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setSoftState(I)V

    iget v0, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setActionLevel(I)V

    iget v0, p0, LQQPIM/AnalyseInfo;->actionID:I

    invoke-virtual {p0, v0}, LQQPIM/AnalyseInfo;->setActionID(I)V

    return-void
.end method

.method public constructor <init>(LQQPIM/FeatureKey;LQQPIM/SoftInfo;LQQPIM/CloudCheck;ILQQPIM/UploadFileInfo;III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iput-object v1, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    iput-object v1, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iput v0, p0, LQQPIM/AnalyseInfo;->report_feature:I

    iput-object v1, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    iput v0, p0, LQQPIM/AnalyseInfo;->softState:I

    iput v0, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    iput v0, p0, LQQPIM/AnalyseInfo;->actionID:I

    invoke-virtual {p0, p1}, LQQPIM/AnalyseInfo;->setFeatureKey(LQQPIM/FeatureKey;)V

    invoke-virtual {p0, p2}, LQQPIM/AnalyseInfo;->setSoftInfo(LQQPIM/SoftInfo;)V

    invoke-virtual {p0, p3}, LQQPIM/AnalyseInfo;->setCloudCheck(LQQPIM/CloudCheck;)V

    invoke-virtual {p0, p4}, LQQPIM/AnalyseInfo;->setReport_feature(I)V

    invoke-virtual {p0, p5}, LQQPIM/AnalyseInfo;->setUploadFileInfo(LQQPIM/UploadFileInfo;)V

    invoke-virtual {p0, p6}, LQQPIM/AnalyseInfo;->setSoftState(I)V

    invoke-virtual {p0, p7}, LQQPIM/AnalyseInfo;->setActionLevel(I)V

    invoke-virtual {p0, p8}, LQQPIM/AnalyseInfo;->setActionID(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.AnalyseInfo"

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

    sget-boolean v1, LQQPIM/AnalyseInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    const-string v2, "featureKey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    const-string v2, "softInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    const-string v2, "cloudCheck"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AnalyseInfo;->report_feature:I

    const-string v2, "report_feature"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    const-string v2, "uploadFileInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AnalyseInfo;->softState:I

    const-string v2, "softState"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    const-string v2, "actionLevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AnalyseInfo;->actionID:I

    const-string v2, "actionID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, LQQPIM/AnalyseInfo;

    iget-object v1, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget-object v2, p1, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    iget-object v2, p1, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v2, p1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AnalyseInfo;->report_feature:I

    iget v2, p1, LQQPIM/AnalyseInfo;->report_feature:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    iget-object v2, p1, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AnalyseInfo;->softState:I

    iget v2, p1, LQQPIM/AnalyseInfo;->softState:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    iget v2, p1, LQQPIM/AnalyseInfo;->actionLevel:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AnalyseInfo;->actionID:I

    iget v2, p1, LQQPIM/AnalyseInfo;->actionID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.AnalyseInfo"

    return-object v0
.end method

.method public final getActionID()I
    .locals 1

    iget v0, p0, LQQPIM/AnalyseInfo;->actionID:I

    return v0
.end method

.method public final getActionLevel()I
    .locals 1

    iget v0, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    return v0
.end method

.method public final getCloudCheck()LQQPIM/CloudCheck;
    .locals 1

    iget-object v0, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    return-object v0
.end method

.method public final getFeatureKey()LQQPIM/FeatureKey;
    .locals 1

    iget-object v0, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    return-object v0
.end method

.method public final getReport_feature()I
    .locals 1

    iget v0, p0, LQQPIM/AnalyseInfo;->report_feature:I

    return v0
.end method

.method public final getSoftInfo()LQQPIM/SoftInfo;
    .locals 1

    iget-object v0, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    return-object v0
.end method

.method public final getSoftState()I
    .locals 1

    iget v0, p0, LQQPIM/AnalyseInfo;->softState:I

    return v0
.end method

.method public final getUploadFileInfo()LQQPIM/UploadFileInfo;
    .locals 1

    iget-object v0, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/AnalyseInfo;->cache_featureKey:LQQPIM/FeatureKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/FeatureKey;

    invoke-direct {v0}, LQQPIM/FeatureKey;-><init>()V

    sput-object v0, LQQPIM/AnalyseInfo;->cache_featureKey:LQQPIM/FeatureKey;

    :cond_0
    sget-object v0, LQQPIM/AnalyseInfo;->cache_featureKey:LQQPIM/FeatureKey;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    sget-object v0, LQQPIM/AnalyseInfo;->cache_softInfo:LQQPIM/SoftInfo;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/SoftInfo;

    invoke-direct {v0}, LQQPIM/SoftInfo;-><init>()V

    sput-object v0, LQQPIM/AnalyseInfo;->cache_softInfo:LQQPIM/SoftInfo;

    :cond_1
    sget-object v0, LQQPIM/AnalyseInfo;->cache_softInfo:LQQPIM/SoftInfo;

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/SoftInfo;

    iput-object v0, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    sget-object v0, LQQPIM/AnalyseInfo;->cache_cloudCheck:LQQPIM/CloudCheck;

    if-nez v0, :cond_2

    new-instance v0, LQQPIM/CloudCheck;

    invoke-direct {v0}, LQQPIM/CloudCheck;-><init>()V

    sput-object v0, LQQPIM/AnalyseInfo;->cache_cloudCheck:LQQPIM/CloudCheck;

    :cond_2
    sget-object v0, LQQPIM/AnalyseInfo;->cache_cloudCheck:LQQPIM/CloudCheck;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCheck;

    iput-object v0, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v0, p0, LQQPIM/AnalyseInfo;->report_feature:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AnalyseInfo;->report_feature:I

    sget-object v0, LQQPIM/AnalyseInfo;->cache_uploadFileInfo:LQQPIM/UploadFileInfo;

    if-nez v0, :cond_3

    new-instance v0, LQQPIM/UploadFileInfo;

    invoke-direct {v0}, LQQPIM/UploadFileInfo;-><init>()V

    sput-object v0, LQQPIM/AnalyseInfo;->cache_uploadFileInfo:LQQPIM/UploadFileInfo;

    :cond_3
    sget-object v0, LQQPIM/AnalyseInfo;->cache_uploadFileInfo:LQQPIM/UploadFileInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/UploadFileInfo;

    iput-object v0, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    iget v0, p0, LQQPIM/AnalyseInfo;->softState:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AnalyseInfo;->softState:I

    iget v0, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    iget v0, p0, LQQPIM/AnalyseInfo;->actionID:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AnalyseInfo;->actionID:I

    return-void
.end method

.method public final setActionID(I)V
    .locals 0

    iput p1, p0, LQQPIM/AnalyseInfo;->actionID:I

    return-void
.end method

.method public final setActionLevel(I)V
    .locals 0

    iput p1, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    return-void
.end method

.method public final setCloudCheck(LQQPIM/CloudCheck;)V
    .locals 0

    iput-object p1, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    return-void
.end method

.method public final setFeatureKey(LQQPIM/FeatureKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    return-void
.end method

.method public final setReport_feature(I)V
    .locals 0

    iput p1, p0, LQQPIM/AnalyseInfo;->report_feature:I

    return-void
.end method

.method public final setSoftInfo(LQQPIM/SoftInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    return-void
.end method

.method public final setSoftState(I)V
    .locals 0

    iput p1, p0, LQQPIM/AnalyseInfo;->softState:I

    return-void
.end method

.method public final setUploadFileInfo(LQQPIM/UploadFileInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/AnalyseInfo;->softInfo:LQQPIM/SoftInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LQQPIM/AnalyseInfo;->report_feature:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/AnalyseInfo;->uploadFileInfo:LQQPIM/UploadFileInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_0
    iget v0, p0, LQQPIM/AnalyseInfo;->softState:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/AnalyseInfo;->actionLevel:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/AnalyseInfo;->actionID:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
