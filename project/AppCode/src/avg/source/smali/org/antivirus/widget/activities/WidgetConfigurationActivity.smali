.class public Lorg/antivirus/widget/activities/WidgetConfigurationActivity;
.super Landroid/app/Activity;


# static fields
.field private static i:Landroid/util/SparseIntArray;


# instance fields
.field public a:Landroid/content/ServiceConnection;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lorg/antivirus/widget/a/k;

.field private f:Ljava/util/List;

.field private g:Z

.field private h:Lorg/antivirus/core/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x7f02014e

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->i:Landroid/util/SparseIntArray;

    const v1, 0x7f08010c

    const v2, 0x7f02014c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->i:Landroid/util/SparseIntArray;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->i:Landroid/util/SparseIntArray;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->i:Landroid/util/SparseIntArray;

    const v1, 0x7f08010f

    const v2, 0x7f02014f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    new-instance v0, Lorg/antivirus/widget/activities/a;

    invoke-direct {v0, p0}, Lorg/antivirus/widget/activities/a;-><init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V

    iput-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;Lorg/antivirus/core/b/a;)Lorg/antivirus/core/b/a;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->h:Lorg/antivirus/core/b/a;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V
    .locals 2

    const v1, 0x7f080109

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->h:Lorg/antivirus/core/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->h:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;Landroid/view/View;)V
    .locals 5

    const v4, 0x7f080110

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v4}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput v3, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->g:Z

    return p1
.end method

.method static synthetic b(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->c:I

    return v0
.end method

.method static synthetic c(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)Lorg/antivirus/widget/a/k;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->e:Lorg/antivirus/widget/a/k;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->e:Lorg/antivirus/widget/a/k;

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->h:Lorg/antivirus/core/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->h:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/widget/a/k;->b(Ljava/lang/Boolean;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "appWidgetId"

    iget v3, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->b:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->setResult(ILandroid/content/Intent;)V

    iput-boolean v1, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->d:Z

    invoke-virtual {p0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "widget"

    const-string v1, "widget_settings"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->b:I

    const-string v1, "ExistingWidget"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->d:Z

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->e:Lorg/antivirus/widget/a/k;

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->setContentView(I)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    const v1, 0x7f08010c

    invoke-virtual {p0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    const v1, 0x7f08010d

    invoke-virtual {p0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    const/4 v1, 0x2

    const v3, 0x7f08010e

    invoke-virtual {p0, v3}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    const/4 v1, 0x3

    const v3, 0x7f08010f

    invoke-virtual {p0, v3}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Lorg/antivirus/widget/activities/c;

    invoke-direct {v3, p0}, Lorg/antivirus/widget/activities/c;-><init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "Widget Configuration Activity is launched without widget ID. Quit"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/antivirus/widget/activities/b;

    invoke-direct {v1, p0}, Lorg/antivirus/widget/activities/b;-><init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lorg/antivirus/widget/activities/e;

    invoke-direct {v1, p0}, Lorg/antivirus/widget/activities/e;-><init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lorg/antivirus/widget/activities/f;

    invoke-direct {v1, p0}, Lorg/antivirus/widget/activities/f;-><init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->e:Lorg/antivirus/widget/a/k;

    invoke-virtual {v0}, Lorg/antivirus/widget/a/k;->a()[Ljava/lang/Integer;

    move-result-object v3

    array-length v0, v3

    if-eqz v0, :cond_3

    move v1, v2

    :goto_2
    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v4}, Lorg/antivirus/widget/a/i;->a(I)Lorg/antivirus/widget/a/i;

    move-result-object v5

    invoke-virtual {v5}, Lorg/antivirus/widget/a/i;->c()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lorg/antivirus/widget/a/i;->b()I

    move-result v5

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v5, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->e:Lorg/antivirus/widget/a/k;

    iget-object v6, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v5, v0, v4}, Lorg/antivirus/widget/a/k;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v3, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->setResult(ILandroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v7}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lorg/antivirus/core/b/g;

    invoke-direct {v0, p0}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/antivirus/core/b/g;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/antivirus/core/b/g;->b()V

    const-string v0, "widget"

    const-string v1, "widget_settings"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iget v1, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    iget-boolean v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->g:Z

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
