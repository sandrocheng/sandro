.class public final Lagi;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lagi;->b:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    iput-object p2, p0, Lagi;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Llv;

    iget-object v1, v0, Llv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lagi;->b:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lagi;->a:Landroid/widget/ImageView;

    iget-object v2, v0, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v1, Lbnd;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    sget-object v1, Lbnd;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v4, p1, Lmp;->g:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lagi;->b:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lagi;->b:Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
