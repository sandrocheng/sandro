.class public Lcom/keniu/security/software/CustomTextView;
.super Landroid/view/View;
.source "CustomTextView.java"


# instance fields
.field public a:I

.field public b:I

.field private c:Landroid/graphics/Paint;

.field private d:Ljava/lang/String;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/software/CustomTextView;->e:F

    .line 38
    invoke-virtual {p0}, Lcom/keniu/security/software/CustomTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 42
    const/high16 v2, 0x4190

    mul-float/2addr v2, v1

    .line 43
    const v3, 0x7f090004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 44
    const/high16 v3, 0x4040

    mul-float/2addr v1, v3

    .line 47
    iput v1, p0, Lcom/keniu/security/software/CustomTextView;->e:F

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    .line 51
    iget-object v1, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v1, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    return-void
.end method

.method private a()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    iput v7, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    iget-object v0, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/keniu/security/software/CustomTextView;->e:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v1, v7

    move v2, v7

    move v3, v7

    :goto_0
    iget-object v4, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v5, v8, [F

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    aget v4, v5, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v2, v4

    iget v4, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    move v2, v7

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v8

    if-ne v1, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    .line 119
    iget v0, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    return v0
.end method

.method private a(I)I
    .locals 4
    .parameter

    .prologue
    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 159
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 162
    const/16 v2, 0x1f4

    .line 163
    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 173
    :goto_0
    iput v0, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    .line 174
    return v0

    .line 169
    :cond_0
    const/high16 v3, 0x4000

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 171
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    iput v7, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    .line 128
    iget-object v0, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 129
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/keniu/security/software/CustomTextView;->e:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v1, v7

    move v2, v7

    move v3, v7

    .line 133
    :goto_0
    iget-object v4, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 136
    new-array v5, v8, [F

    .line 137
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 138
    iget-object v6, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 140
    aget v4, v5, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v2, v4

    .line 141
    iget v4, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    if-le v2, v4, :cond_1

    .line 142
    add-int/lit8 v2, v3, 0x1

    .line 144
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    move v2, v7

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v8

    if-ne v1, v4, :cond_0

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    :cond_2
    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    .line 154
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    .line 180
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 72
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/keniu/security/software/CustomTextView;->e:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    move v3, v10

    move v4, v10

    move v5, v10

    move v6, v10

    .line 74
    :goto_0
    iget-object v7, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 76
    iget-object v7, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 77
    new-array v8, v11, [F

    .line 78
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 79
    iget-object v9, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 81
    aget v7, v8, v10

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/2addr v6, v7

    .line 82
    iget v7, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    if-le v6, v7, :cond_1

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    iget-object v6, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v5, v3, -0x1

    move v6, v10

    move v12, v3

    move v3, v5

    move v5, v12

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v7, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v11

    if-ne v3, v7, :cond_0

    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    iget-object v7, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_2
    mul-int v3, v4, v2

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    .line 97
    iget v3, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    iget v5, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 98
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v3, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    iget v3, p0, Lcom/keniu/security/software/CustomTextView;->e:F

    float-to-int v3, v3

    sub-int v3, v0, v3

    move v5, v10

    move v6, v10

    .line 100
    :goto_2
    if-ge v6, v4, :cond_3

    .line 102
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/high16 v7, 0x4000

    mul-int v8, v2, v5

    add-int/2addr v8, v3

    int-to-float v8, v8

    iget-object v9, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_2

    .line 104
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/16 v2, 0x1f4

    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    .line 110
    iput v8, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    iget-object v1, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lcom/keniu/security/software/CustomTextView;->e:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    move v2, v8

    move v3, v8

    move v4, v8

    :goto_1
    iget-object v5, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v9, [F

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/keniu/security/software/CustomTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    aget v5, v6, v8

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/keniu/security/software/CustomTextView;->b:I

    if-le v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v8

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    :cond_1
    const/high16 v3, 0x4000

    if-ne v0, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 110
    :cond_2
    iget-object v5, p0, Lcom/keniu/security/software/CustomTextView;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v9

    if-ne v2, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    iget v1, p0, Lcom/keniu/security/software/CustomTextView;->a:I

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/software/CustomTextView;->setMeasuredDimension(II)V

    .line 112
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/keniu/security/software/CustomTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 114
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method
