.class public Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CHECKBOX_RADIO_STYLE:I = 0x2

.field public static final CHECKBOX_SLEEK_STYLE:I = 0x0

.field public static final CHECKBOX_TICK_STYLE:I = 0x1

.field public static final CHECKBOX_TRANSPARENT_STYLE:I = 0x3


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private mAnimationOffset:F

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mDoingAnim:Z

.field private mImage_Sleek_bg:Landroid/widget/ImageView;

.field private mImage_Sleek_switch:Landroid/widget/ImageView;

.field private mImage_Tick:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/ImageView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->clickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mDoingAnim:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->initImage(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->clickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mDoingAnim:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Ldp;->CheckBoxView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->initImage(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mDoingAnim:Z

    return p1
.end method

.method private initImage(Landroid/content/Context;I)V
    .locals 4

    const/4 v2, -0x2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f02036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private radioStyleClickEvent()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    const v1, 0x7f0202af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private sleekStyleClickEvent()V
    .locals 9

    const v4, -0x410a3d71

    const/4 v6, 0x0

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    add-float v4, v6, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    :goto_0
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    add-float/2addr v2, v6

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    add-float/2addr v4, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_0
.end method

.method private tickStyleClickEvent()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private transparentStyleClickEvent()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020254

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f02036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mDoingAnim:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->sleekStyleClickEvent()V

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    const v1, 0x7f0202af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020254

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f02036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBackGroundRes(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setCheckBoxType(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->initImage(Landroid/content/Context;I)V

    return-void
.end method

.method public declared-synchronized setChecked(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v1, 0x3ef5c28f

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_switch:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v1, 0x7

    :try_start_2
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Sleek_bg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mAnimationOffset:F

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    const v1, 0x7f0202af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mRadioButton:Landroid/widget/ImageView;

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mChecked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f02036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mImage_Tick:Landroid/widget/ImageView;

    const v1, 0x7f020254

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
