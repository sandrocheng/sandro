.class public Lcom/tencent/powermanager/uilib/button/ButtonView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/FrameLayout;

.field private h:I

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->a:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->h:I

    invoke-direct {p0, p2}, Lcom/tencent/powermanager/uilib/button/ButtonView;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->a:Landroid/content/Context;

    sget-object v0, La$a;->ButtonView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->h:I

    invoke-direct {p0, v1}, Lcom/tencent/powermanager/uilib/button/ButtonView;->a(I)V

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setText(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4382

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setButtonByType(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f050011

    const v3, 0x7f050010

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->isClickable()Z

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
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->h:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->h:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->h:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    :pswitch_8
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

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

    const v1, 0x7f0200ff

    const/4 v4, 0x0

    const v0, 0x7f020100

    const v2, 0x7f050011

    const v3, 0x7f050010

    iput p1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->h:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f0200fe

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    const v0, 0x7f02013f

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public setButtonContentImgID(II)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->o:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->h:I

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setButtonByType(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0200fd

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050017

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

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->f:Landroid/widget/ImageView;

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setButtonRightImage(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->l:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCheckBoxState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->m:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->m:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPreImageVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPreposition(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRightImageVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->l:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/ButtonView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
