.class public Lcom/avg/ui/general/b/e;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field a:Z

.field b:Z

.field private c:[Ljava/lang/String;

.field private d:Landroid/view/LayoutInflater;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/avg/ui/general/b/e;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/ui/general/b/e;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/avg/ui/general/b/e;->a:Z

    iput-boolean p5, p0, Lcom/avg/ui/general/b/e;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x109000f

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/avg/ui/general/b/e;->c:[Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/general/b/e;->d:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/avg/ui/general/b/e;->e:I

    iput-boolean v2, p0, Lcom/avg/ui/general/b/e;->a:Z

    iput-boolean v2, p0, Lcom/avg/ui/general/b/e;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/b/e;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/b/e;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/b/e;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/b/e;->c:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/avg/ui/general/b/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/avg/ui/general/b/e;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/avg/ui/general/e;->dialog_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/avg/ui/general/b/f;

    invoke-direct {v1, p0}, Lcom/avg/ui/general/b/f;-><init>(Lcom/avg/ui/general/b/e;)V

    sget v0, Lcom/avg/ui/general/d;->textView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avg/ui/general/b/f;->a:Landroid/widget/TextView;

    sget v0, Lcom/avg/ui/general/d;->radioButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/avg/ui/general/b/f;->b:Landroid/widget/RadioButton;

    sget v0, Lcom/avg/ui/general/d;->separator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/avg/ui/general/b/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    iget-object v1, v0, Lcom/avg/ui/general/b/f;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avg/ui/general/b/e;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/avg/ui/general/b/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/avg/ui/general/b/e;->a:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/avg/ui/general/b/f;->b:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget v1, p0, Lcom/avg/ui/general/b/e;->e:I

    if-ne p1, v1, :cond_2

    iget-object v1, v0, Lcom/avg/ui/general/b/f;->b:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/avg/ui/general/b/e;->b:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_0

    iget-object v0, v0, Lcom/avg/ui/general/b/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/f;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/avg/ui/general/b/f;->b:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
