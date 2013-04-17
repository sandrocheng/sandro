.class final Lakz;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Lakw;


# direct methods
.method constructor <init>(Lakw;)V
    .locals 0

    iput-object p1, p0, Lakz;->a:Lakw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 3

    check-cast p1, Llv;

    iget-object v0, p0, Lakz;->a:Lakw;

    invoke-static {v0}, Lakw;->a(Lakw;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p1, Llv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lakz;->a:Lakw;

    invoke-static {v1}, Lakw;->b(Lakw;)Lsl;

    move-result-object v1

    iget-object v2, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lsl;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lmp;->h:Ljava/lang/Object;

    check-cast v0, Lkw;

    invoke-virtual {v0, v1}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lakz;->a:Lakw;

    invoke-virtual {v0}, Lakw;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
