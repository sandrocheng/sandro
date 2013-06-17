.class public abstract Lcom/avg/ui/general/fragments/i;
.super Lcom/avg/ui/general/fragments/a;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field protected a:Lcom/avg/ui/general/fragments/FragmentTabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 5

    iget-object v0, p0, Lcom/avg/ui/general/fragments/i;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v0, p1}, Lcom/avg/ui/general/fragments/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avg/ui/general/fragments/i;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/avg/ui/general/e;->tab_indicator:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/avg/ui/general/d;->title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avg/ui/general/fragments/i;->h()Landroid/support/v4/app/i;

    move-result-object v3

    sget v4, Lcom/avg/ui/general/h;->TextAppearanceTabWidget:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    return-object v1
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/avg/ui/general/fragments/i;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {p0}, Lcom/avg/ui/general/fragments/i;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avg/ui/general/fragments/i;->k()Landroid/support/v4/app/o;

    move-result-object v2

    sget v3, Lcom/avg/ui/general/d;->realtabcontent:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/fragments/FragmentTabHost;->a(Landroid/content/Context;Landroid/support/v4/app/o;I)V

    invoke-virtual {p0}, Lcom/avg/ui/general/fragments/i;->G()[Lcom/avg/ui/general/fragments/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avg/ui/general/fragments/i;->a([Lcom/avg/ui/general/fragments/j;)V

    return-void
.end method

.method private varargs a([Lcom/avg/ui/general/fragments/j;)V
    .locals 6

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/avg/ui/general/fragments/i;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v2}, Lcom/avg/ui/general/fragments/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/avg/ui/general/fragments/i;->a(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v2}, Lcom/avg/ui/general/fragments/j;->b()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2}, Lcom/avg/ui/general/fragments/j;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/avg/ui/general/fragments/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract F()I
.end method

.method protected abstract G()[Lcom/avg/ui/general/fragments/j;
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/avg/ui/general/fragments/i;->F()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x1020012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/fragments/FragmentTabHost;

    iput-object v0, p0, Lcom/avg/ui/general/fragments/i;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    iget-object v0, p0, Lcom/avg/ui/general/fragments/i;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v0, p0}, Lcom/avg/ui/general/fragments/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/i;->a()V

    return-object v1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/a;->d(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avg/ui/general/fragments/i;->c(Z)V

    iget-object v0, p0, Lcom/avg/ui/general/fragments/i;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/fragments/FragmentTabHost;->setCurrentTab(I)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/avg/ui/general/fragments/a;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/ui/general/fragments/i;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
