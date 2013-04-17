.class public Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final MSG_ANIM_NEXT_FRAME:I

.field private mArrow1:Landroid/widget/ImageView;

.field private mArrow2:Landroid/widget/ImageView;

.field private mArrow3:Landroid/widget/ImageView;

.field private mArrowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDoAnim:Z

.field private mLastLightIndex:I

.field private mLightIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->MSG_ANIM_NEXT_FRAME:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->MSG_ANIM_NEXT_FRAME:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mIsDoAnim:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLastLightIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I

    return p1
.end method

.method static synthetic access$212(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->doAnim()V

    return-void
.end method

.method private doAnim()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLastLightIndex:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0202dc

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0202dd

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080262

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrow1:Landroid/widget/ImageView;

    const v0, 0x7f080263

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrow2:Landroid/widget/ImageView;

    const v0, 0x7f080264

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrow3:Landroid/widget/ImageView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrow1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrow2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrow3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public startAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mIsDoAnim:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mIsDoAnim:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLastLightIndex:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->doAnim()V

    goto :goto_0
.end method

.method public stopAnim()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mIsDoAnim:Z

    return-void
.end method
