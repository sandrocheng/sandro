.class final Lasv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lasq;


# direct methods
.method constructor <init>(Lasq;)V
    .locals 0

    iput-object p1, p0, Lasv;->a:Lasq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v0, 0x7f080347

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v1, 0x7f080346

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lasv;->a:Lasq;

    invoke-static {v2}, Lasq;->a(Lasq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llo;

    iget-boolean v3, v2, Llo;->a:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Llo;->a:Z

    iget-boolean v3, v2, Llo;->a:Z

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-boolean v0, v2, Llo;->a:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0200f8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lasv;->a:Lasq;

    invoke-static {v0}, Lasq;->g(Lasq;)I

    move-result v0

    iget-boolean v1, v2, Llo;->a:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lasv;->a:Lasq;

    invoke-static {v1}, Lasq;->h(Lasq;)I

    :goto_2
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lasv;->a:Lasq;

    invoke-static {v1}, Lasq;->g(Lasq;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lasv;->a:Lasq;

    invoke-static {v1}, Lasq;->e(Lasq;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lasv;->a:Lasq;

    invoke-static {v1}, Lasq;->e(Lasq;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lasv;->a:Lasq;

    invoke-static {v2}, Lasq;->j(Lasq;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lasv;->a:Lasq;

    invoke-static {v0}, Lasq;->g(Lasq;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lasv;->a:Lasq;

    invoke-static {v0}, Lasq;->e(Lasq;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lasv;->a:Lasq;

    invoke-static {v0}, Lasq;->e(Lasq;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lasv;->a:Lasq;

    invoke-static {v1}, Lasq;->k(Lasq;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Lasv;->a:Lasq;

    invoke-static {v0}, Lasq;->d(Lasq;)V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    const v0, 0x7f0202cc

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lasv;->a:Lasq;

    invoke-static {v1}, Lasq;->i(Lasq;)I

    goto :goto_2
.end method
