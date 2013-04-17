.class public Lcom/tencent/powermanager/uilib/CheckBoxView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/powermanager/uilib/CheckBoxView;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->c:Landroid/content/Context;

    iput v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    iput v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->d:I

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->c:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->c:Landroid/content/Context;

    iput v3, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->d:I

    iput-boolean v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    sget-object v0, La$a;->CheckBoxView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->d:I

    iput-boolean v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->c:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/CheckBoxView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 4

    const/4 v2, -0x2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    const v3, 0x7f0200f3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/tencent/powermanager/uilib/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/powermanager/uilib/CheckBoxView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/CheckBoxView;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/CheckBoxView;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    return p0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/uilib/CheckBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->d:I

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x6

    const/4 v3, 0x4

    const/4 v1, -0x2

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200f5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    invoke-static {}, Ldv;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    :goto_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/CheckBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ldv;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v4, v6, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    invoke-static {}, Ldv;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    invoke-static {}, Ldv;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ldv;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setCheckedWithAnimation(Z)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    iget v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v4, -0x413851ec

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    :goto_1
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcx;

    invoke-direct {v1, p0}, Lcx;-><init>(Lcom/tencent/powermanager/uilib/CheckBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CheckBoxView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v4, 0x3ec7ae14

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
