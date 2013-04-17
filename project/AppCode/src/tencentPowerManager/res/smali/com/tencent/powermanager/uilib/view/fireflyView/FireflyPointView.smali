.class public Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;
.super Landroid/widget/ImageView;


# instance fields
.field public a:I

.field public b:I

.field private final c:D

.field private d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x0

    const-wide/high16 v4, 0x3fe0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->d:Landroid/view/animation/Animation;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    add-double/2addr v2, v4

    :cond_0
    iput-wide v2, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->c:D

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020126

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->a:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->b:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-wide v2, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->c:D

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->c:D

    double-to-float v3, v3

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v3, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->a:I

    iget v4, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->b:I

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3e99999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->d:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->d:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->d:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->d:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
