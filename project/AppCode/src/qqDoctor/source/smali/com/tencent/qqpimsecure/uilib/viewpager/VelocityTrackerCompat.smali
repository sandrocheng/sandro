.class public Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat;->IMPL:Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
