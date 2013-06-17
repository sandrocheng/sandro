.class public abstract Lcom/avg/widget/activities/a;
.super Landroid/app/Activity;


# static fields
.field private static g:Landroid/util/SparseIntArray;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljava/util/List;

.field private e:[I

.field private f:[Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/avg/widget/activities/a;->g:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/avg/widget/activities/a;->g:Landroid/util/SparseIntArray;

    sget v1, Lcom/avg/widget/d;->configItem0:I

    sget v2, Lcom/avg/widget/c;->widget_config_left:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/avg/widget/activities/a;->g:Landroid/util/SparseIntArray;

    sget v1, Lcom/avg/widget/d;->configItem1:I

    sget v2, Lcom/avg/widget/c;->widget_config_middle:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/avg/widget/activities/a;->g:Landroid/util/SparseIntArray;

    sget v1, Lcom/avg/widget/d;->configItem2:I

    sget v2, Lcom/avg/widget/c;->widget_config_middle:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/avg/widget/activities/a;->g:Landroid/util/SparseIntArray;

    sget v1, Lcom/avg/widget/d;->configItem3:I

    sget v2, Lcom/avg/widget/c;->widget_config_right:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/widget/activities/a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/widget/activities/a;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/avg/widget/activities/a;)I
    .locals 1

    iget v0, p0, Lcom/avg/widget/activities/a;->b:I

    return v0
.end method

.method private a(I)Lcom/avg/widget/model/plugin/WidgetPlugin;
    .locals 5

    iget-object v2, p0, Lcom/avg/widget/activities/a;->f:[Landroid/os/Parcelable;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    check-cast v0, Lcom/avg/widget/model/plugin/WidgetPlugin;

    invoke-virtual {v0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->j()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported plugin ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/avg/widget/activities/a;->a(I)Lcom/avg/widget/model/plugin/WidgetPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->h()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/avg/widget/activities/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;->i()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "widget_view_button_id"

    iget-object v3, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_config_resource_item"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x61a8

    const/16 v2, 0xa

    invoke-static {p0, v0, v2, v1}, Lcom/avg/toolkit/i;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v0, p0, Lcom/avg/widget/activities/a;->b:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/avg/widget/activities/a;->d()V

    sget-object v0, Lcom/avg/widget/activities/a;->g:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/avg/widget/activities/a;->b:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/avg/widget/activities/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/avg/widget/activities/a;->c()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iput v2, p0, Lcom/avg/widget/activities/a;->b:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/avg/widget/activities/a;->b:I

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/avg/widget/activities/a;->g:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/avg/widget/activities/a;->b:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/avg/widget/activities/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/widget/activities/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/avg/widget/activities/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/avg/widget/activities/a;->e:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/avg/widget/activities/a;->e:[I

    aget v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/avg/widget/activities/a;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    sget v0, Lcom/avg/widget/d;->configurationList:I

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/avg/widget/activities/a;)[Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/avg/widget/activities/a;->f:[Landroid/os/Parcelable;

    return-object v0
.end method

.method private d()V
    .locals 2

    sget v0, Lcom/avg/widget/d;->configurationList:I

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/16 v0, 0x61a8

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/avg/toolkit/i;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/widget/activities/a;->c:Z

    invoke-virtual {p0}, Lcom/avg/widget/activities/a;->finish()V

    return-void
.end method

.method protected abstract a(Lcom/avg/toolkit/e/a;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/avg/widget/activities/a;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/avg/widget/activities/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avg/widget/activities/a;->a:I

    const-string v1, "ExistingWidget"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/avg/widget/activities/a;->c:Z

    const-string v1, "curr_widget_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/avg/widget/activities/a;->e:[I

    const-string v1, "available_plugins"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/widget/activities/a;->f:[Landroid/os/Parcelable;

    sget v0, Lcom/avg/widget/e;->widget_configuration:I

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->setContentView(I)V

    iget-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    sget v1, Lcom/avg/widget/d;->configItem0:I

    invoke-virtual {p0, v1}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    sget v1, Lcom/avg/widget/d;->configItem1:I

    invoke-virtual {p0, v1}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    const/4 v1, 0x2

    sget v2, Lcom/avg/widget/d;->configItem2:I

    invoke-virtual {p0, v2}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    const/4 v1, 0x3

    sget v2, Lcom/avg/widget/d;->configItem3:I

    invoke-virtual {p0, v2}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/avg/widget/activities/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/avg/widget/activities/c;

    invoke-direct {v2, p0}, Lcom/avg/widget/activities/c;-><init>(Lcom/avg/widget/activities/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "Widget Configuration Activity is launched without widget ID. Quit"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/avg/widget/activities/a;->finish()V

    :goto_1
    return-void

    :cond_1
    sget v0, Lcom/avg/widget/d;->saveButton:I

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avg/widget/activities/b;

    invoke-direct {v1, p0}, Lcom/avg/widget/activities/b;-><init>(Lcom/avg/widget/activities/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/avg/widget/d;->configurationList:I

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/avg/widget/activities/e;

    invoke-direct {v1, p0}, Lcom/avg/widget/activities/e;-><init>(Lcom/avg/widget/activities/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/avg/widget/activities/f;

    invoke-direct {v1, p0}, Lcom/avg/widget/activities/f;-><init>(Lcom/avg/widget/activities/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/avg/widget/activities/a;->b()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/avg/widget/activities/a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/avg/widget/activities/a;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/a;->a(Lcom/avg/toolkit/e/a;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/avg/widget/activities/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iget v1, p0, Lcom/avg/widget/activities/a;->a:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
