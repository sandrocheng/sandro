.class public Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$1;,
        Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;,
        Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;,
        Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;
    }
.end annotation


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private B:Landroid/os/Vibrator;

.field private C:[J

.field private D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:[[Z

.field private e:F

.field private f:F

.field private g:J

.field private h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/high16 v4, -0x4080

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    filled-new-array {v6, v6}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d:[[Z

    iput v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    iput v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    sget-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->i:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->j:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->k:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->m:F

    const v0, 0x3f19999a

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->n:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->A:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setClickable(Z)V

    invoke-static {p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    const v2, -0xd63124

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->B:Landroid/os/Vibrator;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->C:[J

    move v0, v1

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->C:[J

    aget v3, v2, v0

    int-to-long v3, v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(FF)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;
    .locals 11

    const/4 v1, 0x0

    const/high16 v10, 0x4000

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->p:F

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->n:F

    mul-float v6, v5, v4

    sub-float v4, v5, v6

    div-float v7, v4, v10

    move v4, v1

    :goto_0
    const/4 v8, 0x3

    if-ge v4, v8, :cond_6

    int-to-float v8, v4

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    iget-object v9, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {v9}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    cmpl-float v9, p2, v8

    if-ltz v9, :cond_5

    add-float/2addr v8, v6

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_5

    :goto_1
    if-gez v4, :cond_7

    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget v1, v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    iget v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    sub-int v6, v1, v4

    iget v1, v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    iget v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    sub-int v7, v1, v4

    iget v1, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    iget v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    iget v8, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    if-lez v6, :cond_c

    move v1, v2

    :goto_3
    add-int/2addr v1, v8

    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_e

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    if-lez v7, :cond_d

    :goto_4
    add-int/2addr v0, v2

    :goto_5
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d:[[Z

    iget v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;)V

    :cond_2
    invoke-direct {p0, v5}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->k:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->g()V

    :cond_3
    move-object v0, v5

    :cond_4
    return-object v0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->o:F

    iget v6, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->n:F

    mul-float/2addr v6, v5

    sub-float v7, v5, v6

    div-float/2addr v7, v10

    :goto_6
    const/4 v8, 0x3

    if-ge v1, v8, :cond_9

    int-to-float v8, v1

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    cmpl-float v9, p1, v8

    if-ltz v9, :cond_8

    add-float/2addr v8, v6

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_8

    :goto_7
    if-gez v1, :cond_a

    move-object v5, v0

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    move v1, v3

    goto :goto_7

    :cond_a
    iget-object v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d:[[Z

    aget-object v5, v5, v4

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_b

    move-object v5, v0

    goto/16 :goto_2

    :cond_b
    invoke-static {v4, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v5

    goto/16 :goto_2

    :cond_c
    move v1, v3

    goto :goto_3

    :cond_d
    move v2, v3

    goto :goto_4

    :cond_e
    move v0, v4

    goto :goto_5
.end method

.method private a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d:[[Z

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c()V

    return-void
.end method

.method private f()V
    .locals 11

    const/4 v10, 0x3

    const/4 v1, 0x0

    const-wide/high16 v8, 0x4000

    const-wide/high16 v6, 0x3ff8

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    int-to-double v2, v0

    const-wide v4, 0x3fca9fbe80000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    int-to-double v2, v0

    const-wide v4, 0x3fb6666660000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    int-to-double v2, v0

    const-wide v4, 0x3fb10cb2a0000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    int-to-double v2, v0

    const-wide v4, 0x3fbae147a0000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    int-to-double v2, v0

    const-wide v4, 0x3fb9168720000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    int-to-double v2, v0

    div-double/2addr v2, v8

    mul-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    int-to-double v2, v0

    div-double/2addr v2, v8

    const-wide/high16 v4, 0x3fe8

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->x:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    int-to-double v2, v0

    div-double/2addr v2, v8

    const-wide/high16 v4, 0x3fd0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->y:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    move v2, v1

    :goto_0
    if-ge v2, v10, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v10, :cond_0

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    add-int/2addr v6, v4

    invoke-static {v2, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {v7}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->C:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->C:[J

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->B:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->B:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->C:[J

    if-eqz v0, :cond_1

    sget-boolean v2, Lfm;->a:Z

    if-eqz v2, :cond_3

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    sget-boolean v2, Lfm;->b:Z

    if-eqz v2, :cond_4

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v1, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    const v1, -0x24bebf

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    const v1, -0xd63124

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e()V

    sget-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate()V

    return-void
.end method

.method public final a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final a(Ljava/util/LinkedList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->i:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->i:Z

    return-void
.end method

.method public final d()Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d:[[Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v6, 0x1

    mul-int/lit16 v2, v2, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->g:J

    sub-long/2addr v3, v8

    long-to-int v3, v3

    rem-int v4, v3, v2

    div-int/lit16 v8, v4, 0x2bc

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v8, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a()I

    move-result v9

    aget-object v9, v7, v9

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b()I

    move-result v2

    const/4 v10, 0x1

    aput-boolean v10, v9, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    if-lez v8, :cond_5

    if-ge v8, v6, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    rem-int/lit16 v2, v4, 0x2bc

    int-to-float v2, v2

    const/high16 v3, 0x442f

    div-float v3, v2, v3

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget v4, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v10, v11

    mul-int/2addr v4, v10

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    int-to-float v4, v4

    iget v2, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v10, v11

    mul-int/2addr v2, v10

    add-int/2addr v2, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    int-to-float v9, v2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget v8, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v11, v12

    mul-int/2addr v8, v11

    add-int/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v8, v4

    mul-float/2addr v8, v3

    iget v2, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v11, v12

    mul-int/2addr v2, v11

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v2, v10

    int-to-float v2, v2

    sub-float/2addr v2, v9

    mul-float/2addr v2, v3

    add-float v3, v4, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    add-float/2addr v2, v9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate()V

    :cond_2
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->j:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne v2, v3, :cond_6

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_b

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_8

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget v9, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    aget-object v9, v7, v9

    iget v10, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    iget v9, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v11, v12

    mul-int/2addr v9, v11

    add-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v2, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v11, v12

    mul-int/2addr v2, v11

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v2, v10

    int-to-float v10, v2

    if-nez v3, :cond_7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_4
    add-int/lit8 v2, v6, -0x1

    if-eq v3, v2, :cond_4

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget v12, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v14, v15

    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget v2, v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v14, v15

    mul-int/2addr v2, v14

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v2, v13

    int-to-float v2, v2

    sub-float v2, v10, v2

    float-to-double v13, v2

    sub-float v2, v9, v12

    float-to-double v15, v2

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->w:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v2, v14

    sub-float v2, v9, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->w:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v14, v14

    sub-float v14, v10, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    sub-float/2addr v9, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    sub-float/2addr v10, v15

    invoke-virtual {v11, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->y:I

    int-to-double v15, v15

    const-wide v17, 0x3ff921fb54442d18L

    add-double v17, v17, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    double-to-float v15, v15

    sub-float v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff921fb54442d18L

    add-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v10, v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->y:I

    int-to-double v15, v15

    const-wide v17, 0x3ff921fb54442d18L

    sub-double v17, v12, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    double-to-float v15, v15

    sub-float/2addr v9, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->y:I

    int-to-double v15, v15

    const-wide v17, 0x3ff921fb54442d18L

    sub-double v12, v12, v17

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v15

    double-to-float v12, v12

    sub-float/2addr v10, v12

    invoke-virtual {v11, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11, v2, v14}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne v2, v3, :cond_a

    :cond_9
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->z:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b
    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x3

    if-ge v2, v3, :cond_13

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x3

    if-ge v3, v4, :cond_12

    aget-object v4, v7, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->j:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne v4, v5, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    if-eqz v4, :cond_e

    invoke-static {v2, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    :cond_d
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne v4, v5, :cond_f

    invoke-static {v2, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-eq v4, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne v4, v5, :cond_11

    :cond_10
    invoke-static {v2, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    goto :goto_7

    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown display mode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const/4 v2, 0x3

    if-ge v3, v2, :cond_16

    const/4 v2, 0x0

    :goto_9
    const/4 v4, 0x3

    if-ge v2, v4, :cond_15

    invoke-static {v3, v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_14

    invoke-static {v3, v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_16
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/high16 v2, 0x4040

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onlayout  getWidth() :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->o:F

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->q:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->p:F

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e()V

    sget-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate()V

    invoke-direct {p0, v6, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(FF)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    sget-object v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    invoke-interface {v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;->a()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v4, v5

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v4, v5

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->o:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->p:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v5, v2, v3

    float-to-int v5, v5

    sub-float v7, v0, v4

    float-to-int v7, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v5, v7, v2, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate(IIII)V

    :cond_3
    iput v6, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    iput v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    invoke-interface {v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;->b()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;->c()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate()V

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {p0, v6, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(FF)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move-result-object v9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-ne v10, v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;->a()V

    :cond_6
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->o:F

    const v3, 0x3c23d70a

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    iput v6, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    iput v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    if-eqz v0, :cond_10

    if-lez v10, :cond_10

    iget-object v11, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->o:F

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->m:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    mul-float v12, v0, v2

    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    iget v7, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v13, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v7, v13

    mul-int/2addr v2, v7

    add-int/2addr v2, v5

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    iget v7, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v13, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v7, v13

    mul-int/2addr v0, v7

    add-int/2addr v0, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v13, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->A:Landroid/graphics/Rect;

    cmpg-float v0, v5, v6

    if-gez v0, :cond_a

    move v7, v5

    :goto_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_b

    move v0, v1

    move v1, v2

    :goto_3
    sub-float/2addr v7, v12

    float-to-int v7, v7

    sub-float/2addr v1, v12

    float-to-int v1, v1

    add-float/2addr v6, v12

    float-to-int v6, v6

    add-float/2addr v0, v12

    float-to-int v0, v0

    invoke-virtual {v13, v7, v1, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    cmpg-float v0, v5, v4

    if-gez v0, :cond_c

    move v0, v4

    :goto_4
    cmpg-float v1, v2, v3

    if-gez v1, :cond_7

    move v14, v3

    move v3, v2

    move v2, v14

    :cond_7
    sub-float v1, v5, v12

    float-to-int v1, v1

    sub-float/2addr v3, v12

    float-to-int v3, v3

    add-float/2addr v0, v12

    float-to-int v0, v0

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v13, v1, v3, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    if-eqz v9, :cond_8

    iget v0, v9, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v9, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v3, v4

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v3, v0

    const/4 v0, 0x2

    if-lt v10, v0, :cond_f

    add-int/lit8 v0, v10, -0x1

    sub-int v2, v10, v8

    sub-int/2addr v0, v2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget v2, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v6, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v5, v6

    mul-int/2addr v2, v5

    add-int/2addr v2, v4

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v4, v2

    iget v0, v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v6, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v5, v6

    mul-int/2addr v0, v5

    add-int/2addr v0, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    cmpg-float v0, v1, v4

    if-gez v0, :cond_d

    move v0, v4

    :goto_5
    cmpg-float v4, v3, v2

    if-gez v4, :cond_e

    :goto_6
    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->o:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->p:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v1, v4

    float-to-int v1, v1

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v13, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    invoke-virtual {p0, v13}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    :cond_9
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    move v7, v6

    move v6, v5

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_3

    :cond_c
    move v0, v5

    move v5, v4

    goto/16 :goto_4

    :cond_d
    move v0, v1

    move v1, v4

    goto :goto_5

    :cond_e
    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_6

    :cond_f
    move v0, v1

    move v2, v3

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate()V

    goto :goto_7

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e()V

    sget-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->l:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;->b()V

    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V
    .locals 5

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->h:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    sget-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->g:J

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b()I

    move-result v1

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->s:I

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->u:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e:F

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a()I

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->t:I

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->v:I

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->r:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->f:F

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e()V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->invalidate()V

    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->setFooterView(Landroid/view/View;)V

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->D:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->j:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    return-void
.end method

.method public setPattern(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->e()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d:[[Z

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b()I

    move-result v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setDisplayMode(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->k:Z

    return-void
.end method
