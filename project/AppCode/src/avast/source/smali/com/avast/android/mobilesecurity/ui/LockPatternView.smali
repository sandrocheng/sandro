.class public Lcom/avast/android/mobilesecurity/ui/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# instance fields
.field private final A:Landroid/graphics/Path;

.field private final B:Landroid/graphics/Rect;

.field private C:I

.field private D:I

.field private E:I

.field private final F:Landroid/graphics/Matrix;

.field private final G:Landroid/graphics/Matrix;

.field private a:Z

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/avast/android/mobilesecurity/ui/e;

.field private e:Ljava/util/ArrayList;

.field private f:[[Z

.field private g:F

.field private h:F

.field private i:J

.field private j:Lcom/avast/android/mobilesecurity/ui/d;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:F

.field private final p:I

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x80

    const/high16 v5, -0x4080

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a:Z

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    .line 82
    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f:[[Z

    .line 89
    iput v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    .line 90
    iput v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    .line 94
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/d;->a:Lcom/avast/android/mobilesecurity/ui/d;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    .line 95
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->k:Z

    .line 96
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->l:Z

    .line 97
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->m:Z

    .line 98
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    .line 100
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->o:F

    .line 101
    iput v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->p:I

    .line 102
    const v0, 0x3f19999a

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->q:F

    .line 116
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->A:Landroid/graphics/Path;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->B:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->G:Landroid/graphics/Matrix;

    .line 255
    iput v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->E:I

    .line 257
    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->setClickable(Z)V

    .line 259
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 262
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 263
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 267
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 270
    const v0, 0x7f0200a1

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->t:Landroid/graphics/Bitmap;

    .line 271
    const v0, 0x7f0200a2

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->u:Landroid/graphics/Bitmap;

    .line 272
    const v0, 0x7f02014e

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->v:Landroid/graphics/Bitmap;

    .line 273
    const v0, 0x7f02014f

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->w:Landroid/graphics/Bitmap;

    .line 274
    const v0, 0x7f020150

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->x:Landroid/graphics/Bitmap;

    .line 276
    const v0, 0x7f02014c

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->y:Landroid/graphics/Bitmap;

    .line 277
    const v0, 0x7f02014d

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->z:Landroid/graphics/Bitmap;

    .line 280
    const/4 v0, 0x5

    new-array v2, v0, [Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->t:Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->u:Landroid/graphics/Bitmap;

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->v:Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->w:Landroid/graphics/Bitmap;

    aput-object v0, v2, v4

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->x:Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    .line 283
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .line 284
    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    .line 285
    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method private a(F)I
    .locals 6
    .parameter

    .prologue
    .line 594
    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    .line 595
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->q:F

    mul-float v2, v1, v0

    .line 597
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 598
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 600
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 601
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 605
    :goto_1
    return v0

    .line 598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 465
    .line 466
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 467
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    .line 478
    :goto_0
    :sswitch_0
    return p2

    .line 472
    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 467
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(FF)Lcom/avast/android/mobilesecurity/ui/c;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b(FF)Lcom/avast/android/mobilesecurity/ui/c;

    move-result-object v5

    .line 524
    if-eqz v5, :cond_5

    .line 528
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 530
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/c;

    .line 531
    iget v1, v5, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    iget v4, v0, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    sub-int v6, v1, v4

    .line 532
    iget v1, v5, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    iget v4, v0, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    sub-int v7, v1, v4

    .line 534
    iget v1, v0, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    .line 535
    iget v4, v0, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    .line 537
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 538
    iget v8, v0, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    if-lez v6, :cond_6

    move v1, v2

    :goto_0
    add-int/2addr v1, v8

    .line 541
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_7

    .line 542
    iget v0, v0, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    if-lez v7, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    .line 545
    :goto_1
    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/ui/c;->a(II)Lcom/avast/android/mobilesecurity/ui/c;

    move-result-object v0

    .line 548
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f:[[Z

    iget v3, v0, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    aget-object v1, v1, v3

    iget v3, v0, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 550
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(Lcom/avast/android/mobilesecurity/ui/c;)V

    .line 552
    :cond_3
    invoke-direct {p0, v5}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(Lcom/avast/android/mobilesecurity/ui/c;)V

    .line 553
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->m:Z

    if-eqz v0, :cond_4

    .line 554
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->performHapticFeedback(II)Z

    :cond_4
    move-object v0, v5

    .line 560
    :cond_5
    return-object v0

    :cond_6
    move v1, v3

    .line 538
    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/avast/android/mobilesecurity/ui/e;->a(Ljava/util/List;)V

    .line 380
    :cond_0
    const v0, 0x7f0c03a5

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b(I)V

    .line 381
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLcom/avast/android/mobilesecurity/ui/c;Lcom/avast/android/mobilesecurity/ui/c;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v1, Lcom/avast/android/mobilesecurity/ui/d;->c:Lcom/avast/android/mobilesecurity/ui/d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1004
    :goto_0
    iget v1, p5, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    .line 1005
    iget v2, p4, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    .line 1006
    iget v3, p5, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    .line 1007
    iget v4, p4, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    .line 1010
    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    float-to-int v5, v5

    iget v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1011
    iget v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    float-to-int v6, v6

    iget v7, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 1016
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->y:Landroid/graphics/Bitmap;

    .line 1017
    :goto_1
    iget v7, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    .line 1018
    iget v8, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    .line 1021
    sub-int/2addr v1, v2

    int-to-double v1, v1

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1023
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42b4

    add-float/2addr v1, v2

    .line 1026
    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    iget v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1027
    iget v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1028
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    int-to-float v5, v5

    add-float/2addr v5, p2

    int-to-float v6, v6

    add-float/2addr v6, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1029
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1030
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1031
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1032
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    int-to-float v3, v7

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v8

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1033
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1034
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->F:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1035
    return-void

    .line 1002
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->z:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/Canvas;IIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/high16 v7, 0x3f80

    .line 1047
    if-eqz p4, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v1, Lcom/avast/android/mobilesecurity/ui/d;->c:Lcom/avast/android/mobilesecurity/ui/d;

    if-eq v0, v1, :cond_1

    .line 1049
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->v:Landroid/graphics/Bitmap;

    .line 1050
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->t:Landroid/graphics/Bitmap;

    .line 1068
    :goto_0
    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    .line 1069
    iget v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    .line 1071
    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    .line 1072
    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    .line 1074
    int-to-float v2, v2

    sub-float v2, v4, v2

    div-float/2addr v2, v6

    float-to-int v2, v2

    .line 1075
    int-to-float v3, v3

    sub-float v3, v5, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 1078
    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1079
    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    iget v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1081
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->G:Landroid/graphics/Matrix;

    add-int/2addr v2, p2

    int-to-float v2, v2

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1082
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->G:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1083
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->G:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1084
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->G:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->D:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1086
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->G:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1087
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->G:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1088
    return-void

    .line 1051
    :cond_1
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    if-eqz v0, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->w:Landroid/graphics/Bitmap;

    .line 1054
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->u:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v1, Lcom/avast/android/mobilesecurity/ui/d;->c:Lcom/avast/android/mobilesecurity/ui/d;

    if-ne v0, v1, :cond_3

    .line 1057
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->x:Landroid/graphics/Bitmap;

    .line 1058
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->t:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1059
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v1, Lcom/avast/android/mobilesecurity/ui/d;->a:Lcom/avast/android/mobilesecurity/ui/d;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v1, Lcom/avast/android/mobilesecurity/ui/d;->b:Lcom/avast/android/mobilesecurity/ui/d;

    if-ne v0, v1, :cond_5

    .line 1062
    :cond_4
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->w:Landroid/graphics/Bitmap;

    .line 1063
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->t:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1065
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 19
    .parameter

    .prologue
    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    .line 684
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    add-int/lit8 v2, v11, 0x1

    if-ge v10, v2, :cond_d

    .line 685
    if-ge v10, v11, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    .line 686
    :goto_1
    if-ge v10, v11, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    move v3, v2

    .line 687
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 688
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(FF)Lcom/avast/android/mobilesecurity/ui/c;

    move-result-object v13

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 690
    if-eqz v13, :cond_0

    const/4 v2, 0x1

    if-ne v14, v2, :cond_0

    .line 691
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b()V

    .line 695
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 696
    move-object/from16 v0, p0

    iget v5, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 697
    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    const v6, 0x3c23d70a

    mul-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 698
    move-object/from16 v0, p0

    iget v6, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    .line 699
    move-object/from16 v0, p0

    iget v5, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    .line 701
    move-object/from16 v0, p0

    iput v4, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    .line 702
    move-object/from16 v0, p0

    iput v3, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    .line 704
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    if-eqz v2, :cond_c

    if-lez v14, :cond_c

    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    .line 706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->o:F

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f00

    mul-float v16, v2, v7

    .line 708
    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/ui/c;

    .line 710
    iget v7, v2, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v7

    .line 711
    iget v2, v2, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v2

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->B:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 720
    cmpg-float v8, v7, v4

    if-gez v8, :cond_7

    move v8, v4

    move v9, v7

    .line 728
    :goto_3
    cmpg-float v4, v2, v3

    if-gez v4, :cond_8

    move v4, v2

    .line 737
    :goto_4
    sub-float v9, v9, v16

    float-to-int v9, v9

    sub-float v4, v4, v16

    float-to-int v4, v4

    add-float v8, v8, v16

    float-to-int v8, v8

    add-float v3, v3, v16

    float-to-int v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v4, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 740
    cmpg-float v3, v7, v6

    if-gez v3, :cond_9

    move v3, v6

    .line 748
    :goto_5
    cmpg-float v4, v2, v5

    if-gez v4, :cond_1

    move/from16 v18, v5

    move v5, v2

    move/from16 v2, v18

    .line 757
    :cond_1
    sub-float v4, v7, v16

    float-to-int v4, v4

    sub-float v5, v5, v16

    float-to-int v5, v5

    add-float v3, v3, v16

    float-to-int v3, v3

    add-float v2, v2, v16

    float-to-int v2, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 761
    if-eqz v13, :cond_3

    .line 762
    iget v2, v13, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v4

    .line 763
    iget v2, v13, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v3

    .line 765
    const/4 v2, 0x2

    if-lt v14, v2, :cond_b

    .line 767
    add-int/lit8 v2, v14, -0x1

    sub-int v5, v14, v12

    sub-int/2addr v2, v5

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/ui/c;

    .line 768
    iget v5, v2, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v5

    .line 769
    iget v2, v2, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v2

    .line 771
    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    .line 779
    :cond_2
    cmpg-float v6, v3, v2

    if-gez v6, :cond_a

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    .line 791
    :goto_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    .line 792
    move-object/from16 v0, p0

    iget v7, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    .line 794
    sub-float/2addr v5, v6

    float-to-int v5, v5

    sub-float/2addr v4, v7

    float-to-int v4, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    add-float/2addr v2, v7

    float-to-int v2, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 799
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 684
    :cond_4
    :goto_7
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_0

    .line 685
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    goto/16 :goto_1

    .line 686
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move v3, v2

    goto/16 :goto_2

    :cond_7
    move v8, v7

    move v9, v4

    .line 725
    goto/16 :goto_3

    :cond_8
    move v4, v3

    move v3, v2

    .line 733
    goto/16 :goto_4

    :cond_9
    move v3, v7

    move v7, v6

    .line 745
    goto/16 :goto_5

    :cond_a
    move/from16 v18, v3

    move v3, v4

    move v4, v2

    move/from16 v2, v18

    .line 784
    goto :goto_6

    :cond_b
    move v2, v3

    move v5, v4

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    .line 788
    goto :goto_6

    .line 801
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->invalidate()V

    goto :goto_7

    .line 805
    :cond_d
    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/ui/c;)V
    .locals 3
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f:[[Z

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/c;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/c;->b()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 565
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a()V

    .line 567
    return-void
.end method

.method private b(F)I
    .locals 6
    .parameter

    .prologue
    .line 614
    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    .line 615
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->q:F

    mul-float v2, v1, v0

    .line 617
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 618
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 620
    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 621
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 625
    :goto_1
    return v0

    .line 618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private b(FF)Lcom/avast/android/mobilesecurity/ui/c;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(F)I

    move-result v1

    .line 573
    if-gez v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-object v0

    .line 576
    :cond_1
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b(F)I

    move-result v2

    .line 577
    if-ltz v2, :cond_0

    .line 581
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 584
    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/ui/c;->a(II)Lcom/avast/android/mobilesecurity/ui/c;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/ui/e;->a()V

    .line 387
    :cond_0
    const v0, 0x7f0c03a3

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b(I)V

    .line 388
    return-void
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 809
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->sendAccessibilityEvent(I)V

    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 811
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 815
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    .line 817
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c()V

    .line 818
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->invalidate()V

    .line 826
    :cond_0
    return-void
.end method

.method private c(I)F
    .locals 3
    .parameter

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/avast/android/mobilesecurity/ui/e;->b(Ljava/util/List;)V

    .line 394
    :cond_0
    const v0, 0x7f0c03a6

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b(I)V

    .line 395
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 829
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e()V

    .line 830
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 832
    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(FF)Lcom/avast/android/mobilesecurity/ui/c;

    move-result-object v2

    .line 833
    if-eqz v2, :cond_1

    .line 834
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    .line 835
    sget-object v3, Lcom/avast/android/mobilesecurity/ui/d;->a:Lcom/avast/android/mobilesecurity/ui/d;

    iput-object v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    .line 836
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b()V

    .line 841
    :goto_0
    if-eqz v2, :cond_0

    .line 842
    iget v3, v2, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    invoke-direct {p0, v3}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v3

    .line 843
    iget v2, v2, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    invoke-direct {p0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v2

    .line 845
    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    div-float/2addr v4, v6

    .line 846
    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    div-float/2addr v5, v6

    .line 848
    sub-float v6, v3, v4

    float-to-int v6, v6

    sub-float v7, v2, v5

    float-to-int v7, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p0, v6, v7, v3, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->invalidate(IIII)V

    .line 851
    :cond_0
    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    .line 852
    iput v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    .line 859
    return-void

    .line 838
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    .line 839
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d()V

    goto :goto_0
.end method

.method private d(I)F
    .locals 3
    .parameter

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d:Lcom/avast/android/mobilesecurity/ui/e;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/ui/e;->b()V

    .line 401
    :cond_0
    const v0, 0x7f0c03a4

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b(I)V

    .line 402
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 416
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f()V

    .line 417
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/d;->a:Lcom/avast/android/mobilesecurity/ui/d;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    .line 418
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->invalidate()V

    .line 419
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 425
    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 426
    :goto_1
    if-ge v0, v4, :cond_0

    .line 427
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 430
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/ui/d;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    .line 362
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/d;->b:Lcom/avast/android/mobilesecurity/ui/d;

    if-ne p1, v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->i:J

    .line 368
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/c;

    .line 369
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/c;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v1

    iput v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    .line 370
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/c;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    .line 371
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f()V

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->invalidate()V

    .line 374
    return-void
.end method

.method public a(Lcom/avast/android/mobilesecurity/ui/d;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f()V

    .line 347
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/c;

    .line 348
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f:[[Z

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/c;->a()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/c;->b()I

    move-result v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(Lcom/avast/android/mobilesecurity/ui/d;)V

    .line 352
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->C:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter

    .prologue
    .line 871
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    .line 872
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 873
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f:[[Z

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v3, Lcom/avast/android/mobilesecurity/ui/d;->b:Lcom/avast/android/mobilesecurity/ui/d;

    if-ne v2, v3, :cond_2

    .line 880
    add-int/lit8 v2, v12, 0x1

    mul-int/lit16 v2, v2, 0x12c

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->i:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    rem-int v4, v3, v2

    .line 883
    div-int/lit16 v5, v4, 0x12c

    .line 885
    invoke-direct/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->f()V

    .line 886
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    .line 887
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/ui/c;

    .line 888
    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/ui/c;->a()I

    move-result v6

    aget-object v6, v13, v6

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/ui/c;->b()I

    move-result v2

    const/4 v7, 0x1

    aput-boolean v7, v6, v2

    .line 886
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 893
    :cond_0
    if-lez v5, :cond_3

    if-ge v5, v12, :cond_3

    const/4 v2, 0x1

    .line 896
    :goto_1
    if-eqz v2, :cond_1

    .line 897
    rem-int/lit16 v2, v4, 0x12c

    int-to-float v2, v2

    const/high16 v3, 0x4396

    div-float v3, v2, v3

    .line 901
    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/ui/c;

    .line 902
    iget v4, v2, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v4

    .line 903
    iget v2, v2, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v6

    .line 905
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/ui/c;

    .line 906
    iget v5, v2, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    .line 908
    iget v2, v2, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v2

    sub-float/2addr v2, v6

    mul-float/2addr v2, v3

    .line 910
    add-float v3, v4, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    .line 911
    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    .line 914
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->invalidate()V

    .line 917
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    .line 918
    move-object/from16 v0, p0

    iget v15, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    .line 920
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->o:F

    mul-float/2addr v2, v14

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->A:Landroid/graphics/Path;

    move-object/from16 v16, v0

    .line 924
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->rewind()V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingTop()I

    move-result v17

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingLeft()I

    move-result v18

    .line 930
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/4 v2, 0x3

    if-ge v3, v2, :cond_5

    .line 931
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v4, v3

    mul-float/2addr v4, v15

    add-float/2addr v4, v2

    .line 933
    const/4 v2, 0x0

    :goto_3
    const/4 v5, 0x3

    if-ge v2, v5, :cond_4

    .line 934
    move/from16 v0, v18

    int-to-float v5, v0

    int-to-float v6, v2

    mul-float/2addr v6, v14

    add-float/2addr v5, v6

    .line 935
    float-to-int v5, v5

    float-to-int v6, v4

    aget-object v7, v13, v3

    aget-boolean v7, v7, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(Landroid/graphics/Canvas;IIZ)V

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 893
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 930
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 943
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->l:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v3, Lcom/avast/android/mobilesecurity/ui/d;->c:Lcom/avast/android/mobilesecurity/ui/d;

    if-ne v2, v3, :cond_c

    :cond_6
    const/4 v2, 0x1

    move v8, v2

    .line 947
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    move v9, v2

    .line 948
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 949
    if-eqz v8, :cond_7

    .line 950
    const/4 v2, 0x0

    move v10, v2

    :goto_6
    add-int/lit8 v2, v12, -0x1

    if-ge v10, v2, :cond_7

    .line 951
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avast/android/mobilesecurity/ui/c;

    .line 952
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/avast/android/mobilesecurity/ui/c;

    .line 957
    iget v2, v7, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    aget-object v2, v13, v2

    iget v3, v7, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_e

    .line 968
    :cond_7
    if-eqz v8, :cond_b

    .line 969
    const/4 v3, 0x0

    .line 970
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_7
    if-ge v3, v12, :cond_8

    .line 971
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/ui/c;

    .line 976
    iget v5, v2, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    aget-object v5, v13, v5

    iget v6, v2, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_f

    .line 991
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    sget-object v3, Lcom/avast/android/mobilesecurity/ui/d;->b:Lcom/avast/android/mobilesecurity/ui/d;

    if-ne v2, v3, :cond_a

    :cond_9
    if-eqz v4, :cond_a

    .line 993
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->g:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->h:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 995
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 998
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 999
    return-void

    .line 943
    :cond_c
    const/4 v2, 0x0

    move v8, v2

    goto :goto_4

    .line 947
    :cond_d
    const/4 v2, 0x0

    move v9, v2

    goto :goto_5

    .line 961
    :cond_e
    move/from16 v0, v18

    int-to-float v2, v0

    iget v3, v6, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float v4, v2, v3

    .line 962
    move/from16 v0, v17

    int-to-float v2, v0

    iget v3, v6, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    add-float v5, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 964
    invoke-direct/range {v2 .. v7}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(Landroid/graphics/Canvas;FFLcom/avast/android/mobilesecurity/ui/c;Lcom/avast/android/mobilesecurity/ui/c;)V

    .line 950
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_6

    .line 979
    :cond_f
    const/4 v4, 0x1

    .line 981
    iget v5, v2, Lcom/avast/android/mobilesecurity/ui/c;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(I)F

    move-result v5

    .line 982
    iget v2, v2, Lcom/avast/android/mobilesecurity/ui/c;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d(I)F

    move-result v2

    .line 983
    if-nez v3, :cond_10

    .line 984
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 970
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_7

    .line 986
    :cond_10
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 496
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 497
    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(II)I

    move-result v1

    .line 498
    invoke-direct {p0, p2, v2}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(II)I

    move-result v0

    .line 500
    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->E:I

    packed-switch v2, :pswitch_data_0

    .line 512
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->setMeasuredDimension(II)V

    .line 513
    return-void

    .line 502
    :pswitch_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 503
    goto :goto_0

    .line 505
    :pswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 508
    :pswitch_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 1101
    check-cast p1, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;

    .line 1102
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1103
    sget-object v0, Lcom/avast/android/mobilesecurity/ui/d;->a:Lcom/avast/android/mobilesecurity/ui/d;

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/ui/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(Lcom/avast/android/mobilesecurity/ui/d;Ljava/util/List;)V

    .line 1106
    invoke-static {}, Lcom/avast/android/mobilesecurity/ui/d;->values()[Lcom/avast/android/mobilesecurity/ui/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->b()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    .line 1107
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->k:Z

    .line 1108
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->l:Z

    .line 1109
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->m:Z

    .line 1110
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1092
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1093
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->j:Lcom/avast/android/mobilesecurity/ui/d;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/ui/d;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->k:Z

    iget-boolean v5, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->l:Z

    iget-boolean v6, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->m:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/avast/android/mobilesecurity/ui/b;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4040

    .line 449
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 450
    int-to-float v1, v0

    div-float/2addr v1, v3

    iput v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->s:F

    .line 452
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 454
    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->E:I

    if-nez v2, :cond_0

    if-le v1, v0, :cond_0

    .line 455
    int-to-float v2, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    .line 456
    sub-int v0, v1, v0

    int-to-float v0, v0

    .line 457
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->setPadding(IIII)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->r:F

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 651
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->k:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 677
    :goto_0
    return v0

    .line 655
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 677
    goto :goto_0

    .line 657
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 660
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 663
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 666
    :pswitch_3
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->e()V

    .line 667
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->n:Z

    .line 668
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/LockPatternView;->d()V

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
