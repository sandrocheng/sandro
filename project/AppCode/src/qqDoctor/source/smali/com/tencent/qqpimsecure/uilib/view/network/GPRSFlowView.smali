.class public Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;
.super Landroid/view/View;


# static fields
.field private static DATE_TEXT_SIZE:I


# instance fields
.field private DATE_HEIGHT:I

.field private DATE_PADDING_TOP:I

.field private POST_HEIGHT:I

.field private POST_WIDTH:I

.field private TEXT_PADDING_BUTTOM:I

.field private VIEW_EACH_WIDTH:I

.field dataX:F

.field dataY:F

.field imageColor:I

.field imageColorBlue:I

.field imageColorRed:I

.field private mNetWorkDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkDao:Lit;

.field mPaint:Landroid/graphics/Paint;

.field mPaint2:Landroid/graphics/Paint;

.field mPaint3:Landroid/graphics/Paint;

.field mPaint4:Landroid/graphics/Paint;

.field mPaint5:Landroid/graphics/Paint;

.field paddingLeftLarge:F

.field paddingLeftSmall:F

.field private percentH:F

.field private percentW:F

.field textColor:I

.field textColorBlue:I

.field textColorRed:I

.field private totalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v6, 0x66

    const/16 v5, 0x55

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    const/16 v4, 0xff

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorBlue:I

    invoke-static {v4, v4, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorRed:I

    const/16 v0, 0xc8

    const/16 v1, 0x6a

    const/16 v2, 0xb0

    const/16 v3, 0xe6

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorBlue:I

    const/16 v0, 0xc8

    invoke-static {v0, v4, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorRed:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataY:F

    const/high16 v0, 0x41d0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftLarge:F

    const/high16 v0, 0x4160

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftSmall:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;)V"
        }
    .end annotation

    const/16 v8, 0x66

    const/16 v7, 0x55

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/16 v4, 0xff

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v6, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    iput v6, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorBlue:I

    invoke-static {v4, v4, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorRed:I

    const/16 v0, 0xc8

    const/16 v1, 0x6a

    const/16 v2, 0xb0

    const/16 v3, 0xe6

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorBlue:I

    const/16 v0, 0xc8

    invoke-static {v0, v4, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorRed:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataY:F

    const/high16 v0, 0x41d0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftLarge:F

    const/high16 v0, 0x4160

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftSmall:F

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->setFocusable(Z)V

    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_WIDTH:I

    const/16 v0, 0xbe

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->TEXT_PADDING_BUTTOM:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_PADDING_TOP:I

    const/16 v0, 0x12

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_TEXT_SIZE:I

    sget v0, Lgw;->b:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_0

    sget v0, Lgw;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4089

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    :cond_0
    sget v0, Lgw;->a:I

    const/16 v1, 0x1e0

    if-eq v0, v1, :cond_1

    sget v0, Lgw;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x407e

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->TEXT_PADDING_BUTTOM:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->TEXT_PADDING_BUTTOM:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_PADDING_TOP:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_PADDING_TOP:I

    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_WIDTH:I

    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    sget v0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_TEXT_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentW:F

    mul-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_TEXT_SIZE:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetworkDao:Lit;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getGPRSFlowColumnWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->totalWidth:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint2:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint2:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint3:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint3:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint3:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint4:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint4:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint5:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint5:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint5:Landroid/graphics/Paint;

    sget v1, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint5:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorBlue:I

    invoke-static {v4, v4, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorRed:I

    const/16 v0, 0xc8

    const/16 v1, 0x6a

    const/16 v2, 0xb0

    const/16 v3, 0xe6

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorBlue:I

    const/16 v0, 0xc8

    invoke-static {v0, v4, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorRed:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataY:F

    const/high16 v0, 0x41d0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftLarge:F

    const/high16 v0, 0x4160

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftSmall:F

    return-void

    :cond_4
    sget v0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_TEXT_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    goto/16 :goto_0
.end method

.method private CanvasFlowAndImagesChild(Landroid/graphics/Canvas;ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;DZ)V
    .locals 10

    iget-wide v6, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetworkDao:Lit;

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v0

    if-eqz p6, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorBlue:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColor:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorBlue:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColor:I

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint4:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint5:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-wide/16 v0, 0x400

    cmp-long v0, v6, v0

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-lez v0, :cond_0

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    mul-int v8, v1, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    sub-int v9, v2, v0

    int-to-float v1, v8

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint4:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getOffset(I)F

    move-result v1

    int-to-float v2, v8

    sub-float v1, v2, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->TEXT_PADDING_BUTTOM:I

    sub-int v2, v9, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint5:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColorRed:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->imageColor:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColorRed:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->textColor:I

    goto :goto_1

    :cond_5
    long-to-double v0, v6

    mul-double/2addr v0, p4

    double-to-int v0, v0

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2
.end method

.method private getGPRSLengthCount()D
    .locals 9

    iget v6, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-wide v7, v0

    move-wide v1, v7

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    cmp-long v0, v4, v1

    if-lez v0, :cond_1

    move-wide v0, v4

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-wide v7, v0

    move-wide v1, v7

    goto :goto_0

    :cond_0
    int-to-double v3, v6

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    long-to-double v0, v1

    div-double v0, v3, v0

    return-wide v0

    :cond_1
    move-wide v0, v1

    goto :goto_1
.end method

.method private getOffset(I)F
    .locals 3

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    const/high16 v0, 0x4130

    :goto_0
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->percentH:F

    mul-float/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    const/high16 v0, 0x4170

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-gt p1, v0, :cond_3

    const/high16 v0, 0x41a0

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-gt p1, v0, :cond_4

    const/high16 v0, 0x41e0

    goto :goto_0

    :cond_4
    const/high16 v0, 0x4200

    goto :goto_0
.end method

.method private getOutOfTotalDataIndex()I
    .locals 8

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    int-to-long v4, v0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    add-long/2addr v4, v6

    long-to-int v2, v4

    int-to-long v4, v2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetworkDao:Lit;

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public getGPRSFlowColumnWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    return v0
.end method

.method public getGPRSFlowHeight()I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->totalWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getOutOfTotalDataIndex()I

    move-result v8

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getGPRSLengthCount()D

    move-result-wide v9

    move v6, v7

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v6, v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    mul-int/2addr v0, v6

    int-to-float v1, v0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint3:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->POST_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x4080

    div-float v11, v0, v1

    move v0, v7

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    int-to-float v1, v0

    mul-float v3, v1, v11

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->totalWidth:I

    int-to-float v4, v1

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint3:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataY:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->totalWidth:I

    int-to-float v4, v0

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataY:F

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint2:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v7

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mNetWorkDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    int-to-float v1, v1

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftLarge:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataX:F

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataX:F

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    mul-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataY:F

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->DATE_PADDING_TOP:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-ltz v8, :cond_4

    if-lt v2, v8, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->CanvasFlowAndImagesChild(Landroid/graphics/Canvas;ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;DZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->VIEW_EACH_WIDTH:I

    int-to-float v1, v1

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->paddingLeftSmall:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->dataX:F

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    move v6, v7

    goto :goto_4
.end method
