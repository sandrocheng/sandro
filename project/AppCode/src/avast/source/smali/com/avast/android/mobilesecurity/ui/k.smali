.class Lcom/avast/android/mobilesecurity/ui/k;
.super Landroid/widget/FrameLayout;
.source "SideMenu.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/g;

.field private b:Z

.field private c:Landroid/view/MotionEvent;

.field private d:Landroid/view/MotionEvent;

.field private e:I

.field private f:Z

.field private g:Landroid/view/VelocityTracker;

.field private h:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    .line 115
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/k;->b:Z

    .line 116
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->c(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 124
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->h:Landroid/view/MotionEvent;

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->d(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->e(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->d(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/ui/g;->g(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 129
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->h:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->h(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_5
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->d(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->h:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    .line 135
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 141
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 148
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->c(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->b:Z

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->d(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->e(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->d(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/ui/g;->g(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 155
    :cond_4
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/k;->b:Z

    .line 156
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->g:Landroid/view/VelocityTracker;

    .line 157
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->c:Landroid/view/MotionEvent;

    .line 158
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->e:I

    .line 160
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/k;->f:Z

    goto :goto_0

    .line 161
    :cond_5
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->b:Z

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 162
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 163
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->d:Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->d:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 164
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/k;->f:Z

    .line 168
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/ui/k;->d:Landroid/view/MotionEvent;

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->e:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 170
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->g(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/ui/g;->a(Lcom/avast/android/mobilesecurity/ui/g;I)V

    goto/16 :goto_0

    .line 166
    :cond_6
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/k;->f:Z

    goto :goto_1

    .line 175
    :cond_7
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->b:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->d(Lcom/avast/android/mobilesecurity/ui/g;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_b

    .line 176
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->b:Z

    if-eqz v2, :cond_a

    .line 177
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->g:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 178
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->f:Z

    if-eqz v2, :cond_9

    .line 179
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;I)V

    .line 183
    :goto_2
    iput-object v6, p0, Lcom/avast/android/mobilesecurity/ui/k;->g:Landroid/view/VelocityTracker;

    .line 184
    iput-object v6, p0, Lcom/avast/android/mobilesecurity/ui/k;->c:Landroid/view/MotionEvent;

    .line 185
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/k;->b:Z

    goto/16 :goto_0

    .line 181
    :cond_9
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/ui/g;->c(Lcom/avast/android/mobilesecurity/ui/g;I)V

    goto :goto_2

    .line 186
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->g(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/k;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/g;->d()V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 196
    goto/16 :goto_0
.end method
