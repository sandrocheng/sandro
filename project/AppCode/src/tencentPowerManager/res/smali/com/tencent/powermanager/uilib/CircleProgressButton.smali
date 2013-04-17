.class public Lcom/tencent/powermanager/uilib/CircleProgressButton;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->addView(Landroid/view/View;)V

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setActive(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setBackGroundVisible(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAnimSpeedType(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setAnimationSpeed(I)V

    :cond_0
    return-void
.end method

.method public setButtonType(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setBackGround(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setHightLightBackGround(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setCircleBackGround(I)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setBackGround(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setHightLightBackGround(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setCircleBackGround(I)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setBackGround(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setHightLightBackGround(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setCircleBackGround(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEnableAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CircleProgressButton;->a:Lcom/tencent/powermanager/uilib/CircleProgressBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/powermanager/uilib/CircleProgressBarView;->setEnableAnimation(Z)V

    :cond_0
    return-void
.end method
