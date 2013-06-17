.class Lcom/avg/tuneup/a/i;
.super Lcom/avg/ui/general/b/g;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/a/c;

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/avg/tuneup/a/c;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-direct {p0, p2, p3}, Lcom/avg/ui/general/b/g;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/i;->g:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/avg/tuneup/a/i;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/a/i;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/avg/a/f;->settings_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/avg/ui/general/b/i;

    invoke-direct {v2, p0}, Lcom/avg/ui/general/b/i;-><init>(Lcom/avg/ui/general/b/g;)V

    sget v0, Lcom/avg/a/e;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avg/ui/general/b/i;->a:Landroid/widget/ImageView;

    sget v0, Lcom/avg/a/e;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avg/ui/general/b/i;->b:Landroid/widget/TextView;

    sget v0, Lcom/avg/a/e;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avg/ui/general/b/i;->c:Landroid/widget/TextView;

    sget v0, Lcom/avg/a/e;->check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avg/ui/general/b/i;->e:Landroid/widget/ImageView;

    sget v0, Lcom/avg/a/e;->ll_selection:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/avg/ui/general/b/i;->f:Landroid/widget/LinearLayout;

    sget v0, Lcom/avg/a/e;->ll_texts:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/avg/tuneup/a/i;->h:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    iget-object v1, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/avg/tuneup/a/i;->h:Landroid/content/Context;

    sget v4, Lcom/avg/a/h;->ListItemMoreInfo:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/h;

    iget v0, v0, Lcom/avg/ui/general/b/h;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/avg/tuneup/a/i;->c:Z

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/avg/tuneup/a/i;->e:I

    iget v3, p0, Lcom/avg/tuneup/a/i;->d:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/avg/tuneup/a/i;->d:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/avg/tuneup/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/h;

    iget v0, v0, Lcom/avg/ui/general/b/h;->a:I

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->t(Lcom/avg/tuneup/a/c;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Lcom/avg/a/c;->selected_list_item_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_2
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/i;

    move-object v2, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->h(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const/4 v3, 0x0

    sget v4, Lcom/avg/a/d;->list_ic_task_killer:I

    sget v5, Lcom/avg/a/g;->title_task_killer_preference:I

    sget v6, Lcom/avg/a/g;->summary_task_killer_preference:I

    sget v7, Lcom/avg/a/d;->list_goto:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avg/tuneup/a/i;->a(Landroid/content/Context;Lcom/avg/ui/general/b/i;IIIII)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->i(Lcom/avg/tuneup/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->j(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const/4 v3, 0x1

    sget v4, Lcom/avg/a/d;->list_ic_battery:I

    sget v5, Lcom/avg/a/g;->performance_battery:I

    sget v6, Lcom/avg/a/g;->performance_battery_desc:I

    sget v7, Lcom/avg/a/d;->list_goto:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avg/tuneup/a/i;->a(Landroid/content/Context;Lcom/avg/ui/general/b/i;IIIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->k(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v3, Lcom/avg/a/g;->battery_status:I

    invoke-virtual {v1, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->l(Lcom/avg/tuneup/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->m(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v3, Lcom/avg/a/g;->performance_battery_level:I

    invoke-virtual {v1, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->n(Lcom/avg/tuneup/a/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/avg/tuneup/j;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->n(Lcom/avg/tuneup/a/c;)I

    move-result v0

    invoke-static {}, Lcom/avg/tuneup/j;->o()I

    move-result v1

    if-gt v0, v1, :cond_3

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-virtual {v1}, Lcom/avg/tuneup/a/c;->i()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/avg/a/c;->orange_warning:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->o(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const/4 v3, 0x2

    sget v4, Lcom/avg/a/d;->list_ic_traffic:I

    sget v5, Lcom/avg/a/g;->performance_traffic:I

    sget v6, Lcom/avg/a/g;->performance_traffic_desc:I

    sget v7, Lcom/avg/a/d;->list_goto:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avg/tuneup/a/i;->a(Landroid/content/Context;Lcom/avg/ui/general/b/i;IIIII)V

    iget-object v0, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->p(Lcom/avg/tuneup/a/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->p(Lcom/avg/tuneup/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->q(Lcom/avg/tuneup/a/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->r(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const/4 v3, 0x3

    sget v4, Lcom/avg/a/d;->list_ic_storage:I

    sget v5, Lcom/avg/a/g;->performance_storage:I

    sget v6, Lcom/avg/a/g;->performance_storage_desc:I

    sget v7, Lcom/avg/a/d;->list_goto:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avg/tuneup/a/i;->a(Landroid/content/Context;Lcom/avg/ui/general/b/i;IIIII)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->s(Lcom/avg/tuneup/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, v2, Lcom/avg/ui/general/b/i;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/avg/ui/general/b/i;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/h;

    iget v0, v0, Lcom/avg/ui/general/b/h;->a:I

    iget-object v1, p0, Lcom/avg/tuneup/a/i;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v1}, Lcom/avg/tuneup/a/c;->t(Lcom/avg/tuneup/a/c;)I

    move-result v1

    if-eq v0, v1, :cond_5

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    iget-object v0, v2, Lcom/avg/ui/general/b/i;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
