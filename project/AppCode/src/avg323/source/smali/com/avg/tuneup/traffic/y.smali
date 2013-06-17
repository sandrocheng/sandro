.class public Lcom/avg/tuneup/traffic/y;
.super Lcom/avg/tuneup/h;


# instance fields
.field private a:Lcom/avg/tuneup/b;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/ArrayList;

.field private e:Z

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/tuneup/traffic/y;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic A(Lcom/avg/tuneup/traffic/y;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic B(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic C(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic D(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private F()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->fragment_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->ll_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->on:I

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->off:I

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avg/tuneup/traffic/ab;

    invoke-direct {v5, p0}, Lcom/avg/tuneup/traffic/ab;-><init>(Lcom/avg/tuneup/traffic/y;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/avg/ui/general/c/h;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private G()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->apps_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tableLayout1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v2

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v3, Lcom/avg/a/e;->pb_traffic_green:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v3, Lcom/avg/a/e;->pb_traffic_orange:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v3, Lcom/avg/a/e;->pb_traffic_red:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v3, Lcom/avg/a/e;->tv_time_until:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v3, Lcom/avg/a/e;->bottom_traffic_bar:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v5, p0, Lcom/avg/tuneup/traffic/y;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->a:Lcom/avg/tuneup/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->a:Lcom/avg/tuneup/b;

    invoke-virtual {v1, v5}, Lcom/avg/tuneup/b;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->a:Lcom/avg/tuneup/b;

    invoke-virtual {v1}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v3, Lcom/avg/a/e;->tbtn_data_plan:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/avg/tuneup/traffic/ae;

    invoke-direct {v3, p0, v2, v0}, Lcom/avg/tuneup/traffic/ae;-><init>(Lcom/avg/tuneup/traffic/y;ZLandroid/widget/TableLayout;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private H()V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/y;->a(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/avg/tuneup/traffic/y;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/avg/tuneup/traffic/y;->I()V

    :cond_2
    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    new-instance v2, Lcom/avg/tuneup/traffic/ag;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/ag;-><init>(Lcom/avg/tuneup/traffic/y;)V

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avg/tuneup/traffic/ah;

    invoke-direct {v2, p0, v0}, Lcom/avg/tuneup/traffic/ah;-><init>(Lcom/avg/tuneup/traffic/y;Landroid/content/pm/PackageManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private I()V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/avg/tuneup/a;

    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lcom/avg/tuneup/a;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/y;Lcom/avg/tuneup/b;)Lcom/avg/tuneup/b;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/y;->a:Lcom/avg/tuneup/b;

    return-object p1
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/y;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/c/b;

    :try_start_0
    iget-object v2, v0, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/avg/ui/general/c/b;->d:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/y;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/y;->i()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/avg/a/d;->general_android_app:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/avg/ui/general/c/b;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Landroid/widget/CompoundButton;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/avg/a/d;->dialog_icon_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic_data_counter_turn_off_confirmation:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->ok:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/traffic/ac;

    invoke-direct {v2, p0, p1}, Lcom/avg/tuneup/traffic/ac;-><init>(Lcom/avg/tuneup/traffic/y;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->cancel:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/traffic/ad;

    invoke-direct {v2, p0, p1}, Lcom/avg/tuneup/traffic/ad;-><init>(Lcom/avg/tuneup/traffic/y;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/avg/tuneup/j;->a()Z

    move-result v0

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/avg/tuneup/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/avg/tuneup/traffic/y;->a(Landroid/widget/CompoundButton;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    invoke-static {v2}, Lcom/avg/tuneup/j;->a(Z)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/avg/tuneup/traffic/a;

    invoke-direct {v1}, Lcom/avg/tuneup/traffic/a;-><init>()V

    sget v2, Lcom/avg/a/e;->fragment_content:I

    const-string v3, "DataPlanSettingsFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "data_usage"

    const-string v2, "usage_count"

    const-string v3, "on"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/y;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "new_activation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/y;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/y;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/tuneup/traffic/y;->a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/y;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/tuneup/traffic/y;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic b(Lcom/avg/tuneup/traffic/y;)Lcom/avg/tuneup/b;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->a:Lcom/avg/tuneup/b;

    return-object v0
.end method

.method static synthetic c(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/avg/tuneup/traffic/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/traffic/y;->G()V

    return-void
.end method

.method static synthetic g(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/avg/tuneup/traffic/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/traffic/y;->H()V

    return-void
.end method

.method static synthetic k(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/avg/tuneup/traffic/y;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic s(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic t(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic u(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic v(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic w(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic x(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic y(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic z(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/avg/a/f;->traffic_list:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avg/tuneup/traffic/y;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    sget v2, Lcom/avg/a/e;->ll_separator:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->lv_apps:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avg/tuneup/traffic/y;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/avg/tuneup/traffic/z;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/traffic/z;-><init>(Lcom/avg/tuneup/traffic/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-boolean v0, p0, Lcom/avg/tuneup/traffic/y;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->l()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tbtn_data_plan:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    new-instance v1, Lcom/avg/tuneup/traffic/aa;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/traffic/aa;-><init>(Lcom/avg/tuneup/traffic/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->traffic:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/avg/tuneup/traffic/y;->a(Ljava/lang/String;Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/y;->d(Z)V

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/avg/tuneup/traffic/y;->F()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->f:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public a(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .locals 14

    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/s;->d()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/avg/ui/general/c/b;

    invoke-direct {v7}, Lcom/avg/ui/general/c/b;-><init>()V

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v7, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, v7, Lcom/avg/ui/general/c/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v1

    const/4 v8, 0x3

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Lcom/avg/tuneup/traffic/s;->a(ILjava/lang/String;)[J

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v8, 0x0

    aget-wide v8, v1, v8

    iput-wide v8, v7, Lcom/avg/ui/general/c/b;->h:J

    const/4 v8, 0x1

    aget-wide v8, v1, v8

    iput-wide v8, v7, Lcom/avg/ui/general/c/b;->i:J

    :cond_0
    iget-wide v8, v7, Lcom/avg/ui/general/c/b;->h:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    iget-wide v8, v7, Lcom/avg/ui/general/c/b;->i:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_3

    :cond_1
    iget-wide v8, v7, Lcom/avg/ui/general/c/b;->h:J

    cmp-long v1, v8, v12

    if-gtz v1, :cond_2

    iget-wide v8, v7, Lcom/avg/ui/general/c/b;->i:J

    cmp-long v1, v8, v12

    if-lez v1, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/avg/ui/general/c/b;->a:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v7, Lcom/avg/ui/general/c/b;->l:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v1

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v8}, Lcom/avg/tuneup/traffic/s;->a(I)[J

    move-result-object v1

    goto :goto_1

    :cond_5
    return-object v4
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avg/tuneup/traffic/y;->e:Z

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avg/tuneup/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x6

    sget v2, Lcom/avg/a/d;->ab_btn_settings:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/view/Menu;II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a_(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/avg/tuneup/traffic/a;

    invoke-direct {v1}, Lcom/avg/tuneup/traffic/a;-><init>()V

    sget v2, Lcom/avg/a/e;->fragment_content:I

    const-string v3, "DataPlanSettingsFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "data_usage"

    const-string v2, "data_usage_settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 6

    invoke-super {p0}, Lcom/avg/tuneup/h;->r()V

    invoke-direct {p0}, Lcom/avg/tuneup/traffic/y;->G()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/y;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "data_usage"

    const-string v3, "opened_from_notification"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
