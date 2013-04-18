.class public Lcom/keniu/security/traffic/TrafficIcon2;
.super Landroid/view/View;
.source "TrafficIcon2.java"

# interfaces
.implements Lcom/keniu/security/traffic/dc;


# static fields
.field public static a:Z = false

.field private static final b:I = 0x60

.field private static final c:I = 0x3

.field private static final d:I = 0x32

.field private static final e:I = 0x3e8

.field private static final s:I = 0x4b

.field private static final u:I = 0x1a

.field private static final y:I = 0xcb


# instance fields
.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Landroid/graphics/Paint;

.field private r:Lcom/keniu/security/traffic/db;

.field private t:I

.field private v:I

.field private w:F

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->q:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Lcom/keniu/security/traffic/db;

    invoke-direct {v0}, Lcom/keniu/security/traffic/db;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->r:Lcom/keniu/security/traffic/db;

    .line 49
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ee

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->g:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->j:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->l:Landroid/graphics/Bitmap;

    .line 58
    iput v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    .line 59
    iput v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    .line 60
    const-string v0, "100%"

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->p:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->r:Lcom/keniu/security/traffic/db;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/keniu/security/traffic/db;->a(IJLcom/keniu/security/traffic/dc;)Z

    .line 144
    return-void
.end method

.method public final a(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 68
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 71
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->j:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficIcon2;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->k:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficIcon2;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->m:Landroid/graphics/Bitmap;

    .line 85
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->g:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficIcon2;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->h:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x434b

    div-float/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    .line 96
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    const/high16 v1, 0x4296

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    .line 97
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    const/high16 v1, 0x41d0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->v:I

    .line 98
    const/high16 v0, 0x42c0

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->x:I

    .line 99
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->q:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->q:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 106
    const/high16 v0, 0x3f80

    .line 114
    :goto_0
    const/high16 v1, 0x43b4

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x4066800000000000L

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 120
    const/high16 v2, 0x43b4

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    .line 121
    const/high16 v1, 0x432d

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    .line 138
    :goto_1
    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c8

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->p:Ljava/lang/String;

    .line 139
    :goto_2
    return-void

    .line 90
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 107
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_2

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_2
    sub-long v0, p3, p1

    long-to-float v0, v0

    long-to-float v1, p3

    div-float/2addr v0, v1

    .line 111
    const v1, 0x3f7d70a4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3c23d70a

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 122
    :cond_3
    const/high16 v2, 0x4220

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 123
    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->v:I

    int-to-float v1, v1

    const/high16 v2, 0x40a0

    iget v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    goto :goto_1

    .line 124
    :cond_4
    const/high16 v2, 0x43b4

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    const/high16 v2, 0x439c

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    .line 125
    const/high16 v1, 0x4329

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    goto :goto_1

    .line 127
    :cond_5
    const/high16 v2, 0x4334

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_6

    .line 129
    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    int-to-double v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    sub-double v1, v2, v4

    iget v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->v:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    goto/16 :goto_1

    .line 132
    :cond_6
    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    int-to-double v2, v2

    const/high16 v4, 0x43b4

    sub-float v1, v4, v1

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    add-double v1, v2, v4

    iget v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->v:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    goto/16 :goto_1
.end method

.method public final a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->invalidate()V

    .line 212
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 213
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    iput v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    .line 214
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 217
    :cond_0
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->o:I

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    if-le v0, v1, :cond_1

    .line 218
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    .line 222
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->r:Lcom/keniu/security/traffic/db;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/db;->a()V

    .line 148
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 246
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 249
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v4, 0x4329

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 163
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    int-to-float v0, v0

    const/high16 v1, 0x4260

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    int-to-float v0, v0

    const/high16 v1, 0x4317

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 166
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->v:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->t:I

    iget v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->v:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 169
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 170
    int-to-float v0, v7

    const/high16 v1, 0x428c

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 171
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->k:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficIcon2;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 183
    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->x:I

    sub-int/2addr v2, v7

    .line 184
    iget v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 186
    int-to-float v2, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    :cond_1
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->p:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v8, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 203
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficIcon2;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficIcon2;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 188
    :cond_2
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    int-to-float v0, v0

    const/high16 v1, 0x431a

    iget v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    sget-boolean v0, Lcom/keniu/security/traffic/TrafficIcon2;->a:Z

    if-eqz v0, :cond_3

    .line 190
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficIcon2;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 193
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 194
    :cond_3
    iget v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->n:I

    iget v1, p0, Lcom/keniu/security/traffic/TrafficIcon2;->w:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->p:Ljava/lang/String;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficIcon2;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_1
.end method
