.class public Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Z

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/content/Context;

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->b:Z

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->c:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->d:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->e:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->f:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->b:Z

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->c:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->d:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->e:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, -0x4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/faceverify/FaceEyesView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
