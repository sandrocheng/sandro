.class public final Lagh;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)V
    .locals 0

    iput-object p1, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030044

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;-><init>()V

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;->a:Landroid/widget/ImageView;

    iget-object v0, v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;->a:Landroid/widget/ImageView;

    sget v4, Lgw;->a:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;->a:Landroid/widget/ImageView;

    sget v4, Lgw;->b:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    :goto_0
    iget-object v0, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    move-object p2, v3

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lbnd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lagh;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;->a:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
