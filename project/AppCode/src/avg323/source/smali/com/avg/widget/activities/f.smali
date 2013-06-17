.class Lcom/avg/widget/activities/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/avg/widget/activities/a;


# direct methods
.method constructor <init>(Lcom/avg/widget/activities/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/widget/activities/f;->a:Lcom/avg/widget/activities/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/avg/widget/activities/f;->a:Lcom/avg/widget/activities/a;

    iget-object v1, p0, Lcom/avg/widget/activities/f;->a:Lcom/avg/widget/activities/a;

    invoke-static {v1}, Lcom/avg/widget/activities/a;->a(Lcom/avg/widget/activities/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avg/widget/model/plugin/WidgetPlugin;

    iget-object v2, p0, Lcom/avg/widget/activities/f;->a:Lcom/avg/widget/activities/a;

    invoke-virtual {v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avg/widget/activities/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->i()I

    move-result v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "widget_view_button_id"

    iget-object v4, p0, Lcom/avg/widget/activities/f;->a:Lcom/avg/widget/activities/a;

    invoke-static {v4}, Lcom/avg/widget/activities/a;->b(Lcom/avg/widget/activities/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_config_resource_item"

    invoke-virtual {v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->j()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/avg/widget/activities/f;->a:Lcom/avg/widget/activities/a;

    const/16 v1, 0x61a8

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v2}, Lcom/avg/toolkit/i;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method
