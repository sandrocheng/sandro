.class final Lajt;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Lajs;


# direct methods
.method constructor <init>(Lajs;)V
    .locals 0

    iput-object p1, p0, Lajt;->a:Lajs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 2

    check-cast p1, Llv;

    iget-object v0, p0, Lajt;->a:Lajs;

    invoke-static {v0}, Lajs;->a(Lajs;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p1, Llv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lmp;->h:Ljava/lang/Object;

    check-cast v0, Lla;

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lla;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
