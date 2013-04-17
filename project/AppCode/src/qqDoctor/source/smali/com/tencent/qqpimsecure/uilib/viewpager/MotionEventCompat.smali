.class public Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$EclairMotionEventVersionImpl;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$BaseMotionEventVersionImpl;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;
    }
.end annotation


# static fields
.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field static final IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$EclairMotionEventVersionImpl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$EclairMotionEventVersionImpl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$BaseMotionEventVersionImpl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat$MotionEventVersionImpl;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
