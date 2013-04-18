.class public Lcom/ijinshan/kinghelper/common/NumSortView;
.super Landroid/view/View;
.source "NumSortView.java"


# instance fields
.field a:Lcom/ijinshan/kinghelper/common/c;

.field b:[Ljava/lang/String;

.field c:I

.field d:Landroid/graphics/Paint;

.field e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    .line 20
    iput-boolean v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->e:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    .line 20
    iput-boolean v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->e:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    .line 20
    iput-boolean v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->e:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kinghelper/common/c;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->a:Lcom/ijinshan/kinghelper/common/c;

    .line 106
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 64
    iget v2, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    .line 65
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->a:Lcom/ijinshan/kinghelper/common/c;

    .line 66
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumSortView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 68
    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return v5

    .line 70
    :pswitch_0
    iput-boolean v5, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->e:Z

    .line 71
    if-eq v2, v1, :cond_0

    if-eqz v3, :cond_0

    .line 72
    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v3, v0}, Lcom/ijinshan/kinghelper/common/c;->a(Ljava/lang/String;)V

    .line 74
    iput v1, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    .line 75
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumSortView;->invalidate()V

    goto :goto_0

    .line 81
    :pswitch_1
    if-eq v2, v1, :cond_0

    if-eqz v3, :cond_0

    .line 82
    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v3, v0}, Lcom/ijinshan/kinghelper/common/c;->a(Ljava/lang/String;)V

    .line 84
    iput v1, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    .line 85
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumSortView;->invalidate()V

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->e:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    .line 92
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumSortView;->invalidate()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->e:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "#40000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumSortView;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 41
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumSortView;->getWidth()I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v0, v2

    .line 43
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 46
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->c:I

    if-ne v2, v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    const-string v4, "#3399ff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 51
    :cond_1
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    div-int/lit8 v4, v1, 0x3

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 53
    mul-int v4, v0, v2

    add-int/2addr v4, v0

    int-to-float v4, v4

    .line 54
    iget-object v5, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 55
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumSortView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
