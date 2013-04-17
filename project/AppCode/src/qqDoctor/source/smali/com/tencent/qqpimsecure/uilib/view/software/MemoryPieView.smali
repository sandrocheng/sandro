.class public Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mColorTextLayout:Landroid/widget/LinearLayout;

.field private final mFreeMomoryColor:I

.field private final mOutsideRingColor:I

.field private final mPersonalSoftwareColor:I

.field private final mPieBorderColor:I

.field private final mPieTextColor:I

.field private mPieView:Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

.field private final mSystemSoftwareColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, -0xff6301

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mSystemSoftwareColor:I

    const/16 v0, -0x7000

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPersonalSoftwareColor:I

    const v0, -0x8e3de3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mFreeMomoryColor:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mOutsideRingColor:I

    const v0, -0x242425

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieBorderColor:I

    const v0, -0x6f6f70

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieTextColor:I

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xff6301

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mSystemSoftwareColor:I

    const/16 v0, -0x7000

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPersonalSoftwareColor:I

    const v0, -0x8e3de3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mFreeMomoryColor:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mOutsideRingColor:I

    const v0, -0x242425

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieBorderColor:I

    const v0, -0x6f6f70

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieTextColor:I

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    const/high16 v3, 0x3f00

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mColorTextLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mColorTextLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mColorTextLayout:Landroid/widget/LinearLayout;

    const v1, -0xff6301

    const v2, 0x7f0b0916

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->newColorTextView(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mColorTextLayout:Landroid/widget/LinearLayout;

    const/16 v1, -0x7000

    const v2, 0x7f0b0917

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->newColorTextView(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mColorTextLayout:Landroid/widget/LinearLayout;

    const v1, -0x8e3de3

    const v2, 0x7f0b0918

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->newColorTextView(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieView:Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieView:Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->setOutsideRing(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieView:Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

    const v1, -0x242425

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->setBorderColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieView:Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

    invoke-virtual {v1, v0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->setPiePerfectSize(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->setOrientation(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mColorTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieView:Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private newColorTextView(Landroid/content/Context;II)Landroid/widget/LinearLayout;
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;

    invoke-direct {v1, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40c0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x4150

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, -0x6f6f70

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public setMemoryValues(FFF)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [F

    new-array v1, v1, [I

    aput p1, v0, v3

    const v2, -0xff6301

    aput v2, v1, v3

    aput p2, v0, v4

    const/16 v2, -0x7000

    aput v2, v1, v4

    aput p3, v0, v5

    const v2, -0x8e3de3

    aput v2, v1, v5

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/MemoryPieView;->mPieView:Lcom/tencent/qqpimsecure/uilib/view/software/PieView;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->setPieValues([F[I)V

    return-void
.end method
