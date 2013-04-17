.class public Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public mDefaultimg:Landroid/widget/ImageView;

.field public mThumbnailimg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, -0x2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0803a2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->mDefaultimg:Landroid/widget/ImageView;

    const v0, 0x7f0803a1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->mThumbnailimg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->mDefaultimg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setThumbnailImageDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->mThumbnailimg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbnailImageVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->mDefaultimg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->mDefaultimg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
