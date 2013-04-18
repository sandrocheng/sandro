.class public Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "MultiDirectionSlidingDrawer.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:Ljava/lang/String; = "Sliding"

.field private static final f:I = 0x6

.field private static final g:F = 100.0f

.field private static final h:F = 150.0f

.field private static final i:F = 200.0f

.field private static final j:F = 2000.0f

.field private static final k:I = 0x3e8

.field private static final l:I = 0x3e8

.field private static final m:I = 0x10

.field private static final n:I = -0x2711

.field private static final o:I = -0x2712


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Lcom/keniu/security/traffic/n;

.field private G:Lcom/keniu/security/traffic/m;

.field private H:Lcom/keniu/security/traffic/o;

.field private final I:Landroid/os/Handler;

.field private J:F

.field private K:F

.field private L:F

.field private M:J

.field private N:J

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Z

.field private final S:I

.field private final T:I

.field private U:I

.field private V:I

.field private W:I

.field private final X:I

.field private final p:I

.field private final q:I

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private v:Z

.field private w:Z

.field private x:Landroid/view/VelocityTracker;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->t:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->u:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/keniu/security/traffic/p;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/p;-><init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    .line 166
    sget-object v0, Lcom/ijinshan/a/m;->i:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 172
    if-eq v1, v4, :cond_0

    if-ne v1, v6, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    .line 173
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    .line 175
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    .line 177
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->Q:Z

    .line 179
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->R:Z

    .line 181
    if-eq v1, v6, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    .line 183
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 185
    if-nez v1, :cond_4

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v3

    .line 172
    goto :goto_0

    :cond_3
    move v1, v3

    .line 181
    goto :goto_1

    .line 191
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 193
    if-nez v2, :cond_5

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_5
    if-ne v1, v2, :cond_6

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content and handle attributes must refer to different children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_6
    iput v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->p:I

    .line 205
    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->q:I

    .line 207
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 208
    const/high16 v2, 0x40c0

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    .line 209
    const/high16 v2, 0x42c8

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->T:I

    .line 210
    const/high16 v2, 0x4316

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    .line 211
    const/high16 v2, 0x4348

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    .line 212
    const/high16 v2, 0x44fa

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    .line 213
    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->X:I

    .line 215
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v1, :cond_7

    .line 216
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    neg-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    .line 217
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    neg-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    .line 218
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    neg-int v1, v1

    iput v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    .line 221
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    invoke-virtual {p0, v3}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 223
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c(I)V

    .line 548
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(IFZ)V

    .line 549
    return-void
.end method

.method private a(IFZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 557
    int-to-float v0, p1

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    .line 558
    iput p2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    .line 564
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v0, :cond_13

    .line 565
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v0

    .line 566
    :goto_0
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    .line 570
    :goto_1
    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    move v2, v6

    .line 572
    :goto_2
    iget-boolean v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v3, :cond_a

    add-int v3, p1, v1

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    add-int/2addr v0, v3

    if-le v0, v1, :cond_9

    move v0, v6

    .line 575
    :goto_3
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_d

    move v1, v6

    .line 579
    :goto_4
    if-nez p3, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 581
    :cond_0
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    .line 582
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_10

    .line 583
    cmpl-float v0, p2, v4

    if-lez v0, :cond_1

    .line 584
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    .line 651
    :cond_1
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 652
    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    .line 653
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    .line 654
    iput-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 655
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 658
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    .line 659
    :cond_3
    return-void

    .line 565
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v0

    goto :goto_0

    .line 566
    :cond_5
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    goto :goto_1

    :cond_6
    move v2, v5

    .line 570
    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_8

    move v2, v6

    goto :goto_2

    :cond_8
    move v2, v5

    goto :goto_2

    :cond_9
    move v0, v5

    .line 572
    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    :goto_6
    add-int/2addr v0, v1

    if-le p1, v0, :cond_c

    move v0, v6

    goto :goto_3

    :cond_b
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    goto :goto_6

    :cond_c
    move v0, v5

    goto/16 :goto_3

    :cond_d
    move v1, v5

    .line 575
    goto :goto_4

    :cond_e
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_f

    move v1, v6

    goto/16 :goto_4

    :cond_f
    move v1, v5

    goto/16 :goto_4

    .line 587
    :cond_10
    cmpg-float v0, p2, v4

    if-gez v0, :cond_1

    .line 588
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    goto :goto_5

    .line 595
    :cond_11
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    .line 597
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_12

    .line 598
    cmpg-float v0, p2, v4

    if-gez v0, :cond_1

    .line 599
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    goto/16 :goto_5

    .line 602
    :cond_12
    cmpl-float v0, p2, v4

    if-lez v0, :cond_1

    .line 603
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    goto/16 :goto_5

    .line 611
    :cond_13
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_15

    move v0, v6

    .line 613
    :goto_7
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v1

    :goto_8
    div-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_19

    move v1, v6

    .line 615
    :goto_9
    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v2, :cond_1e

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1d

    move v2, v6

    .line 624
    :goto_a
    if-nez p3, :cond_21

    if-nez v0, :cond_14

    if-eqz v1, :cond_21

    if-eqz v2, :cond_21

    .line 625
    :cond_14
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    .line 627
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_20

    .line 628
    cmpl-float v0, p2, v4

    if-lez v0, :cond_1

    .line 629
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    goto/16 :goto_5

    :cond_15
    move v0, v5

    .line 611
    goto :goto_7

    :cond_16
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_17

    move v0, v6

    goto :goto_7

    :cond_17
    move v0, v5

    goto :goto_7

    .line 613
    :cond_18
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v1

    goto :goto_8

    :cond_19
    move v1, v5

    goto :goto_9

    :cond_1a
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v1

    :goto_b
    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_1c

    move v1, v6

    goto :goto_9

    :cond_1b
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v1

    goto :goto_b

    :cond_1c
    move v1, v5

    goto :goto_9

    :cond_1d
    move v2, v5

    .line 615
    goto :goto_a

    :cond_1e
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1f

    move v2, v6

    goto :goto_a

    :cond_1f
    move v2, v5

    goto :goto_a

    .line 632
    :cond_20
    cmpg-float v0, p2, v4

    if-gez v0, :cond_1

    .line 633
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    goto/16 :goto_5

    .line 637
    :cond_21
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    .line 639
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_22

    .line 640
    cmpg-float v0, p2, v4

    if-gez v0, :cond_1

    .line 641
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    goto/16 :goto_5

    .line 644
    :cond_22
    cmpl-float v0, p2, v4

    if-lez v0, :cond_1

    .line 645
    iput v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    goto/16 :goto_5
.end method

.method private a(Lcom/keniu/security/traffic/o;)V
    .locals 0
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    .line 1073
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->w:Z

    return v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c(I)V

    .line 553
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(IFZ)V

    .line 554
    return-void
.end method

.method static synthetic b(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->R:Z

    return v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 780
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    if-eqz v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    .line 787
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v1, :cond_3

    .line 790
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    .line 791
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v2, v3

    .line 792
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 798
    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v2, :cond_2

    .line 799
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 829
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 830
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 832
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 802
    :cond_2
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 811
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 812
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v2, v3

    .line 813
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 817
    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v2, :cond_4

    .line 818
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 822
    :cond_4
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private c(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v3, 0x3e8

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 662
    iput-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    .line 663
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    .line 664
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 666
    :goto_0
    if-eqz v0, :cond_3

    .line 667
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->W:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    .line 668
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->V:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    .line 669
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_1

    .line 670
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    .line 675
    :goto_1
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    .line 676
    iput-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 677
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 679
    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    .line 680
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    .line 681
    iput-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 689
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 664
    goto :goto_0

    .line 672
    :cond_1
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    sub-int/2addr v1, v2

    :goto_3
    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    sub-int/2addr v1, v2

    goto :goto_3

    .line 683
    :cond_3
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    if-eqz v0, :cond_4

    .line 684
    iput-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 685
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    :cond_4
    invoke-direct {p0, p1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x10

    const/16 v9, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    iget-boolean v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    iget v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    sub-int/2addr v1, v8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->l()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    iget-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    sub-int/2addr v1, v8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->k()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->l()V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    iget-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 837
    iput-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    .line 839
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    .line 847
    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v3, -0x2711

    const/16 v2, -0x2712

    .line 692
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    .line 694
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v1, :cond_5

    .line 695
    if-ne p1, v3, :cond_1

    .line 696
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v1, :cond_0

    .line 697
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 701
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    .line 777
    :goto_1
    return-void

    .line 700
    :cond_0
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 702
    :cond_1
    if-ne p1, v2, :cond_3

    .line 703
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v1, :cond_2

    .line 704
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 709
    :goto_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    goto :goto_1

    .line 706
    :cond_2
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 711
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 712
    sub-int v2, p1, v1

    .line 713
    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    if-ge p1, v3, :cond_4

    .line 714
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int v1, v2, v1

    .line 721
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 723
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->t:Landroid/graphics/Rect;

    .line 724
    iget-object v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->u:Landroid/graphics/Rect;

    .line 726
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 727
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 729
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 731
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v3, v7, v0, v4, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 734
    invoke-virtual {p0, v3}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 715
    :cond_4
    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_c

    .line 717
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    goto :goto_3

    .line 737
    :cond_5
    if-ne p1, v3, :cond_7

    .line 738
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v1, :cond_6

    .line 739
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 743
    :goto_4
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 742
    :cond_6
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 744
    :cond_7
    if-ne p1, v2, :cond_9

    .line 745
    iget-boolean v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v1, :cond_8

    .line 746
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 750
    :goto_5
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 748
    :cond_8
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 752
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 753
    sub-int v2, p1, v1

    .line 754
    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    if-ge p1, v3, :cond_a

    .line 755
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int v1, v2, v1

    .line 761
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 763
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->t:Landroid/graphics/Rect;

    .line 764
    iget-object v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->u:Landroid/graphics/Rect;

    .line 766
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 767
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 769
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 771
    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v0, v7, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 774
    invoke-virtual {p0, v3}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 756
    :cond_a
    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_b

    .line 758
    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    goto :goto_6

    :cond_b
    move v1, v2

    goto :goto_6

    :cond_c
    move v1, v2

    goto/16 :goto_3
.end method

.method private e()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x10

    const/16 v9, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 850
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    if-eqz v0, :cond_0

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    iget-boolean v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    iget v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    .line 853
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_4

    .line 854
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 855
    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 856
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->k()V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    sub-int/2addr v1, v8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 859
    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 860
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->l()V

    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_1

    .line 862
    :cond_3
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    .line 863
    iget-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    .line 864
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 869
    :cond_4
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    sub-int/2addr v1, v8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 871
    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 872
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->k()V

    goto :goto_0

    .line 869
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 873
    :cond_6
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 874
    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    .line 875
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->l()V

    goto :goto_0

    .line 877
    :cond_7
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    .line 878
    iget-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    .line 879
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->I:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->N:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private f()V
    .locals 7

    .prologue
    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 889
    iget-wide v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    .line 890
    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    .line 891
    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    .line 892
    iget-boolean v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    iget v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->J:F

    .line 893
    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->L:F

    .line 894
    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->K:F

    .line 895
    iput-wide v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->M:J

    .line 896
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->l()V

    .line 943
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    .line 944
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 946
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 947
    return-void
.end method

.method private h()V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->k()V

    .line 958
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    .line 959
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 960
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c()V

    .line 973
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    .line 974
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(I)V

    .line 979
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c()V

    .line 995
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    .line 996
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->b(I)V

    .line 1001
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 1003
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1009
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    .line 1010
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1013
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    .line 1018
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->G:Lcom/keniu/security/traffic/m;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->G:Lcom/keniu/security/traffic/m;

    invoke-interface {v0}, Lcom/keniu/security/traffic/m;->a()V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1024
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    .line 1025
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    .line 1033
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->F:Lcom/keniu/security/traffic/n;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->F:Lcom/keniu/security/traffic/n;

    invoke-interface {v0}, Lcom/keniu/security/traffic/n;->a()V

    goto :goto_0
.end method

.method private m()Landroid/view/View;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    return-object v0
.end method

.method private n()Landroid/view/View;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->w:Z

    .line 1102
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->w:Z

    .line 1111
    return-void
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    return v0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v0, :cond_0

    .line 909
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->l()V

    .line 913
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    .line 914
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 915
    return-void

    .line 911
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->k()V

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/traffic/m;)V
    .locals 0
    .parameter

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->G:Lcom/keniu/security/traffic/m;

    .line 1060
    return-void
.end method

.method public final a(Lcom/keniu/security/traffic/n;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->F:Lcom/keniu/security/traffic/n;

    .line 1048
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v0, :cond_1

    .line 928
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c()V

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->b(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 932
    :goto_1
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 930
    :cond_1
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c()V

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getDrawingTime()J

    move-result-wide v0

    .line 280
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    .line 281
    iget-boolean v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    .line 283
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 285
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    if-eqz v4, :cond_b

    .line 286
    :cond_0
    iget-object v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 287
    if-eqz v4, :cond_5

    .line 288
    if-eqz v3, :cond_3

    .line 289
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v4, v6, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->invalidate()V

    .line 320
    :cond_1
    :goto_1
    return-void

    .line 294
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v6, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 297
    :cond_3
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p1, v4, v0, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    .line 302
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 303
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v4, :cond_8

    .line 304
    if-eqz v3, :cond_6

    move v4, v6

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_4
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    :goto_5
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 304
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_3

    :cond_7
    move v2, v6

    goto :goto_4

    .line 309
    :cond_8
    if-eqz v3, :cond_9

    move v4, v6

    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_7
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_6

    :cond_a
    move v2, v6

    goto :goto_7

    .line 317
    :cond_b
    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->p:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    new-instance v1, Lcom/keniu/security/traffic/l;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/l;-><init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->q:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    if-nez v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 385
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->w:Z

    if-eqz v0, :cond_0

    move v0, v8

    .line 426
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 394
    iget-object v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->t:Landroid/graphics/Rect;

    .line 395
    iget-object v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    .line 397
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 398
    iget-boolean v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    if-nez v5, :cond_1

    float-to-int v5, v1

    float-to-int v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v8

    .line 399
    goto :goto_0

    .line 402
    :cond_1
    if-nez v0, :cond_3

    .line 403
    iput-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    .line 405
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 407
    invoke-direct {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c()V

    .line 410
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->H:Lcom/keniu/security/traffic/o;

    .line 414
    :cond_2
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v0, :cond_4

    .line 415
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 416
    float-to-int v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->O:I

    .line 417
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c(I)V

    .line 423
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    move v0, v7

    .line 426
    goto :goto_0

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 420
    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->O:I

    .line 421
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 330
    :cond_0
    sub-int v0, p4, p2

    .line 331
    sub-int v1, p5, p3

    .line 333
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    .line 335
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 336
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 343
    iget-object v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    .line 345
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v6, :cond_4

    .line 346
    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 347
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v6, :cond_2

    .line 349
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v4

    .line 351
    :goto_1
    const/4 v6, 0x0

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    .line 377
    :goto_2
    add-int/2addr v3, v1

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 379
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    .line 380
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    goto :goto_0

    .line 349
    :cond_1
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    goto :goto_1

    .line 354
    :cond_2
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v6, :cond_3

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    .line 356
    :goto_3
    const/4 v6, 0x0

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v9, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    .line 354
    :cond_3
    sub-int/2addr v1, v4

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    add-int/2addr v1, v6

    goto :goto_3

    .line 361
    :cond_4
    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 362
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v6, :cond_6

    .line 363
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    sub-int/2addr v0, v6

    sub-int/2addr v0, v3

    .line 365
    :goto_4
    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    .line 363
    :cond_5
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    goto :goto_4

    .line 369
    :cond_6
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v6, :cond_7

    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    .line 371
    :goto_5
    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v6, v3

    const/4 v7, 0x0

    iget v8, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v8, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    .line 369
    :cond_7
    sub-int/2addr v0, v3

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    add-int/2addr v0, v6

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 246
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 247
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 250
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 252
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    .line 259
    invoke-virtual {p0, v0, p1, p2}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 261
    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v2, :cond_2

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v3, v0

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v0, v2

    .line 264
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    .line 274
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->setMeasuredDimension(II)V

    .line 275
    return-void

    .line 268
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iget v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    sub-int/2addr v0, v2

    .line 269
    iget-object v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->s:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 431
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->w:Z

    if-eqz v0, :cond_0

    move v0, v10

    .line 543
    :goto_0
    return v0

    .line 435
    :cond_0
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 438
    packed-switch v0, :pswitch_data_0

    .line 543
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->v:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->P:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_2
    move v0, v10

    goto :goto_0

    .line 440
    :pswitch_0
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->O:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->d(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 445
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->x:Landroid/view/VelocityTracker;

    .line 446
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->X:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 448
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 449
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 452
    iget-boolean v2, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->z:Z

    .line 453
    if-eqz v2, :cond_9

    .line 454
    cmpg-float v3, v1, v4

    if-gez v3, :cond_8

    move v3, v10

    .line 455
    :goto_3
    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    .line 456
    neg-float v0, v0

    .line 459
    :cond_4
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v4, :cond_23

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_23

    .line 461
    :cond_6
    iget v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    int-to-float v0, v0

    move v11, v3

    move v3, v0

    move v0, v11

    .line 475
    :goto_4
    float-to-double v3, v3

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 476
    if-eqz v0, :cond_22

    .line 477
    neg-float v0, v1

    .line 480
    :goto_5
    iget-object v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 481
    iget-object v3, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 482
    iget-object v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 483
    iget-object v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->r:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    .line 485
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->T:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1f

    .line 491
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v6, :cond_12

    .line 492
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v6

    sub-int v4, v6, v4

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_e

    move v4, v10

    .line 494
    :goto_6
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v6, :cond_f

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    sub-int/2addr v6, v7

    if-ge v1, v6, :cond_f

    move v6, v10

    .line 496
    :goto_7
    iget-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v7

    sub-int v5, v7, v5

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    iget v8, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    add-int/2addr v7, v8

    if-ge v5, v7, :cond_10

    move v5, v10

    .line 498
    :goto_8
    iget-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v7, :cond_11

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    iget v8, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    add-int/2addr v7, v8

    if-le v3, v7, :cond_11

    move v7, v10

    :goto_9
    move v11, v7

    move v7, v4

    move v4, v11

    move v12, v5

    move v5, v6

    move v6, v12

    .line 516
    :goto_a
    if-eqz v2, :cond_17

    if-nez v7, :cond_7

    if-eqz v5, :cond_18

    .line 518
    :cond_7
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->Q:Z

    if-eqz v4, :cond_1c

    .line 519
    invoke-virtual {p0, v9}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->playSoundEffect(I)V

    .line 521
    iget-boolean v0, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v0, :cond_1a

    .line 522
    if-eqz v2, :cond_19

    move v0, v1

    :goto_b
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(I)V

    goto/16 :goto_1

    :cond_8
    move v3, v9

    .line 454
    goto/16 :goto_3

    .line 464
    :cond_9
    cmpg-float v3, v0, v4

    if-gez v3, :cond_d

    move v3, v10

    .line 465
    :goto_c
    cmpg-float v4, v1, v4

    if-gez v4, :cond_a

    .line 466
    neg-float v1, v1

    .line 469
    :cond_a
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-nez v4, :cond_b

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_c

    :cond_b
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->y:Z

    if-eqz v4, :cond_23

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_23

    .line 471
    :cond_c
    iget v1, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->U:I

    int-to-float v1, v1

    move v11, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_4

    :cond_d
    move v3, v9

    .line 464
    goto :goto_c

    :cond_e
    move v4, v9

    .line 492
    goto :goto_6

    :cond_f
    move v6, v9

    .line 494
    goto :goto_7

    :cond_10
    move v5, v9

    .line 496
    goto :goto_8

    :cond_11
    move v7, v9

    .line 498
    goto :goto_9

    .line 501
    :cond_12
    iget-boolean v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    iget v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_13

    move v4, v10

    .line 503
    :goto_d
    iget-boolean v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v5, :cond_14

    iget v5, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->D:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_14

    move v5, v10

    .line 506
    :goto_e
    iget-boolean v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-eqz v6, :cond_15

    iget v6, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->C:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_15

    move v6, v10

    .line 508
    :goto_f
    iget-boolean v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->A:Z

    if-nez v7, :cond_16

    iget v7, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->B:I

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->E:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->S:I

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_16

    move v7, v10

    :goto_10
    move v11, v7

    move v7, v4

    move v4, v11

    goto/16 :goto_a

    :cond_13
    move v4, v9

    .line 501
    goto :goto_d

    :cond_14
    move v5, v9

    .line 503
    goto :goto_e

    :cond_15
    move v6, v9

    .line 506
    goto :goto_f

    :cond_16
    move v7, v9

    .line 508
    goto :goto_10

    .line 516
    :cond_17
    if-nez v6, :cond_7

    if-nez v4, :cond_7

    .line 531
    :cond_18
    if-eqz v2, :cond_1e

    :goto_11
    invoke-direct {p0, v1, v0, v9}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_19
    move v0, v3

    .line 522
    goto/16 :goto_b

    .line 524
    :cond_1a
    if-eqz v2, :cond_1b

    move v0, v1

    :goto_12
    invoke-direct {p0, v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->b(I)V

    goto/16 :goto_1

    :cond_1b
    move v0, v3

    goto :goto_12

    .line 527
    :cond_1c
    if-eqz v2, :cond_1d

    :goto_13
    invoke-direct {p0, v1, v0, v9}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_1d
    move v1, v3

    goto :goto_13

    :cond_1e
    move v1, v3

    .line 531
    goto :goto_11

    .line 535
    :cond_1f
    if-eqz v2, :cond_20

    :goto_14
    invoke-direct {p0, v1, v0, v9}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_20
    move v1, v3

    goto :goto_14

    :cond_21
    move v0, v9

    .line 543
    goto/16 :goto_0

    :cond_22
    move v0, v1

    goto/16 :goto_5

    :cond_23
    move v11, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_4

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
