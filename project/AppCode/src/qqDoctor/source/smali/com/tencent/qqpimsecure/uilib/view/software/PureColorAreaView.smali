.class public Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;
.super Landroid/view/View;


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->setColor(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PureColorAreaView;->mColor:I

    return-void
.end method
