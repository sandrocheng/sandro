.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    return-void
.end method

.method private in(F)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4000

    const/high16 v2, 0x4120

    const/high16 v3, 0x3f80

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private inout(F)F
    .locals 7

    const/4 v0, 0x0

    const-wide/high16 v5, 0x3fe0

    const-wide/high16 v3, 0x4000

    const/high16 v1, 0x3f80

    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    const/high16 v2, 0x4120

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_0

    :cond_2
    const/high16 v2, -0x3ee0

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v3

    mul-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_0
.end method

.method private out(F)F
    .locals 6

    const-wide/high16 v0, 0x3ff0

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/high16 v2, 0x4000

    const/high16 v4, -0x3ee0

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->IN:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;->in(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->OUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;->out(F)F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->INOUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;->inout(F)F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
