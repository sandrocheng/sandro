.class public final Laot;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:[I

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300c7

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Laot;->e:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xc4t 0x0t 0x3t 0x7ft
        0xc6t 0x0t 0x3t 0x7ft
        0xc5t 0x0t 0x3t 0x7ft
    .end array-data
.end method


# virtual methods
.method public final onCreate()V
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Laot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laot;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Laot;->e:[I

    iput-object v0, p0, Laot;->d:[I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Laot;->c:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {p0}, Laot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setBgType(I)V

    iget-object v0, p0, Laot;->d:[I

    array-length v0, v0

    if-ne v0, v4, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v3, p0, Laot;->d:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->initSlideLayout(II)V

    iget-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setCurrentCanvasIndex(I)V

    iget-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V

    iget-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {p0}, Laot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setBackgroundColor(I)V

    iget-object v0, p0, Laot;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v3, p0, Laot;->c:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Laot;->d:[I

    array-length v0, v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->invalidate()V

    iget-object v0, p0, Laot;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setAllowSlide(Z)V

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Laot;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onHandlerMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Laot;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v2, p0, Laot;->d:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addSlideLayout(I)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v1, p0, Laot;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v1, p0, Laot;->d:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Laot;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->invalidate()V

    iget-object v0, p0, Laot;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Laot;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laot;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNextCanvas(I)V
    .locals 1

    iget-object v0, p0, Laot;->d:[I

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method public final onSlideStart()V
    .locals 0

    return-void
.end method

.method public final onSlideStop()V
    .locals 0

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    iget-object v0, p0, Laot;->mContext:Landroid/content/Context;

    const v1, 0x7f0b068a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
