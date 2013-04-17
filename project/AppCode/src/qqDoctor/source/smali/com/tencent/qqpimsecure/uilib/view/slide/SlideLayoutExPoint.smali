.class public Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;


# instance fields
.field private mBgType:I

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

.field private mSlidePoint:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

.field private mSlideViewGroup:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private pointLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mBgType:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mainLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->pointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V

    return-void
.end method


# virtual methods
.method public addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V

    return-void
.end method

.method public addSlideLayout(I)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideViewGroup:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideViewGroup:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideViewGroup:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideViewGroup:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    return-object v0
.end method

.method public getCurrentCanvasIndex()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getCurrentScreen()I

    move-result v0

    return v0
.end method

.method public getmSlideViewGroup()Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideViewGroup:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    return-object v0
.end method

.method public initSlideLayout(II)V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addSlideLayout(I)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mBgType:I

    invoke-direct {v0, v1, p2, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlidePoint:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->pointLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlidePoint:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onNextCanvas(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlidePoint:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setCurrentFourceIndex(I)V

    return-void
.end method

.method public onSlideStart()V
    .locals 0

    return-void
.end method

.method public onSlideStop()V
    .locals 0

    return-void
.end method

.method public setAllowSlide(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    iput-boolean p1, v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isAllowSlideView:Z

    return-void
.end method

.method public setBgType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mBgType:I

    return-void
.end method

.method public setCurrentCanvasIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->setCurrentScreen(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlidePoint:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setCurrentFourceIndex(I)V

    return-void
.end method

.method public snapToScreen(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->mSlideLayout:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    return-void
.end method
