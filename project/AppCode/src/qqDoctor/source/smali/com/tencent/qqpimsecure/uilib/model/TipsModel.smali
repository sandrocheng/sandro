.class public Lcom/tencent/qqpimsecure/uilib/model/TipsModel;
.super Ljava/lang/Object;


# instance fields
.field private actionType:I

.field private closeTime:I

.field private icon:I

.field private iconType:I

.field private message:Ljava/lang/String;

.field private showCloseIcon:Z

.field private single:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->message:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->actionType:I

    return v0
.end method

.method public getCloseTime()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->closeTime:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->icon:I

    return v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->iconType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isShowCloseIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->showCloseIcon:Z

    return v0
.end method

.method public isSingle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->single:Z

    return v0
.end method

.method public setActionType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->actionType:I

    return-void
.end method

.method public setCloseTime(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->closeTime:I

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->icon:I

    return-void
.end method

.method public setIconType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->iconType:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setShowCloseIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->showCloseIcon:Z

    return-void
.end method

.method public setSingle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->single:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->url:Ljava/lang/String;

    return-void
.end method
