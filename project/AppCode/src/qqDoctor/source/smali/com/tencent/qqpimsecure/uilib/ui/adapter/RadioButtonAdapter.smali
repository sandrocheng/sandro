.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;",
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
            "Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    if-nez p2, :cond_0

    const v0, 0x7f030041

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;-><init>()V

    const v0, 0x7f08009b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const v0, 0x7f08009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioButtonName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioButtonImageId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioButtonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/RadioButtonAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioButtonImageId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
