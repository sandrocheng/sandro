.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createTabListById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getMultiStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/high16 v8, 0x4160

    const/high16 v7, 0x3f00

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getMultiStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object p2

    :pswitch_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030124

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;-><init>()V

    const v1, 0x7f080095

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    const v1, 0x7f080139

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mTitleText:Landroid/widget/TextView;

    const v1, 0x7f080242

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    const v1, 0x7f080280

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    const v1, 0x7f080393

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mArrowImage:Landroid/widget/ImageView;

    const v1, 0x7f080394

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_1
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    invoke-static {}, Lgw;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    float-to-int v4, v4

    iget-object v5, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getClickable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;

    goto/16 :goto_1

    :cond_2
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    const v2, 0x7f0201a0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030040

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;-><init>()V

    const v1, 0x7f080022

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter$TabHolder;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MultiGroupTabAdapter;->mDataList:Ljava/util/List;

    return-void
.end method
