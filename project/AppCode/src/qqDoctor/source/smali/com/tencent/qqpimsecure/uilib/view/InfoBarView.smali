.class public Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final INFO_BAR_TYPE_COMMON:I = 0x3

.field public static final INFO_BAR_TYPE_MEMORY:I = 0x1

.field public static final INFO_BAR_TYPE_MIDDLE_TEXT:I = 0x5

.field public static final INFO_BAR_TYPE_NONE:I = 0x4

.field public static final INFO_BAR_TYPE_NULL:I = 0x0

.field public static final INFO_BAR_TYPE_RAM:I = 0x2


# instance fields
.field private commonInfo_bottom_text:Landroid/widget/TextView;

.field private commonInfo_text:Landroid/widget/TextView;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mOptimizeManager:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

.field private mPhoneMemory:J

.field private mPhoneRam:J

.field private mSDCardMemory:J

.field private mType:I

.field private phoneMemory_bottom_text:Landroid/widget/TextView;

.field private phoneMemory_text:Landroid/widget/TextView;

.field private phoneRam_bottom_text:Landroid/widget/TextView;

.field private phoneRam_text:Landroid/widget/TextView;

.field private processNum_bottom_text:Landroid/widget/TextView;

.field private processNum_text:Landroid/widget/TextView;

.field private sdCardMemory_bottom_text:Landroid/widget/TextView;

.field private sdCardMemory_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_bottom_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_bottom_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_bottom_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_bottom_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_bottom_text:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mType:I

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initView(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->doRefresh(Landroid/content/Context;)V

    return-void
.end method

.method private initCommonType(Landroid/view/LayoutInflater;)V
    .locals 4

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f030035

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_bottom_text:Landroid/widget/TextView;

    return-void
.end method

.method private initMemoryType(Landroid/view/LayoutInflater;)V
    .locals 4

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_text:Landroid/widget/TextView;

    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_text:Landroid/widget/TextView;

    return-void
.end method

.method private initMiddleTextType(Landroid/view/LayoutInflater;)V
    .locals 4

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f030035

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_bottom_text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private initRamType(Landroid/view/LayoutInflater;)V
    .locals 4

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_text:Landroid/widget/TextView;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_text:Landroid/widget/TextView;

    return-void
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 3

    const/4 v1, -0x1

    const v0, 0x7f02015b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setBackgroundResource(I)V

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mOptimizeManager:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initMemoryType(Landroid/view/LayoutInflater;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initRamType(Landroid/view/LayoutInflater;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initCommonType(Landroid/view/LayoutInflater;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshMemory()V
    .locals 6

    const-wide/16 v4, 0x0

    const v3, 0x7f090036

    const v2, 0x7f09001d

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    invoke-static {v0, v1}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setPhoneMemory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setPhoneMemoryColor(I)V

    :goto_0
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    invoke-static {v0, v1}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setSDCardMemory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setSDCardMemoryColor(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "0K"

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setPhoneMemory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setPhoneMemoryColor(I)V

    goto :goto_0

    :cond_1
    const-string v0, "0K"

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setSDCardMemory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setSDCardMemoryColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public addPhoneMemory(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->refreshMemory()V

    return-void
.end method

.method public addSDCardMemory(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->refreshMemory()V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addViewToInfoBar(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public changeInfoBarType(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mType:I

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mType:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_text:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initMemoryType(Landroid/view/LayoutInflater;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initRamType(Landroid/view/LayoutInflater;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initCommonType(Landroid/view/LayoutInflater;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->initMiddleTextType(Landroid/view/LayoutInflater;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public doRefresh(Landroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->b(Lft$a;)V

    iget-wide v1, v0, Lft$a;->a:J

    iput-wide v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    invoke-static {v0}, Lft;->a(Lft$a;)V

    iget-wide v0, v0, Lft$a;->a:J

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->refreshMemory()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lvh;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneRam:J

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneRam:J

    const/16 v2, 0xa

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setPhoneRam(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPhoneMemory()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    return-wide v0
.end method

.method public getSDCardMemory()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mType:I

    return v0
.end method

.method public isOutOfPhoneMemory()Z
    .locals 4

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutOfSDCardMemory()Z
    .locals 4

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reducePhoneMemory(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mPhoneMemory:J

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->refreshMemory()V

    return-void
.end method

.method public reduceSDCardMemory(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mSDCardMemory:J

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->refreshMemory()V

    return-void
.end method

.method public setCommonText(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_bottom_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setCommonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->commonInfo_bottom_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setContentViewMargin(I)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPhoneMemory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_bottom_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setPhoneMemoryColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneMemory_bottom_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setPhoneRam(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->phoneRam_bottom_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setProcessNum(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_text:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->processNum_bottom_text:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSDCardMemory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_bottom_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSDCardMemoryColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_bottom_text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->sdCardMemory_bottom_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f02015b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f02015c

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setBackgroundResource(I)V

    goto :goto_0
.end method
