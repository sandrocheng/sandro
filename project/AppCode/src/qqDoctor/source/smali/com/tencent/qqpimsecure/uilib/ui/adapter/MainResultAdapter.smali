.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultDrawableRes:I

.field private mImageLoaderService:Lsl;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mTitleEllipsize:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/util/List;Lsl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ResultModel;",
            ">;",
            "Lsl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mTitleEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    const v0, 0x1080093

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawableRes:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawableRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setTranscriptMode(I)V

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mImageLoaderService:Lsl;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method private setImage(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;I)V
    .locals 3

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->getDrawableType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :pswitch_0
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->getDrawableValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mImageLoaderService:Lsl;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->startLoader(IILcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;)V

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mImageLoaderService:Lsl;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->startLoader(IILcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startLoader(IILcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;)V
    .locals 3

    invoke-virtual {p4}, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->getDrawableValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Llv;

    invoke-direct {v1}, Llv;-><init>()V

    iput p1, v1, Llv;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lmp;->g:I

    iput-object v0, v1, Llv;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v1, Llv;->a:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;-><init>(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;I)V

    iput-object v0, v1, Lmp;->i:Labu$a;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mImageLoaderService:Lsl;

    invoke-virtual {v0, v1}, Lsl;->b(Lmp;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getResultType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v3, 0x7f080139

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const v6, 0x7f090004

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030116

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    const v0, 0x7f080377

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    move-object v0, v1

    move-object v1, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v0

    move-object p2, v1

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mTitleEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v1, :cond_0

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mTitleEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getResultType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getTitleColor()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getCount()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030117

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    const v0, 0x7f080377

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    const v0, 0x7f080095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    const v0, 0x7f080097

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mMessageText:Landroid/widget/TextView;

    const v0, 0x7f080352

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mStateImage:Landroid/widget/ImageView;

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;

    move-object v3, v0

    goto/16 :goto_1

    :pswitch_0
    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090033

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090033

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mCountText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    instance-of v1, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_a

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mImageLoaderService:Lsl;

    if-eqz v1, :cond_7

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, v0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;

    invoke-direct {p0, v3, v1, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setImage(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;I)V

    :goto_5
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mStateImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mStateImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getState()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_7
    if-nez v2, :cond_8

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_8
    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_9
    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mStateImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$ResultHolder;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    move-object v1, v4

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
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
            "Lcom/tencent/qqpimsecure/uilib/model/ResultModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method public setmTitleEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mTitleEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method
