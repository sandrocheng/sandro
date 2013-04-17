.class public Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final TYPE_BLUE_BG:I = 0x1

.field public static final TYPE_WHITE_BG:I = 0x2


# instance fields
.field private currentFourceIndex:I

.field private mContext:Landroid/content/Context;

.field private noseleteDrawableID:I

.field private pointCount:I

.field private pointImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private pointType:I

.field private seleteDrawableID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointType:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointCount:I

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointType:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointType:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointCount:I

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointType:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->initView()V

    return-void
.end method

.method private initPonitDrawable()V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0202f4

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->noseleteDrawableID:I

    const v0, 0x7f0202f3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->seleteDrawableID:I

    goto :goto_0

    :pswitch_1
    const v0, 0x7f02008f

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->noseleteDrawableID:I

    const v0, 0x7f020090

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->seleteDrawableID:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initView()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, -0x2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->initPonitDrawable()V

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointImageList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointCount:I

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->noseleteDrawableID:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentFourceIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->currentFourceIndex:I

    return v0
.end method

.method public getPointType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointType:I

    return v0
.end method

.method public setCurrentFourceIndex(I)V
    .locals 3

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->currentFourceIndex:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->seleteDrawableID:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->noseleteDrawableID:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setPointType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->pointType:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->initPonitDrawable()V

    return-void
.end method
