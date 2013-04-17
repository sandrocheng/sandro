.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$1;,
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;
    }
.end annotation


# instance fields
.field protected dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected onListPreferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
            ">;",
            "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->onListPreferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
            ">;",
            "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->onListPreferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createBasePreferenceView(Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/SimplePreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/SimplePreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getCheckBoxType()I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/DialogPreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/DialogPreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    if-ne v6, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    if-ne v6, v3, :cond_5

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getCheckBoxType()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getCheckBoxType()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getCheckBoxType()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v3

    if-ne v3, v4, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    if-nez p2, :cond_b

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->createBasePreferenceView(Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;

    move-result-object v2

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;-><init>(Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$1;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    instance-of v1, v2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->getTitltView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->titleView:Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->getSummaryView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->summaryView:Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->getLineView()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->lineView:Landroid/widget/LinearLayout;

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->getCheckBox()Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->checkBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    :cond_1
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    :goto_1
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->titleView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->buttonView:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->buttonView:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getTitleIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->canExpand()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isExpand()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->summaryView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_5
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_4
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->checkBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->checkBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    :cond_7
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->lineView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isShowLine()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->lineView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    :goto_5
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->setKey(Ljava/lang/CharSequence;)V

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getIcons()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->setIcons([I)V

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntries()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->setEntries([Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntryValues()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->setEntryValues([Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSelectItemIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->setItemSelectIndex(I)V

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->onListPreferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->setOnPreferenceChangeListener(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    :cond_9
    instance-of v1, v2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-eqz v1, :cond_a

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->setEnabled(Z)V

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    return-object v2

    :sswitch_0
    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->getTitltView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->titleView:Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->imageView:Landroid/widget/ImageView;

    goto/16 :goto_0

    :sswitch_1
    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;->getButton()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->buttonView:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    goto/16 :goto_0

    :sswitch_2
    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->getTitltView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->titleView:Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;->getButton()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->buttonView:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-object v1, v2

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->getSummaryView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->summaryView:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;

    move-object v2, p2

    goto/16 :goto_1

    :cond_c
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02034d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_e
    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_f
    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->lineView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method
