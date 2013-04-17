.class public Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;
.super Landroid/widget/Gallery;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->a:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->a:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->b:Z

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lajn;

    invoke-virtual {v0}, Lajn;->a()I

    move-result v3

    invoke-virtual {v0}, Lajn;->getCount()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0a11

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const/16 v0, 0x15

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->a:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->b:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->b:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0a12

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    const/16 v0, 0x16

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_5

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->b:Z

    goto :goto_3

    :cond_5
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->a:Z

    goto :goto_3
.end method
