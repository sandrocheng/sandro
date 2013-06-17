.class public abstract Lcom/antivirus/ui/callmessagefilter/a;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field protected a:Ljava/util/List;

.field protected b:Ljava/util/List;

.field protected final c:Ljava/lang/Object;

.field protected d:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/antivirus/ui/callmessagefilter/d;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/d;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/util/List;
.end method

.method public a(ILcom/antivirus/ui/callmessagefilter/d;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected abstract a(Landroid/view/View;Lcom/antivirus/ui/callmessagefilter/d;)V
.end method

.method public a(Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/antivirus/ui/callmessagefilter/d;I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/d;Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b;

    invoke-direct {v0, p0, p2, p3}, Lcom/antivirus/ui/callmessagefilter/b;-><init>(Lcom/antivirus/ui/callmessagefilter/a;Lcom/antivirus/ui/callmessagefilter/d;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a([Lcom/antivirus/ui/callmessagefilter/x;)V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/a;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->d:Landroid/widget/Filter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/c;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/c;-><init>(Lcom/antivirus/ui/callmessagefilter/a;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->d:Landroid/widget/Filter;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/a;->d:Landroid/widget/Filter;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/a;->a(I)Lcom/antivirus/ui/callmessagefilter/d;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/a;->a(I)Lcom/antivirus/ui/callmessagefilter/d;

    move-result-object v4

    const v0, 0x7f08008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080093

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080094

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080095

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/d;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/antivirus/ui/callmessagefilter/x;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/d;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, v4}, Lcom/antivirus/ui/callmessagefilter/a;->a(Landroid/view/View;Lcom/antivirus/ui/callmessagefilter/d;)V

    return-object p2

    :cond_2
    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6}, Lcom/antivirus/ui/callmessagefilter/d;->a(Z)V

    invoke-virtual {p0, v1, v4, v0}, Lcom/antivirus/ui/callmessagefilter/a;->a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/d;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
