.class public Lcom/keniu/security/traffic/TrafficSoftDetailActivity;
.super Landroid/app/Activity;
.source "TrafficSoftDetailActivity.java"


# static fields
.field private static final k:I = 0x0

.field private static final l:I = 0x1


# instance fields
.field private a:[Lcom/keniu/security/traffic/u;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lorg/achartengine/b;

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    .line 38
    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->b:J

    .line 39
    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->c:J

    .line 40
    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->d:J

    .line 41
    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->e:J

    .line 42
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->f:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->g:Landroid/widget/TextView;

    .line 45
    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    .line 46
    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->j:J

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->d:J

    return-wide v0
.end method

.method private a([J)Lorg/achartengine/b/c;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x1f

    const/4 v3, 0x0

    .line 275
    new-instance v0, Lorg/achartengine/b/c;

    invoke-direct {v0}, Lorg/achartengine/b/c;-><init>()V

    .line 277
    new-instance v1, Lorg/achartengine/b/a;

    const v2, 0x7f0b034f

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/achartengine/b/a;-><init>(Ljava/lang/String;)V

    .line 282
    if-eqz p1, :cond_0

    move v2, v3

    .line 284
    :goto_0
    if-ge v2, v5, :cond_1

    .line 285
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/achartengine/b/a;->a(D)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 289
    :goto_1
    if-ge v2, v5, :cond_1

    .line 290
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/achartengine/b/a;->a(D)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    :cond_1
    invoke-virtual {v1}, Lorg/achartengine/b/a;->a()Lorg/achartengine/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/achartengine/b/c;->a(Lorg/achartengine/b/d;)V

    .line 296
    return-object v0
.end method

.method private a()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x402b

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 218
    new-instance v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 220
    new-instance v1, Lorg/achartengine/renderer/e;

    invoke-direct {v1}, Lorg/achartengine/renderer/e;-><init>()V

    .line 222
    invoke-virtual {v1}, Lorg/achartengine/renderer/e;->b()V

    .line 224
    invoke-virtual {v1}, Lorg/achartengine/renderer/e;->d()V

    .line 226
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/e;->a(Landroid/graphics/Paint$Align;)V

    .line 228
    invoke-virtual {v1, v11}, Lorg/achartengine/renderer/e;->a(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/e;->a(F)V

    .line 233
    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/c;)V

    .line 235
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM.dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v10

    :goto_0
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    int-to-long v6, v2

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v10

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v10

    const-string v5, "0"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    :cond_0
    aget-object v4, v3, v11

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v3, v11

    const-string v5, "0"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v3, v11

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    mul-double/2addr v1, v12

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    const v1, -0x606061

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    const-wide/high16 v1, 0x4014

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    const/high16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    invoke-virtual {v0, v10, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    invoke-virtual {v0, v11, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 237
    return-object v0

    .line 235
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(I)V
    .locals 12
    .parameter

    .prologue
    .line 153
    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/keniu/security/traffic/u;->a:J

    aput-wide v2, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 159
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/keniu/security/traffic/u;->b:J

    aput-wide v2, v0, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_1
    new-instance v1, Lorg/achartengine/b/c;

    invoke-direct {v1}, Lorg/achartengine/b/c;-><init>()V

    new-instance v2, Lorg/achartengine/b/a;

    const v3, 0x7f0b034f

    invoke-virtual {p0, v3}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/achartengine/b/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0x1f

    if-ge v3, v4, :cond_2

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/achartengine/b/a;->a(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/achartengine/b/a;->a()Lorg/achartengine/b/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/achartengine/b/c;->a(Lorg/achartengine/b/d;)V

    .line 164
    new-instance v2, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    new-instance v3, Lorg/achartengine/renderer/e;

    invoke-direct {v3}, Lorg/achartengine/renderer/e;-><init>()V

    invoke-virtual {v3}, Lorg/achartengine/renderer/e;->b()V

    invoke-virtual {v3}, Lorg/achartengine/renderer/e;->d()V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/e;->a(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/e;->a(Z)V

    const-wide/high16 v4, 0x402b

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/e;->a(F)V

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/c;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM.dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_3
    const/16 v5, 0x1f

    if-ge v4, v5, :cond_5

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    int-to-long v8, v4

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v5, v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "0"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    :cond_3
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v5, v7

    const-string v8, "0"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    int-to-double v6, v6

    invoke-virtual {v2, v6, v7, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-wide/high16 v3, 0x402b

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    const v3, -0x606061

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    const-wide/high16 v3, 0x4014

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    const/high16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 165
    sget-object v3, Lorg/achartengine/a/c;->a:Lorg/achartengine/a/c;

    invoke-static {p0, v1, v2, v3}, Lorg/achartengine/a;->a(Landroid/content/Context;Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/a/c;)Lorg/achartengine/b;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->h:Lorg/achartengine/b;

    .line 167
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->h:Lorg/achartengine/b;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/achartengine/b;->setBackgroundColor(I)V

    .line 169
    const-wide/high16 v3, 0x4049

    .line 170
    const-wide/16 v5, 0x0

    .line 172
    const/4 v1, 0x0

    :goto_4
    array-length v7, v0

    if-ge v1, v7, :cond_7

    .line 173
    aget-wide v7, v0, v1

    cmp-long v7, v7, v5

    if-lez v7, :cond_6

    .line 174
    aget-wide v5, v0, v1

    .line 172
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 177
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_a

    .line 178
    long-to-double v0, v5

    const-wide/high16 v3, 0x4090

    div-double/2addr v0, v3

    const-wide/high16 v3, 0x4090

    div-double/2addr v0, v3

    .line 180
    :goto_5
    const-wide v3, 0x3f847ae147ae147bL

    cmpg-double v3, v0, v3

    if-gez v3, :cond_8

    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-lez v3, :cond_8

    .line 181
    const-wide v0, 0x3f847ae147ae147bL

    .line 183
    :cond_8
    const-wide/high16 v3, 0x4010

    mul-double/2addr v0, v3

    const-wide/high16 v3, 0x4008

    div-double/2addr v0, v3

    .line 185
    invoke-virtual {v2, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 187
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 190
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 192
    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    .line 194
    const-wide/16 v5, 0x7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_9

    .line 195
    long-to-double v5, v3

    const-wide/high16 v7, 0x401a

    sub-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 196
    long-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 203
    :goto_6
    iget-wide v3, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->j:J

    iget-wide v5, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-double v3, v3

    .line 205
    const/4 v5, 0x4

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3fe0

    aput-wide v7, v5, v6

    const/4 v6, 0x1

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v3, v7

    aput-wide v3, v5, v6

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v3

    const/4 v3, 0x3

    aput-wide v0, v5, v3

    invoke-virtual {v2, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanLimits([D)V

    .line 208
    const v0, 0x7f0803df

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 209
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 210
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 212
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->h:Lorg/achartengine/b;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    return-void

    .line 198
    :cond_9
    const-wide/high16 v3, 0x3fe0

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 199
    const-wide/high16 v3, 0x401e

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    goto :goto_6

    :cond_a
    move-wide v0, v3

    goto/16 :goto_5

    .line 164
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a(I)V

    return-void
.end method

.method private a(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 243
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v1, v9

    .line 245
    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_2

    .line 246
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    int-to-long v5, v1

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 249
    aget-object v3, v2, v9

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    aget-object v3, v2, v9

    const-string v4, "0"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 251
    :cond_0
    aget-object v3, v2, v10

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    aget-object v3, v2, v10

    const-string v4, "0"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 253
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v2, v10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    add-int/lit8 v3, v1, 0x1

    int-to-double v3, v3

    invoke-virtual {p1, v3, v4, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_2
    const-wide/high16 v0, 0x402b

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 258
    const v0, -0x606061

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 260
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 261
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 262
    const-wide/high16 v0, 0x4014

    invoke-virtual {p1, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 263
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 264
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 265
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 266
    const/high16 v0, 0xff

    invoke-virtual {p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 267
    invoke-virtual {p1, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 268
    invoke-virtual {p1, v9, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    .line 269
    invoke-virtual {p1, v10, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 271
    return-void

    .line 264
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->b:J

    return-wide v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->c:J

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x1f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v8}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f030111

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v8}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 62
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    .line 64
    invoke-virtual {v2, v1}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->j:J

    .line 66
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 67
    const-string v3, "userId"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 68
    const-string v3, "packagename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    const-string v3, "label"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    const v1, 0x7f0803da

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-wide v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->i:J

    iget-wide v3, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->j:J

    invoke-virtual/range {v0 .. v6}, Lcom/keniu/security/traffic/z;->a(JJILjava/lang/String;)[Lcom/keniu/security/traffic/u;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/keniu/security/traffic/z;->a(JILjava/lang/String;)Lcom/keniu/security/traffic/u;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    if-nez v2, :cond_1

    .line 84
    new-array v2, v9, [Lcom/keniu/security/traffic/u;

    iput-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    move v2, v7

    .line 86
    :goto_1
    if-ge v2, v9, :cond_1

    .line 87
    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    new-instance v4, Lcom/keniu/security/traffic/u;

    invoke-direct {v4}, Lcom/keniu/security/traffic/u;-><init>()V

    aput-object v4, v3, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 92
    if-nez v1, :cond_2

    .line 95
    iput-wide v10, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->d:J

    .line 96
    iput-wide v10, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->e:J

    :goto_2
    move v0, v7

    .line 102
    :goto_3
    if-ge v0, v9, :cond_3

    .line 103
    iget-wide v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->b:J

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/keniu/security/traffic/u;->a:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->b:J

    .line 104
    iget-wide v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->c:J

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a:[Lcom/keniu/security/traffic/u;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/keniu/security/traffic/u;->b:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->c:J

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 98
    :cond_2
    iget-wide v2, v1, Lcom/keniu/security/traffic/u;->a:J

    iput-wide v2, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->d:J

    .line 99
    iget-wide v0, v1, Lcom/keniu/security/traffic/u;->b:J

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->e:J

    goto :goto_2

    .line 107
    :cond_3
    const v0, 0x7f0803db

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->f:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->f:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->d:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v0, 0x7f0803dc

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->g:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->g:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->b:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f0803d8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 112
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 113
    invoke-direct {p0, v7}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->a(I)V

    .line 114
    const v0, 0x7f0803d7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 115
    new-instance v1, Lcom/keniu/security/traffic/ct;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ct;-><init>(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 133
    const v0, 0x7f0803de

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/cu;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/cu;-><init>(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->finish()V

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
