.class public final Lanl;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lavg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lho;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lanm;

    invoke-direct {v0, p0}, Lanm;-><init>(Lanl;)V

    iput-object v0, p0, Lanl;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lann;

    invoke-direct {v0, p0}, Lann;-><init>(Lanl;)V

    iput-object v0, p0, Lanl;->c:Landroid/view/View$OnClickListener;

    new-instance v0, Lano;

    invoke-direct {v0, p0}, Lano;-><init>(Lanl;)V

    iput-object v0, p0, Lanl;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lanl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lanl;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    iget v0, v0, Lavg;->b:I

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    iget v0, v0, Lavg;->b:I

    if-nez v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    iget v0, v0, Lavg;->b:I

    if-nez v0, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    iget v0, v0, Lavg;->b:I

    if-nez v0, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    iget v0, v0, Lavg;->b:I

    if-nez v0, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    iget v0, v0, Lavg;->b:I

    if-ne v0, v4, :cond_6

    or-int/lit8 v1, v1, 0x40

    :cond_5
    :goto_0
    iget-object v0, p0, Lanl;->a:Lho;

    invoke-virtual {v0, v1}, Lho;->i(I)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    return-void

    :cond_6
    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    iget v0, v0, Lavg;->b:I

    if-nez v0, :cond_5

    or-int/lit8 v1, v1, 0x20

    goto :goto_0
.end method

.method static synthetic c(Lanl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lanl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 7

    new-instance v0, Lavf;

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lanl;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Lavf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public final onCreate()V
    .locals 6

    const v5, 0x7f070023

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-instance v0, Lavg;

    invoke-direct {v0}, Lavg;-><init>()V

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b043f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->a:Ljava/lang/String;

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->c:[Ljava/lang/String;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lavg;->d:[I

    iget-object v1, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lavg;

    invoke-direct {v0}, Lavg;-><init>()V

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0440

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->a:Ljava/lang/String;

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->c:[Ljava/lang/String;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, v0, Lavg;->d:[I

    iget-object v1, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lavg;

    invoke-direct {v0}, Lavg;-><init>()V

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0441

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->a:Ljava/lang/String;

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->c:[Ljava/lang/String;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, v0, Lavg;->d:[I

    iget-object v1, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lavg;

    invoke-direct {v0}, Lavg;-><init>()V

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0442

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->a:Ljava/lang/String;

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->c:[Ljava/lang/String;

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, v0, Lavg;->d:[I

    iget-object v1, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lavg;

    invoke-direct {v0}, Lavg;-><init>()V

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0443

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->a:Ljava/lang/String;

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->c:[Ljava/lang/String;

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, v0, Lavg;->d:[I

    iget-object v1, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lavg;

    invoke-direct {v0}, Lavg;-><init>()V

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0448

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->a:Ljava/lang/String;

    iget-object v1, p0, Lanl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lavg;->c:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    iput-object v1, v0, Lavg;->d:[I

    iget-object v1, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lanl;->a:Lho;

    invoke-virtual {p0}, Lanl;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lavf;

    iget-object v1, p0, Lanl;->c:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lanl;->b:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lanl;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lavf;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lanl;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPadding(IIII)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x28t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x29t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x28t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x28t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x28t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x28t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x31t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lanl;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lavf;

    invoke-virtual {v0}, Lavf;->a()I

    move-result v1

    if-eq v1, p3, :cond_0

    invoke-virtual {v0, p3}, Lavf;->a(I)V

    :goto_0
    invoke-virtual {v0}, Lavf;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lavf;->a(I)V

    goto :goto_0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->d()V

    return-void
.end method

.method public final onResume()V
    .locals 7

    const/4 v6, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lanl;->a:Lho;

    invoke-virtual {v0}, Lho;->R()I

    move-result v5

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Lavg;->b:I

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Lavg;->b:I

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput v1, v0, Lavg;->b:I

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    iput v1, v0, Lavg;->b:I

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput v1, v0, Lavg;->b:I

    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    move v2, v4

    :cond_0
    :goto_6
    iput v2, v0, Lavg;->b:I

    invoke-virtual {p0}, Lanl;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lanl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    and-int/lit8 v1, v5, 0x20

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_6
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b027f

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
