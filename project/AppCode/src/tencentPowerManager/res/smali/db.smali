.class public final Ldb;
.super Lcz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz",
        "<",
        "Ldl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ldk",
            "<",
            "Ldl;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcz;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const v0, 0x7f030013

    invoke-virtual {p0, p1, v0}, Ldb;->a(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Ldb$a;

    invoke-direct {v1}, Ldb$a;-><init>()V

    const v0, 0x7f080040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ldb$a;->b:Landroid/widget/TextView;

    const v0, 0x7f080041

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Ldb$a;->c:Landroid/widget/CheckBox;

    const v0, 0x7f08003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ldb$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Ldb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldl;

    iget-object v0, v0, Ldl;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, v1, Ldb$a;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Ldb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v0, v1, Ldb$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Ldb;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Ldb$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, v1, Ldb$a;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Ldb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldl;

    iget-boolean v0, v0, Ldl;->b:Z

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Ldb$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Ldb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldl;

    iget-object v0, v0, Ldl;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
