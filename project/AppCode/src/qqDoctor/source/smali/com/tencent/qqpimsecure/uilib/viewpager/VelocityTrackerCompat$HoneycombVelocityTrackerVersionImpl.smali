.class Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombVelocityTrackerVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    invoke-static {p1, p2}, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompatHoneycomb;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    invoke-static {p1, p2}, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompatHoneycomb;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
