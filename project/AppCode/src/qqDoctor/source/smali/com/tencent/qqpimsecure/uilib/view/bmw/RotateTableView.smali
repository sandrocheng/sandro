.class public Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;
    }
.end annotation


# static fields
.field public static final PIONT_CPU:I = 0x2

.field public static final PIONT_MEMORY:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRotateCPU:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

.field private mRotateMemory:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

.field private numViewCPU:Landroid/widget/TextView;

.field private numViewM:Landroid/widget/TextView;

.field private relativeLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->init()V

    return-void
.end method

.method private addPoint(Landroid/content/Context;FFFFLcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;)Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;
    .locals 6

    const/4 v1, -0x1

    const/4 v5, -0x2

    const/high16 v4, 0x3f00

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->relativeLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->relativeLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->relativeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p3

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p5

    add-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->relativeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p6
.end method

.method private addTextView(Landroid/content/Context;FFFFLandroid/view/View;)V
    .locals 6

    const/4 v5, -0x2

    const/high16 v4, 0x3f00

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p3

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p5

    add-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0x53

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p6, v4}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public changeBMW(II)V
    .locals 3

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v0, :cond_2

    const/16 p2, 0x63

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mRotateMemory:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->getPrcess()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mRotateMemory:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->changeBMW(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewM:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mRotateCPU:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->getPrcess()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mRotateCPU:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->changeBMW(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewCPU:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 15

    const/high16 v14, 0x4110

    const v13, 0x3f451eb8

    const/high16 v12, 0x3f00

    const/high16 v11, -0x3d10

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    const/high16 v1, 0x42f0

    invoke-direct {v0, v11, v1, v12, v13}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->setDuration(J)V

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)V

    const v0, 0x7f020134

    invoke-virtual {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    const v2, 0x41f73333

    const/high16 v3, 0x40d0

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->addPoint(Landroid/content/Context;FFFFLcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;)Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mRotateMemory:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b037b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x4130

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewM:Landroid/widget/TextView;

    const-string v2, "0%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewM:Landroid/widget/TextView;

    const/high16 v2, 0x4130

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewM:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewM:Landroid/widget/TextView;

    invoke-virtual {v7, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41a8

    const/high16 v6, 0x4160

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->addTextView(Landroid/content/Context;FFFFLandroid/view/View;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    const/high16 v1, 0x42f0

    invoke-direct {v0, v11, v1, v12, v13}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->setDuration(J)V

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)V

    const v0, 0x7f020135

    invoke-virtual {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    const v2, 0x42393333

    const v3, 0x418e6666

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->addPoint(Landroid/content/Context;FFFFLcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;)Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mRotateCPU:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b037c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewCPU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewCPU:Landroid/widget/TextView;

    const-string v2, "0%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewCPU:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewCPU:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->numViewCPU:Landroid/widget/TextView;

    invoke-virtual {v7, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42b0

    const/high16 v6, 0x4170

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->addTextView(Landroid/content/Context;FFFFLandroid/view/View;)V

    return-void
.end method
