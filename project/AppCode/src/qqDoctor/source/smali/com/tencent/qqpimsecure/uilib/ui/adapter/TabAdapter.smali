.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;
    }
.end annotation


# static fields
.field public static final STYLE_IMAGE_TEXT:I = 0x2

.field public static final STYLE_IMAGE_TEXT_TAG:I = 0x4

.field public static final STYLE_TEXT:I = 0x1

.field public static final STYLE_TEXT_TAG:I = 0x3


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

.field private mTabStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mTabStyle:I

    invoke-static {p1, p2}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createTabListById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method private fillData(Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mTabStyle:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->isShowFooterLine()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mLineView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lgw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lgw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    sget v1, Lgw;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getClickable()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getmTagImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getmTagImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getmTagImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getmTagImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mLineView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

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

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mTabStyle:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v6, 0x7f080334

    const v5, 0x7f030125

    const v4, 0x7f030124

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    if-nez p2, :cond_0

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;-><init>()V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mTabStyle:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput-object p2, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mParentLayout:Landroid/view/View;

    const v1, 0x7f080095

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mIconImage:Landroid/widget/ImageView;

    const v1, 0x7f080139

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTitleText:Landroid/widget/TextView;

    const v1, 0x7f080242

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mContentText:Landroid/widget/TextView;

    const v1, 0x7f080280

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mLayoutTab:Landroid/widget/LinearLayout;

    const v1, 0x7f080393

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mArrowImage:Landroid/widget/ImageView;

    const v1, 0x7f080394

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mLineView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->fillData(Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    return-object p2

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;->mTagImage:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter$TabHolder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mContext:Landroid/content/Context;

    return-void
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

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->mDataList:Ljava/util/List;

    return-void
.end method
