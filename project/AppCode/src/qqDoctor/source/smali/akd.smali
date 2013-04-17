.class final Lakd;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lakc;


# direct methods
.method constructor <init>(Lakc;I)V
    .locals 0

    iput-object p1, p0, Lakd;->b:Lakc;

    iput p2, p0, Lakd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 2

    check-cast p1, Llv;

    iget-object v0, p0, Lakd;->b:Lakc;

    invoke-static {v0}, Lakc;->a(Lakc;)Landroid/widget/ListView;

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

    check-cast v0, Lkw;

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lakd;->b:Lakc;

    invoke-static {v0}, Lakc;->b(Lakc;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lakd;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lmn;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method
