.class public Lcom/tencent/powermanager/uilib/BatteryFlowView;
.super Landroid/view/View;


# static fields
.field private static a:F

.field private static c:I

.field private static f:I

.field private static i:I

.field private static j:I


# instance fields
.field private b:F

.field private d:I

.field private e:I

.field private g:I

.field private h:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:[I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f40

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a:F

    const/16 v0, 0xf

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->k:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    iput v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    iput v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 6

    const/high16 v5, 0x3f80

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->k:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    iput v5, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    iput v5, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    const v0, 0x415ccccd

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    const/16 v0, 0x37

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->e:I

    const/16 v0, 0x21

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->g:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->h:I

    const/16 v0, 0xc

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->f:I

    const/16 v0, 0xf

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4089

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x407e

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    :cond_1
    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    sget v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->c:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->e:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->g:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->h:I

    :cond_2
    sget v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->c:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->k:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    :cond_3
    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    sget v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    mul-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->f:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    sget v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    mul-float/2addr v0, v1

    :goto_1
    float-to-int v0, v0

    sput v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    invoke-direct {p0, p2}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a([I)V

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->c()V

    return-void

    :cond_4
    sget v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_5
    sget v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    mul-float/2addr v0, v1

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;IJ)V
    .locals 16

    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    mul-float/2addr v2, v3

    sget v3, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v3, v3

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v3, v3

    const v4, 0x3c23d70a

    mul-float/2addr v3, v4

    move-wide/from16 v0, p3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    sget v4, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a:F

    mul-float v6, v3, v4

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget v3, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020104

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    float-to-double v9, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v11, v4

    const-wide v13, 0x3fb999999999999aL

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v4, v9

    sget v9, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    int-to-float v9, v9

    const/4 v10, 0x2

    if-gt v3, v10, :cond_3

    const v3, 0x3f8ccccd

    :goto_2
    mul-float/2addr v3, v9

    add-float/2addr v3, v5

    move v15, v4

    move-object v4, v2

    move v2, v15

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->e:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    int-to-float v2, v2

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_0

    const v2, 0x3f933333

    sget v4, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020103

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v10, 0x3

    if-gt v3, v10, :cond_4

    const v3, 0x3f666666

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    if-gt v3, v10, :cond_5

    const v3, 0x3f19999a

    goto :goto_2

    :cond_5
    const/high16 v3, 0x3f00

    goto :goto_2

    :cond_6
    sget-boolean v2, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020101

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_4
    float-to-double v9, v5

    const-wide/high16 v11, 0x3fe0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v13, v4

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    double-to-int v4, v9

    sget v9, Lcom/tencent/powermanager/uilib/BatteryFlowView;->i:I

    int-to-float v9, v9

    const/4 v10, 0x2

    if-gt v3, v10, :cond_8

    const v3, 0x3f333333

    :goto_5
    mul-float/2addr v3, v9

    sub-float v3, v5, v3

    move v15, v4

    move-object v4, v2

    move v2, v15

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020102

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    :cond_8
    const/4 v10, 0x3

    if-gt v3, v10, :cond_9

    const/high16 v3, 0x3f80

    goto :goto_5

    :cond_9
    const v3, 0x3f99999a

    goto :goto_5
.end method

.method private a([I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x20

    if-nez p1, :cond_0

    new-array p1, v0, [I

    :cond_0
    array-length v1, p1

    if-ge v1, v3, :cond_1

    iput v3, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->p:I

    :goto_0
    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->p:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v1, p1

    iput v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->p:I

    goto :goto_0

    :cond_2
    array-length v0, p1

    if-ge v0, v3, :cond_3

    array-length v0, p1

    :goto_2
    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->p:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->p:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget v1, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->q:I

    return-void
.end method

.method private b(Landroid/graphics/Canvas;IJ)V
    .locals 9

    int-to-float v0, p2

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    mul-float/2addr v0, v1

    sget v1, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v1, v1

    add-float v7, v0, v1

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL

    mul-double/2addr v0, v2

    long-to-double v2, p3

    mul-double/2addr v0, v2

    sget v2, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v8, v0

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020105

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->n:F

    iget v5, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->m:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v1

    :goto_0
    const/high16 v1, 0x3f80

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1

    int-to-float v1, v4

    mul-float/2addr v1, v5

    float-to-int v1, v1

    :goto_1
    int-to-float v2, v2

    int-to-float v5, v3

    div-float/2addr v2, v5

    int-to-float v1, v1

    int-to-float v5, v4

    div-float/2addr v1, v5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    float-to-double v1, v7

    const-wide/high16 v3, 0x3fe0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    sub-int/2addr v2, v8

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1
.end method

.method private c()V
    .locals 3

    const v2, -0x363230

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->y:Landroid/graphics/Path;

    iput v2, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->r:I

    iput v2, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->s:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->t:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->t:Landroid/graphics/Paint;

    sget v1, Lcom/tencent/powermanager/uilib/BatteryFlowView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->t:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->u:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->v:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->v:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->w:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->x:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->x:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->q:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->t:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4140

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const v2, -0x100c09

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->k:I

    div-int/2addr v2, v3

    int-to-float v10, v2

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->k:I

    if-ge v8, v2, :cond_2

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    if-gt v9, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    rem-int v2, v9, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    int-to-float v3, v9

    mul-float/2addr v2, v3

    sget v3, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->w:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1

    :cond_1
    int-to-float v2, v8

    mul-float/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->y:Landroid/graphics/Path;

    sget v4, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v4, v4

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->y:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->q:I

    sget v5, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->y:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->x:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->g:I

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    add-float v14, v2, v3

    sget v2, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->q:I

    sget v5, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->v:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v2, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->g:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->q:I

    sget v5, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->g:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->u:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v10, v2

    move-wide v6, v3

    move v2, v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    array-length v3, v3

    if-ge v10, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    aget v3, v3, v10

    int-to-long v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    rem-int v3, v10, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_f

    add-int/lit8 v13, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    mul-int/2addr v2, v13

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    long-to-int v4, v2

    const v5, 0x36ee80

    div-int/2addr v4, v5

    const-wide/32 v8, 0x36ee80

    rem-long/2addr v2, v8

    long-to-int v2, v2

    const v3, 0xea60

    div-int v5, v2, v3

    const/16 v2, 0xa

    if-ge v4, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_3
    const/16 v2, 0xa

    if-ge v5, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-double v3, v10

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v3, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    float-to-double v8, v5

    mul-double/2addr v3, v8

    double-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->h:I

    int-to-float v4, v4

    const v5, 0x3f19999a

    mul-float/2addr v4, v5

    add-float/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-lez v2, :cond_3

    add-int/lit8 v2, v10, -0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    mul-float/2addr v2, v3

    sget v3, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b:F

    mul-float/2addr v2, v4

    sget v4, Lcom/tencent/powermanager/uilib/BatteryFlowView;->j:I

    int-to-float v4, v4

    add-float v5, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-double v8, v2

    const-wide v15, 0x3f847ae147ae147bL

    mul-double/2addr v8, v15

    long-to-double v15, v11

    mul-double/2addr v8, v15

    sget v2, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a:F

    float-to-double v15, v2

    mul-double/2addr v8, v15

    double-to-int v8, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-double v15, v2

    const-wide v17, 0x3f847ae147ae147bL

    mul-double v15, v15, v17

    long-to-double v0, v6

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    sget v2, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a:F

    float-to-double v0, v2

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-int v9, v15

    const-wide/16 v15, 0x0

    cmp-long v2, v6, v15

    if-lez v2, :cond_3

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const v2, -0x774438

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x4040

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    sub-int/2addr v2, v9

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    sub-int/2addr v2, v8

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, -0x1

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x4040

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->close()V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->d:I

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v6, v11

    move v2, v13

    goto/16 :goto_2

    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    array-length v3, v3

    if-ge v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    aget v3, v3, v2

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->l:I

    rem-int v5, v2, v5

    if-nez v5, :cond_7

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b(Landroid/graphics/Canvas;IJ)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gez v2, :cond_a

    :cond_9
    :goto_7
    return-void

    :cond_a
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    array-length v3, v3

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    if-ltz v3, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/powermanager/uilib/BatteryFlowView;->o:[I

    aget v3, v3, v2

    int-to-long v3, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b(Landroid/graphics/Canvas;IJ)V

    sget-boolean v5, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v5, :cond_d

    sget v3, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a(Landroid/graphics/Canvas;IJ)V

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a(Landroid/graphics/Canvas;IJ)V

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    move v13, v2

    goto/16 :goto_5

    :array_0
    .array-data 0x4
        0xc8t 0xbbt 0x88t 0x33t
        0xfft 0xfft 0xfft 0x33t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
