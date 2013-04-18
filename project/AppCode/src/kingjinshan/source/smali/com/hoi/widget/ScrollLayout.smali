.class public Lcom/hoi/widget/ScrollLayout;
.super Landroid/view/ViewGroup;
.source "ScrollLayout.java"


# static fields
.field private static final a:Ljava/lang/String; = "ScrollLayout"

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x258


# instance fields
.field private b:Landroid/widget/Scroller;

.field private c:Landroid/view/VelocityTracker;

.field private d:I

.field private e:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:Lcom/hoi/widget/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hoi/widget/ScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/hoi/widget/ScrollLayout;->e:I

    .line 33
    iput v0, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    .line 37
    iput v0, p0, Lcom/hoi/widget/ScrollLayout;->m:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hoi/widget/ScrollLayout;->n:Lcom/hoi/widget/ah;

    .line 56
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    .line 58
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->e:I

    iput v0, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    .line 59
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/ScrollLayout;->j:I

    .line 60
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getWidth()I

    move-result v0

    .line 118
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    .line 119
    invoke-direct {p0, v0}, Lcom/hoi/widget/ScrollLayout;->b(I)V

    .line 120
    return-void
.end method

.method private b(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 125
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getWidth()I

    move-result v1

    mul-int/2addr v1, v6

    if-eq v0, v1, :cond_0

    .line 126
    iget v7, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    .line 127
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 128
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 130
    iput v6, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    .line 132
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->invalidate()V

    .line 134
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->n:Lcom/hoi/widget/ah;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    if-eq v0, v7, :cond_0

    .line 135
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->n:Lcom/hoi/widget/ah;

    iget v1, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    iget-object v2, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v7, v2, v3}, Lcom/hoi/widget/ah;->a(IIJ)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    iput v0, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    .line 143
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/hoi/widget/ScrollLayout;->scrollTo(II)V

    .line 144
    return-void
.end method

.method public final a(Lcom/hoi/widget/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/hoi/widget/ScrollLayout;->n:Lcom/hoi/widget/ah;

    .line 46
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hoi/widget/ScrollLayout;->scrollTo(II)V

    .line 155
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->postInvalidate()V

    .line 157
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 231
    const-string v0, "ScrollLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent-slop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hoi/widget/ScrollLayout;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 234
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    if-eqz v1, :cond_0

    move v0, v3

    .line 263
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 242
    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_1
    :goto_1
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    .line 244
    :pswitch_0
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->k:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 245
    iget v1, p0, Lcom/hoi/widget/ScrollLayout;->j:I

    if-le v0, v1, :cond_1

    .line 246
    iput v3, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    goto :goto_1

    .line 252
    :pswitch_1
    iput v1, p0, Lcom/hoi/widget/ScrollLayout;->k:F

    .line 253
    iput v2, p0, Lcom/hoi/widget/ScrollLayout;->l:F

    .line 254
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_2
    iput v0, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    .line 259
    :pswitch_2
    iput v4, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    goto :goto_1

    :cond_3
    move v0, v4

    .line 263
    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 65
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->m:I

    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/hoi/widget/ScrollLayout;->m:I

    .line 70
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v0

    move v1, v7

    move v2, v7

    .line 74
    :goto_1
    if-ge v1, v0, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lcom/hoi/widget/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 78
    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 80
    add-int/2addr v2, v4

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v4, 0x0

    .line 89
    const-string v0, "ScrollLayout"

    const-string v1, "onMeasure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 94
    if-eq v1, v2, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollLayout only canmCurScreen run at EXACTLY mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 99
    if-eq v1, v2, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollLayout only can run at EXACTLY mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v1

    move v2, v4

    .line 105
    :goto_0
    if-ge v2, v1, :cond_2

    .line 106
    invoke-virtual {p0, v2}, Lcom/hoi/widget/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_2
    iget v1, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/hoi/widget/ScrollLayout;->scrollTo(II)V

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->c:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/hoi/widget/ScrollLayout;->c:Landroid/view/VelocityTracker;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 172
    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return v5

    .line 174
    :pswitch_0
    const-string v0, "ScrollLayout"

    const-string v2, "event down!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 178
    :cond_1
    iput v1, p0, Lcom/hoi/widget/ScrollLayout;->k:F

    goto :goto_0

    .line 182
    :pswitch_1
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->k:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 183
    iput v1, p0, Lcom/hoi/widget/ScrollLayout;->k:F

    .line 185
    invoke-virtual {p0, v0, v4}, Lcom/hoi/widget/ScrollLayout;->scrollBy(II)V

    goto :goto_0

    .line 189
    :pswitch_2
    const-string v0, "ScrollLayout"

    const-string v1, "event : up"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->c:Landroid/view/VelocityTracker;

    .line 193
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 194
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 197
    const-string v1, "ScrollLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocityX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v1, 0x258

    if-le v0, v1, :cond_3

    iget v1, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    if-lez v1, :cond_3

    .line 201
    const-string v0, "ScrollLayout"

    const-string v1, "snap left"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    sub-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/hoi/widget/ScrollLayout;->b(I)V

    .line 212
    :goto_1
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/hoi/widget/ScrollLayout;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hoi/widget/ScrollLayout;->c:Landroid/view/VelocityTracker;

    .line 218
    :cond_2
    iput v4, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    goto :goto_0

    .line 203
    :cond_3
    const/16 v1, -0x258

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_4

    .line 206
    const-string v0, "ScrollLayout"

    const-string v1, "snap right"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v0, p0, Lcom/hoi/widget/ScrollLayout;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/hoi/widget/ScrollLayout;->b(I)V

    goto :goto_1

    .line 209
    :cond_4
    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/hoi/widget/ScrollLayout;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/hoi/widget/ScrollLayout;->b(I)V

    goto :goto_1

    .line 221
    :pswitch_3
    iput v4, p0, Lcom/hoi/widget/ScrollLayout;->i:I

    goto/16 :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
