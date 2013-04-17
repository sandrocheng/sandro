.class public Lcom/tencent/qqpimsecure/uilib/model/ItemModel;
.super Ljava/lang/Object;


# static fields
.field public static final ITEM_STYLE_HEADER:I = 0x0

.field public static final ITEM_STYLE_MIDDLE:I = 0x1


# instance fields
.field private mHeaderLabel:Ljava/lang/String;

.field private mItemStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->mItemStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->mHeaderLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeaderLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->mHeaderLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getItemStyle()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->mItemStyle:I

    return v0
.end method

.method public setHeaderLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->mHeaderLabel:Ljava/lang/String;

    return-void
.end method

.method public setItemStyle(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->mItemStyle:I

    return-void
.end method
