.class public Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;
.super Ljava/lang/Object;


# instance fields
.field private contextMenuName:Ljava/lang/String;

.field private markType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextMenuName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->contextMenuName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->markType:I

    return v0
.end method

.method public setContextMenuName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->contextMenuName:Ljava/lang/String;

    return-void
.end method

.method public setMarkType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->markType:I

    return-void
.end method
