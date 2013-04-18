.class public abstract Lorg/achartengine/a/e;
.super Lorg/achartengine/a/a;
.source "RoundChart.java"


# static fields
.field protected static final a:I = 0xa

.field protected static final d:I = 0x7fffffff

.field private static final g:J = 0x628948a2be5571d6L


# instance fields
.field protected b:Lorg/achartengine/b/a;

.field protected c:Lorg/achartengine/renderer/b;

.field protected e:I

.field protected f:I


# direct methods
.method private constructor <init>(Lorg/achartengine/b/a;Lorg/achartengine/renderer/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const v0, 0x7fffffff

    .line 55
    invoke-direct {p0}, Lorg/achartengine/a/a;-><init>()V

    .line 43
    iput v0, p0, Lorg/achartengine/a/e;->e:I

    .line 45
    iput v0, p0, Lorg/achartengine/a/e;->f:I

    .line 56
    iput-object p1, p0, Lorg/achartengine/a/e;->b:Lorg/achartengine/b/a;

    .line 57
    iput-object p2, p0, Lorg/achartengine/a/e;->c:Lorg/achartengine/renderer/b;

    .line 58
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lorg/achartengine/a/e;->c:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isShowLabels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/achartengine/a/e;->c:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->getLabelsColor()I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    iget-object v0, p0, Lorg/achartengine/a/e;->c:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->getChartTitleTextSize()F

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lorg/achartengine/a/e;->c:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->getChartTitle()Ljava/lang/String;

    move-result-object v0

    div-int/lit8 v1, p4, 0x2

    add-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v2, p3

    iget-object v3, p0, Lorg/achartengine/a/e;->c:Lorg/achartengine/renderer/b;

    invoke-virtual {v3}, Lorg/achartengine/renderer/b;->getChartTitleTextSize()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0xa

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lorg/achartengine/a/e;->e:I

    .line 154
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/c;FFLandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x40a0

    .line 115
    sub-float v2, p4, v1

    const/high16 v0, 0x4120

    add-float v3, p3, v0

    add-float v4, p4, v1

    move-object v0, p1

    move v1, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    return-void
.end method

.method public final b()Lorg/achartengine/renderer/b;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/achartengine/a/e;->c:Lorg/achartengine/renderer/b;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput p1, p0, Lorg/achartengine/a/e;->f:I

    .line 164
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/achartengine/a/e;->e:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/achartengine/a/e;->f:I

    return v0
.end method
