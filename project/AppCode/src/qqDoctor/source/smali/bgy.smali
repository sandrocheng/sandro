.class public final Lbgy;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:[I

.field private e:[I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300b5

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lbgy;->e:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xb6t 0x0t 0x3t 0x7ft
        0xb8t 0x0t 0x3t 0x7ft
        0xb7t 0x0t 0x3t 0x7ft
    .end array-data
.end method


# virtual methods
.method public final createOperatingBarDataList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x0

    const v3, 0x7f0b08ac

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onCreate()V
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lbgy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbgy;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lbgy;->e:[I

    iput-object v0, p0, Lbgy;->d:[I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lbgy;->c:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {p0}, Lbgy;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setBgType(I)V

    iget-object v0, p0, Lbgy;->d:[I

    array-length v0, v0

    if-ne v0, v4, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v3, p0, Lbgy;->d:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->initSlideLayout(II)V

    iget-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setCurrentCanvasIndex(I)V

    iget-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V

    iget-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {p0}, Lbgy;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setBackgroundColor(I)V

    iget-object v0, p0, Lbgy;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v3, p0, Lbgy;->c:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lbgy;->d:[I

    array-length v0, v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->invalidate()V

    iget-object v0, p0, Lbgy;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setAllowSlide(Z)V

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lbgy;->mHandler:Landroid/os/Handler;

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
    iget-object v1, p0, Lbgy;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v2, p0, Lbgy;->d:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addSlideLayout(I)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v1, p0, Lbgy;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v1, p0, Lbgy;->d:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbgy;->a:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->invalidate()V

    iget-object v0, p0, Lbgy;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lbgy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbgy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNextCanvas(I)V
    .locals 1

    iget-object v0, p0, Lbgy;->d:[I

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lbgy;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbgy;->mContext:Landroid/content/Context;

    iget v1, p0, Lbgy;->f:I

    sget v2, Lme;->a:I

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordSettingActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cG()V

    invoke-virtual {p0}, Lbgy;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbgy;->f:I

    :cond_0
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

    iget-object v0, p0, Lbgy;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0299

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
