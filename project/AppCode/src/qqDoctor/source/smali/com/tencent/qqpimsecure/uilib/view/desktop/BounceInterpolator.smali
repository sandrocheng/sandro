.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    return-void
.end method

.method private in(F)F
    .locals 2

    const/high16 v1, 0x3f80

    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->out(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method

.method private inout(F)F
    .locals 3

    const/high16 v1, 0x4000

    const/high16 v2, 0x3f00

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    mul-float v0, p1, v1

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->in(F)F

    move-result v0

    mul-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->out(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method private out(F)F
    .locals 5

    const/high16 v4, 0x40f2

    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fe745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    float-to-double v0, p1

    const-wide v2, 0x3fe1745d1745d174L

    sub-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v1, v4, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f40

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    float-to-double v0, p1

    const-wide v2, 0x3fea2e8ba2e8ba2fL

    sub-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v1, v4, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f70

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    float-to-double v0, p1

    const-wide v2, 0x3fee8ba2e8ba2e8cL

    sub-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v1, v4, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->IN:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->in(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->OUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->out(F)F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->type:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->INOUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/BounceInterpolator;->inout(F)F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
