.class public Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;
.super Ljava/lang/Object;


# instance fields
.field private disable:Z

.field private icon:I

.field private key:I

.field private summry:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->icon:I

    return v0
.end method

.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->key:I

    return v0
.end method

.method public getSummry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->summry:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->disable:Z

    return v0
.end method

.method public setDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->disable:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->icon:I

    return-void
.end method

.method public setKey(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->key:I

    return-void
.end method

.method public setSummry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->summry:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ButtonAdapterModel;->title:Ljava/lang/String;

    return-void
.end method
