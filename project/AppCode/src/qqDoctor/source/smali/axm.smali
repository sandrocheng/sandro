.class final Laxm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxm;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Laxm;->a:Laxj;

    invoke-static {v0}, Laxj;->E(Laxj;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laxm;->a:Laxj;

    invoke-static {v0}, Laxj;->E(Laxj;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Laxm;->a:Laxj;

    invoke-static {v0}, Laxj;->z(Laxj;)Lajr;

    move-result-object v0

    invoke-virtual {v0}, Lajr;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    rem-int v1, p3, v0

    iget-object v0, p0, Laxm;->a:Laxj;

    invoke-static {v0}, Laxj;->b(Laxj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Laxm;->a:Laxj;

    invoke-static {v2}, Laxj;->y(Laxj;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Laxm;->a:Laxj;

    invoke-static {v2}, Laxj;->I(Laxj;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Laxm;->a:Laxj;

    invoke-static {v3, v0}, Laxj;->a(Laxj;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laxm;->a:Laxj;

    invoke-static {v0, v1}, Laxj;->a(Laxj;I)V

    :cond_1
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
