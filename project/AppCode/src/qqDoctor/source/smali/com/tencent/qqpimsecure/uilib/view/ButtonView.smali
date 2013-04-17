.class public Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final TYPE_BUTTON_BLUE:I = 0x3

.field public static final TYPE_BUTTON_DESK_OPTIMIZE:I = 0x7

.field public static final TYPE_BUTTON_GREEN:I = 0x1

.field public static final TYPE_BUTTON_WHITE:I = 0x2

.field public static final TYPE_BUTTON_WHITE_FILL_PARENT:I = 0x4

.field public static final TYPE_BUTTON_WHITE_FILL_PARENT_WITH_ARROW:I = 0x5

.field public static final TYPE_BUTTON_WITH_CHECKBOX:I = 0x6


# instance fields
.field private mAboveText:Landroid/widget/TextView;

.field private mArrowImage:Landroid/widget/ImageView;

.field private mBelowText:Landroid/widget/TextView;

.field private mButtonContentImg:Landroid/widget/ImageView;

.field private mButtonIcon:Landroid/widget/ImageView;

.field private mCheckbox_Image:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mLoadingView:Landroid/widget/FrameLayout;

.field private mLoadingView_Inside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingInsideView;

.field private mLoadingView_Outside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingOutsideView;

.field private mPreImage:Landroid/widget/ImageView;

.field private mPrefixImage:Landroid/widget/ImageView;

.field private mPrepositionAbove:Landroid/widget/TextView;

.field private mPrepositionBelow:Landroid/widget/TextView;

.field private mRightImage:Landroid/widget/ImageView;

.field private mType:I

.field private normalContentImg:Landroid/graphics/drawable/Drawable;

.field private pressedContentImg:Landroid/graphics/drawable/Drawable;

.field private textLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    invoke-direct {p0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->initView(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mContext:Landroid/content/Context;

    sget-object v0, Ldp;->ButtonView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->initView(I)V

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method private initView(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonContentImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mArrowImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mRightImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionAbove:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionBelow:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPreImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mCheckbox_Image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingInsideView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView_Inside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingInsideView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingOutsideView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView_Outside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingOutsideView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrefixImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getButtonType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    return v0
.end method

.method public getLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f09003d

    const v3, 0x7f09003e

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonContentImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonContentImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->pressedContentImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonContentImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonContentImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->normalContentImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    :pswitch_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public setButtonByType(I)V
    .locals 5

    const v1, 0x7f020045

    const/4 v4, 0x0

    const v0, 0x7f020046

    const v2, 0x7f09003d

    const v3, 0x7f09003e

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f020044

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mCheckbox_Image:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    const v0, 0x7f020048

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setButtonContentImgID(II)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->normalContentImg:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->pressedContentImg:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonContentImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonContentImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->normalContentImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const v0, 0x7f02006f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    const v1, -0x6f6f70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f02003f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/16 v6, 0x1e

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v3, -0x1

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonIcon:Landroid/widget/ImageView;

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->textLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setButtonRightImage(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mRightImage:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCheckBoxState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mCheckbox_Image:Landroid/widget/ImageView;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mCheckbox_Image:Landroid/widget/ImageView;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPreImageVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPreImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPreImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPreposition(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionAbove:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionBelow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionAbove:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionBelow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionAbove:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrepositionBelow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrifixImageIcon(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mRightImage:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrefixImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mPrefixImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setRightImageVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mRightImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mRightImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mAboveText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mBelowText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public startRunning()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView_Inside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingInsideView;->startRotationAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView_Outside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingOutsideView;->startRotationAnimation()V

    return-void
.end method

.method public stopRunning()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView_Inside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingInsideView;->stopRotationAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->mLoadingView_Outside:Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/ButtonLoadingOutsideView;->stopRotationAnimation()V

    return-void
.end method
