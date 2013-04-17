.class public Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;
.super Landroid/widget/Gallery;


# static fields
.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mTouchSlop:I

.field private mTouchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchState:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchState:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchState:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchState:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchState:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mLastMotionX:F

    sub-float v2, v3, v2

    float-to-int v4, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mLastMotionX:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_5

    move v2, v0

    :goto_2
    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SingleFlingGallery onInterceptTouchEvent getSelectedItemPosition() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_3

    if-gtz v4, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v0, :cond_4

    if-ltz v4, :cond_6

    :cond_4
    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchState:I

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :pswitch_1
    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mLastMotionX:F

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mLastMotionY:F

    :cond_6
    :pswitch_2
    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->mTouchState:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
