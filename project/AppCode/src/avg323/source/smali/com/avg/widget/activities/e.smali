.class Lcom/avg/widget/activities/e;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/avg/widget/activities/a;


# direct methods
.method public constructor <init>(Lcom/avg/widget/activities/a;)V
    .locals 1

    iput-object p1, p0, Lcom/avg/widget/activities/e;->a:Lcom/avg/widget/activities/a;

    sget v0, Lcom/avg/widget/e;->widget_config_list_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/avg/widget/model/plugin/WidgetPlugin;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Lcom/avg/widget/model/plugin/WidgetPlugin;
    .locals 1

    iget-object v0, p0, Lcom/avg/widget/activities/e;->a:Lcom/avg/widget/activities/a;

    invoke-static {v0}, Lcom/avg/widget/activities/a;->c(Lcom/avg/widget/activities/a;)[Landroid/os/Parcelable;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/avg/widget/model/plugin/WidgetPlugin;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/avg/widget/activities/e;->a:Lcom/avg/widget/activities/a;

    invoke-static {v0}, Lcom/avg/widget/activities/a;->c(Lcom/avg/widget/activities/a;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/avg/widget/activities/e;->a(I)Lcom/avg/widget/model/plugin/WidgetPlugin;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPosition(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/avg/widget/model/plugin/WidgetPlugin;

    invoke-virtual {p0, p1}, Lcom/avg/widget/activities/e;->a(Lcom/avg/widget/model/plugin/WidgetPlugin;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/avg/widget/activities/e;->a:Lcom/avg/widget/activities/a;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/avg/widget/e;->widget_config_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/avg/widget/activities/d;

    invoke-direct {v1}, Lcom/avg/widget/activities/d;-><init>()V

    sget v0, Lcom/avg/widget/d;->widgetConfigTextLeft:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avg/widget/activities/d;->a:Landroid/widget/TextView;

    sget v0, Lcom/avg/widget/d;->widgetConfigImageRight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avg/widget/activities/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/activities/d;

    iget-object v1, p0, Lcom/avg/widget/activities/e;->a:Lcom/avg/widget/activities/a;

    invoke-static {v1}, Lcom/avg/widget/activities/a;->c(Lcom/avg/widget/activities/a;)[Landroid/os/Parcelable;

    move-result-object v1

    aget-object v1, v1, p1

    check-cast v1, Lcom/avg/widget/model/plugin/WidgetPlugin;

    iget-object v2, p0, Lcom/avg/widget/activities/e;->a:Lcom/avg/widget/activities/a;

    invoke-virtual {v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avg/widget/activities/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/avg/widget/activities/d;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/avg/widget/activities/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method
