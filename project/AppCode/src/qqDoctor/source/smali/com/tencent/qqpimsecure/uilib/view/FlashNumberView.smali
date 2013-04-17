.class public Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final MSG_NEXT_FRAME:I

.field public final TYPE_GREEN:I

.field public final TYPE_LARGE:I

.field public final TYPE_MINI:I

.field private isNeedShowZero:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDoingAnim:Z

.field private mNum_1:Landroid/widget/ImageView;

.field private mNum_2:Landroid/widget/ImageView;

.field private mNum_3:Landroid/widget/ImageView;

.field private mNum_Showing:I

.field private mNum_ToBeShow:I

.field private mNum_type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_Showing:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_ToBeShow:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->TYPE_MINI:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->TYPE_LARGE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->TYPE_GREEN:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->MSG_NEXT_FRAME:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->initView(Landroid/content/Context;)V

    sget-object v0, Ldp;->FlashNumView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->isNeedShowZero:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_Showing:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_ToBeShow:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->doSetNumber(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized doSetNumber(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_Showing:I

    rem-int/lit8 v2, p1, 0xa

    div-int/lit8 v3, p1, 0xa

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_1:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->setNumImage(Landroid/widget/ImageView;IZ)V

    rem-int/lit8 v2, v3, 0xa

    div-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_2:Landroid/widget/ImageView;

    if-gtz v3, :cond_1

    :goto_0
    invoke-direct {p0, v4, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->setNumImage(Landroid/widget/ImageView;IZ)V

    rem-int/lit8 v0, v3, 0xa

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_3:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->setNumImage(Landroid/widget/ImageView;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_1:Landroid/widget/ImageView;

    const v0, 0x7f080127

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_2:Landroid/widget/ImageView;

    const v0, 0x7f080126

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_3:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setNumImage(Landroid/widget/ImageView;IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->isNeedShowZero:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_1

    const v0, 0x7f0202df

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_2

    const v0, 0x7f0202e9

    goto :goto_0

    :cond_2
    const v0, 0x7f0202d2

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_3

    const v0, 0x7f0202e0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_4

    const v0, 0x7f0202ea

    goto :goto_0

    :cond_4
    const v0, 0x7f0202d3

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_5

    const v0, 0x7f0202e1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_6

    const v0, 0x7f0202eb

    goto :goto_0

    :cond_6
    const v0, 0x7f0202d4

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_7

    const v0, 0x7f0202e2

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_8

    const v0, 0x7f0202ec

    goto :goto_0

    :cond_8
    const v0, 0x7f0202d5

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_9

    const v0, 0x7f0202e3

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_a

    const v0, 0x7f0202ed

    goto :goto_0

    :cond_a
    const v0, 0x7f0202d6

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_b

    const v0, 0x7f0202e4

    goto :goto_0

    :cond_b
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_c

    const v0, 0x7f0202ee

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f0202d7

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_d

    const v0, 0x7f0202e5

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_e

    const v0, 0x7f0202ef

    goto/16 :goto_0

    :cond_e
    const v0, 0x7f0202d8

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_f

    const v0, 0x7f0202e6

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_10

    const v0, 0x7f0202f0

    goto/16 :goto_0

    :cond_10
    const v0, 0x7f0202d9

    goto/16 :goto_0

    :pswitch_8
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_11

    const v0, 0x7f0202e7

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_12

    const v0, 0x7f0202f1

    goto/16 :goto_0

    :cond_12
    const v0, 0x7f0202da

    goto/16 :goto_0

    :pswitch_9
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v3, :cond_13

    const v0, 0x7f0202e8

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_type:I

    if-ne v0, v2, :cond_14

    const v0, 0x7f0202f2

    goto/16 :goto_0

    :cond_14
    const v0, 0x7f0202db

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public setNumber(IZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_Showing:I

    if-ge v0, p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->doSetNumber(I)V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_ToBeShow:I

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->doSetNumber(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z

    goto :goto_0
.end method
