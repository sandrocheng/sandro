.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_1

    const v0, 0x7f03003b

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;-><init>()V

    const v0, 0x7f080091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f080092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->getContextMenuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->getMarkType()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->getMarkType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->getMarkType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
