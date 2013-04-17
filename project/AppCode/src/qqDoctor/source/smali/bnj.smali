.class final Lbnj;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 2

    check-cast p1, Llv;

    iget-object v0, p1, Llv;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Llv;->c:Landroid/widget/ImageView;

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
