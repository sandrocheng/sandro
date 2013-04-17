.class public Lcom/tencent/qqpimsecure/uilib/model/ListModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final STYLE_FOOTER:I = 0x1

.field public static final STYLE_HEADER_FOOTER:I


# instance fields
.field private isShowListNumber:Z

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mHeaderLabel:Ljava/lang/String;

.field private mStyle:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->isShowListNumber:Z

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mStyle:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->isShowListNumber:Z

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mStyle:I

    iput-boolean p4, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->isShowListNumber:Z

    return-void
.end method

.method private getListHeaderAndFooter()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ItemModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->getListNumberLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_2

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;-><init>()V

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->setHeaderLabel(Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->setItemStyle(I)V

    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v2}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->setHeaderLabel(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->setItemStyle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method private getListNumberLabel()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->isShowListNumber:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getItemModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ItemModel;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mStyle:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->getListHeaderAndFooter()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->getListMiddle()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getListMiddle()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ItemModel;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mStyle:I

    return v0
.end method

.method public isShowListNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->isShowListNumber:Z

    return v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mDataList:Ljava/util/List;

    return-void
.end method

.method public setHeaderLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mHeaderLabel:Ljava/lang/String;

    return-void
.end method

.method public setShowListNumber(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->isShowListNumber:Z

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;->mStyle:I

    return-void
.end method
