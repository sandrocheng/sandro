.class public Lcom/avg/tuneup/battery/r;
.super Lcom/avg/tuneup/h;


# instance fields
.field private Y:I

.field private Z:Lcom/avg/tuneup/battery/b;

.field protected final a:Ljava/lang/String;

.field private aa:Landroid/os/Handler;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:I

.field protected final f:I

.field private g:Lcom/avg/tuneup/battery/p;

.field private h:Lcom/avg/tuneup/battery/t;

.field private i:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/h;-><init>()V

    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->a:Ljava/lang/String;

    const-string v0, "com.android.settings.fuelgauge.PowerUsageSummary"

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->b:Ljava/lang/String;

    const-string v0, "com.android.settings.Settings"

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->c:Ljava/lang/String;

    const-string v0, ":android:show_fragment"

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->d:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/avg/tuneup/battery/r;->e:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/avg/tuneup/battery/r;->f:I

    return-void
.end method

.method private F()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/avg/tuneup/battery/r;->a(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":android:show_fragment"

    const-string v3, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/avg/tuneup/battery/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/avg/tuneup/battery/r;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/battery/r;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/avg/tuneup/battery/r;)Lcom/avg/tuneup/battery/p;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "health"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "level"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "temperature"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "status"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/avg/tuneup/battery/p;

    invoke-direct {v0}, Lcom/avg/tuneup/battery/p;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/battery/p;->a(Landroid/content/Context;IIII)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->h:Lcom/avg/tuneup/battery/t;

    if-nez v0, :cond_3

    new-instance v0, Lcom/avg/tuneup/battery/t;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/avg/tuneup/battery/t;-><init>(Lcom/avg/tuneup/battery/r;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->h:Lcom/avg/tuneup/battery/t;

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->h:Lcom/avg/tuneup/battery/t;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/e;->img_green:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x5

    if-gt v2, v1, :cond_4

    sget v1, Lcom/avg/a/d;->battery_red:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    iget v1, p0, Lcom/avg/tuneup/battery/r;->Y:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/e;->iv_battery_lightning:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    invoke-virtual {v1}, Lcom/avg/tuneup/battery/p;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/e;->tvBatteryLevel:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_temperature:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    invoke-virtual {v1}, Lcom/avg/tuneup/battery/p;->b()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_status:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    invoke-virtual {v1}, Lcom/avg/tuneup/battery/p;->i()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_health:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->g:Lcom/avg/tuneup/battery/p;

    invoke-virtual {v1}, Lcom/avg/tuneup/battery/p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/e;->tvBatterySummary:I

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->h:Lcom/avg/tuneup/battery/t;

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/t;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x1e

    if-gt v2, v1, :cond_5

    sget v1, Lcom/avg/a/d;->battery_orange:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_5
    sget v1, Lcom/avg/a/d;->battery_green:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/avg/tuneup/battery/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/avg/tuneup/battery/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/avg/tuneup/battery/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/avg/tuneup/battery/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/avg/tuneup/battery/r;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v0, Lcom/avg/a/f;->battery_state:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->performance_battery:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/avg/tuneup/battery/r;->a(Ljava/lang/String;Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/avg/tuneup/battery/r;->d(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x0

    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_usage:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast p1, Landroid/view/Menu;

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->battery_save_settings:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "battery_consumption"

    const-string v2, "menu_opened"

    invoke-static {v0, v1, v2, v6, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6

    :cond_1
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->battery_usage:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v3, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    check-cast p1, Lcom/avg/ui/general/c/f;

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->battery_save_settings:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v5, v3, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/r;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->aa:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avg/tuneup/battery/s;

    invoke-direct {v0, p0}, Lcom/avg/tuneup/battery/s;-><init>(Lcom/avg/tuneup/battery/r;)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->aa:Landroid/os/Handler;

    :cond_0
    new-instance v0, Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avg/tuneup/battery/b;-><init>(I)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->Z:Lcom/avg/tuneup/battery/b;

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/battery/r;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_0
    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a_(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/battery/r;->e(Landroid/view/MenuItem;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a_(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/avg/tuneup/battery/r;->F()V

    iget-object v2, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "battery_consumption"

    const-string v4, "battery_usage"

    invoke-static {v2, v3, v4, v6, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    new-instance v3, Lcom/avg/tuneup/battery/c;

    invoke-direct {v3}, Lcom/avg/tuneup/battery/c;-><init>()V

    sget v4, Lcom/avg/a/e;->fragment_content:I

    const-string v5, "BatterySaveSettingsFragment"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "battery_consumption"

    const-string v4, "power_saving_options"

    invoke-static {v2, v3, v4, v6, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/avg/tuneup/battery/r;->a()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/r;->b(I)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/e;->list:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avg/tuneup/battery/r;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->i:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->i:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/avg/tuneup/battery/r;->i()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avg/a/d;->battery_empty:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/battery/r;->Y:I

    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/r;->b(I)Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 4

    invoke-super {p0}, Lcom/avg/tuneup/h;->r()V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->Z:Lcom/avg/tuneup/battery/b;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->aa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->Z:Lcom/avg/tuneup/battery/b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public s()V
    .locals 2

    invoke-super {p0}, Lcom/avg/tuneup/h;->s()V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/tuneup/battery/r;->Z:Lcom/avg/tuneup/battery/b;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/r;->Z:Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    return-void
.end method
