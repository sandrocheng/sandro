.class final Lcom/jxphone/mosecurity/activity/friend/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseTabActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/a;->a:Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4348

    const/high16 v4, 0x42f0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v2

    .line 72
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    .line 52
    const-string v0, "test "

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/a;->a:Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;

    iget v1, v1, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->b:I

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/a;->a:Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;

    sget v1, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 72
    goto :goto_0

    .line 56
    :cond_2
    sget v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 61
    const-string v0, "test "

    const-string v1, "left"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    if-nez v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/a;->a:Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;

    iget v0, v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->b:I

    sub-int/2addr v0, v3

    sput v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    .line 67
    :goto_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/a;->a:Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;

    sget v1, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a(I)V

    goto :goto_2

    .line 65
    :cond_4
    sget v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    sub-int/2addr v0, v3

    sput v0, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method
