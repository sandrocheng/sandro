.class public Lcom/avg/ui/general/d/g;
.super Lcom/avg/ui/general/b/b;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/d/b;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/avg/ui/general/d/b;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/avg/ui/general/d/g;->a:Lcom/avg/ui/general/d/b;

    invoke-direct {p0, p2, p3}, Lcom/avg/ui/general/b/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/ui/general/d/g;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/avg/ui/general/d/g;->d:I

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/avg/ui/general/b/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/avg/ui/general/b/d;

    invoke-direct {v2, p0}, Lcom/avg/ui/general/b/d;-><init>(Lcom/avg/ui/general/b/b;)V

    sget v0, Lcom/avg/ui/general/d;->ll_selection:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/avg/ui/general/b/d;->e:Landroid/widget/LinearLayout;

    sget v0, Lcom/avg/ui/general/d;->summary:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    sget v0, Lcom/avg/ui/general/d;->icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avg/ui/general/b/d;->a:Landroid/widget/ImageView;

    sget v0, Lcom/avg/ui/general/d;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avg/ui/general/b/d;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/avg/ui/general/d/g;->d:I

    if-ne p1, v0, :cond_1

    sget v0, Lcom/avg/ui/general/b;->selected_list_item_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/d;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, v2, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/d;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/avg/ui/general/d/g;->c:I

    iget v3, p0, Lcom/avg/ui/general/d/g;->b:I

    iget v4, p0, Lcom/avg/ui/general/d/g;->b:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-object v1

    :cond_1
    sget v0, Lcom/avg/ui/general/b;->transparent:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/d;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
