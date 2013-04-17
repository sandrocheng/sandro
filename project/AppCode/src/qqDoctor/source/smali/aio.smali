.class final Laio;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Lain;


# direct methods
.method constructor <init>(Lain;)V
    .locals 0

    iput-object p1, p0, Laio;->a:Lain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 3

    check-cast p1, Llv;

    iget-object v0, p0, Laio;->a:Lain;

    invoke-static {v0}, Lain;->a(Lain;)Landroid/widget/ListView;

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

    invoke-virtual {v0}, Lkw;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Laio;->a:Lain;

    iget-object v0, v0, Lmb;->a:Ljava/lang/String;

    iget-object v2, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, v2}, Lain;->a(Lain;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
