.class public final Lda;
.super Lcz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz",
        "<",
        "Ldh;",
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
            "Ldh;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcz;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const v0, 0x7f030012

    invoke-virtual {p0, p1, v0}, Lda;->a(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lda$a;

    invoke-direct {v1}, Lda$a;-><init>()V

    const v0, 0x7f08003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lda$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lda;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldh;

    iget-object v1, v1, Lda$a;->a:Landroid/widget/TextView;

    iget-object v0, v0, Ldh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda$a;

    move-object v1, v0

    goto :goto_0
.end method
