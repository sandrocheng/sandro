.class public Lcom/avg/ui/general/b/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field protected b:I

.field protected c:I

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/general/b/b;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/avg/ui/general/b/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/avg/ui/general/c/i;->a(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v0, 0xa

    div-int/lit16 v1, v1, 0xa0

    iput v1, p0, Lcom/avg/ui/general/b/b;->b:I

    mul-int/lit8 v0, v0, 0xf

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/avg/ui/general/b/b;->c:I

    return-void
.end method


# virtual methods
.method protected a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v0, p2, Lcom/avg/ui/general/b/c;->c:I

    if-ne v3, v0, :cond_1

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p2, Lcom/avg/ui/general/b/c;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    iget v0, p2, Lcom/avg/ui/general/b/c;->f:I

    if-eq v0, v3, :cond_0

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    iget v1, p2, Lcom/avg/ui/general/b/c;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p2}, Lcom/avg/ui/general/b/c;->a(Lcom/avg/ui/general/b/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/avg/ui/general/b/c;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-boolean v0, p2, Lcom/avg/ui/general/b/c;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    sget v1, Lcom/avg/ui/general/c;->btn_check_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->a:Landroid/widget/ImageView;

    iget v1, p2, Lcom/avg/ui/general/b/c;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    sget v1, Lcom/avg/ui/general/c;->btn_check_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p3, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    sget v1, Lcom/avg/ui/general/c;->list_goto:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/c;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/c;

    invoke-static {v0}, Lcom/avg/ui/general/b/c;->b(Lcom/avg/ui/general/b/c;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-long v0, p1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/c;

    invoke-static {v0}, Lcom/avg/ui/general/b/c;->b(Lcom/avg/ui/general/b/c;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/b/b;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/avg/ui/general/e;->settings_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/avg/ui/general/b/d;

    invoke-direct {v1, p0}, Lcom/avg/ui/general/b/d;-><init>(Lcom/avg/ui/general/b/b;)V

    sget v0, Lcom/avg/ui/general/d;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avg/ui/general/b/d;->a:Landroid/widget/ImageView;

    sget v0, Lcom/avg/ui/general/d;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avg/ui/general/b/d;->b:Landroid/widget/TextView;

    sget v0, Lcom/avg/ui/general/d;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    sget v0, Lcom/avg/ui/general/d;->check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    sget v0, Lcom/avg/ui/general/d;->ll_selection:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/avg/ui/general/b/d;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/avg/ui/general/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/c;

    invoke-virtual {p0, p1, v0, v1}, Lcom/avg/ui/general/b/b;->a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/d;

    move-object v1, v0

    goto :goto_0
.end method
