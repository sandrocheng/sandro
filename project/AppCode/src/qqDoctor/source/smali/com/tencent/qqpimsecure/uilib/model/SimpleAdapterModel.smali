.class public Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;
.super Ljava/lang/Object;


# instance fields
.field private content:Ljava/lang/String;

.field private leftButton:Landroid/widget/Button;

.field private rightButton:Landroid/widget/Button;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->leftButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRightButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->rightButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->content:Ljava/lang/String;

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setRightButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setRighttButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/SimpleAdapterModel;->title:Ljava/lang/String;

    return-void
.end method
