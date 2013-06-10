.class public Lorg/antivirus/tuneup/BatteryStateActivity;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private g:Lorg/antivirus/tuneup/u;

.field private h:Lorg/antivirus/tuneup/aa;

.field private i:Landroid/widget/ListView;

.field private j:I

.field private k:Lorg/antivirus/tuneup/h;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    const-string v0, "com.android.settings"

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->a:Ljava/lang/String;

    const-string v0, "com.android.settings.fuelgauge.PowerUsageSummary"

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->b:Ljava/lang/String;

    const-string v0, "com.android.settings.Settings"

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->c:Ljava/lang/String;

    const-string v0, ":android:show_fragment"

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->d:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->e:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->f:I

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatteryStateActivity;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

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

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->startActivity(Landroid/content/Intent;)V

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

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/tuneup/BatteryStateActivity;Landroid/content/Intent;)V
    .locals 12

    if-eqz p1, :cond_2

    const-string v0, "health"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "level"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "temperature"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "status"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/tuneup/u;

    invoke-direct {v0}, Lorg/antivirus/tuneup/u;-><init>()V

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    :cond_0
    iget-object v5, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    iput v4, v5, Lorg/antivirus/tuneup/u;->b:I

    iput v3, v5, Lorg/antivirus/tuneup/u;->a:I

    int-to-double v6, v2

    const-wide v8, 0x400e666666666666L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    double-to-int v0, v6

    int-to-double v6, v2

    const-wide v8, 0x400e666666666666L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    rem-double/2addr v6, v8

    double-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v0, 0xa

    if-ge v6, v0, :cond_3

    const-string v0, "0"

    :goto_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->g:Ljava/lang/String;

    int-to-double v6, v2

    const-wide v8, 0x4002666666666666L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    double-to-int v0, v6

    int-to-double v6, v2

    const-wide v8, 0x4002666666666666L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    rem-double/2addr v6, v8

    double-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v0, 0xa

    if-ge v6, v0, :cond_4

    const-string v0, "0"

    :goto_1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->f:Ljava/lang/String;

    int-to-double v6, v2

    const-wide/high16 v8, 0x4018

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    double-to-int v0, v6

    int-to-double v6, v2

    const-wide/high16 v8, 0x4018

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    rem-double/2addr v6, v8

    double-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v0, 0xa

    if-ge v6, v0, :cond_5

    const-string v0, "0"

    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->h:Ljava/lang/String;

    int-to-double v6, v2

    const-wide/high16 v8, 0x4008

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    double-to-int v0, v6

    int-to-double v6, v2

    const-wide/high16 v8, 0x4008

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    rem-double/2addr v6, v8

    double-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v0, 0xa

    if-ge v6, v0, :cond_6

    const-string v0, "0"

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->i:Ljava/lang/String;

    int-to-double v6, v2

    const-wide v8, 0x4016cccccccccccdL

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    double-to-int v0, v6

    int-to-double v6, v2

    const-wide v8, 0x4016cccccccccccdL

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    rem-double/2addr v6, v8

    double-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v0, 0xa

    if-ge v6, v0, :cond_7

    const-string v0, "0"

    :goto_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->j:Ljava/lang/String;

    int-to-double v6, v2

    const-wide v8, 0x4066800000000000L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    double-to-int v0, v6

    int-to-double v6, v2

    const-wide v8, 0x4066800000000000L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e

    rem-double/2addr v6, v8

    double-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v0, 0xa

    if-ge v6, v0, :cond_8

    const-string v0, "0"

    :goto_5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->k:Ljava/lang/String;

    const-wide v6, 0x3ffccccccccccccdL

    int-to-double v8, v3

    const-wide/high16 v10, 0x4024

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4040

    add-double/2addr v6, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u00b0F|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u00b0C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->c:Ljava/lang/String;

    packed-switch v4, :pswitch_data_0

    const v0, 0x7f0900e9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->d:Ljava/lang/String;

    :goto_6
    packed-switch v1, :pswitch_data_1

    const v0, 0x7f0900e9

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->e:Ljava/lang/String;

    :goto_7
    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->h:Lorg/antivirus/tuneup/aa;

    if-nez v0, :cond_9

    new-instance v0, Lorg/antivirus/tuneup/aa;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/tuneup/aa;-><init>(Lorg/antivirus/tuneup/BatteryStateActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->h:Lorg/antivirus/tuneup/aa;

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->h:Lorg/antivirus/tuneup/aa;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_8
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x5

    if-gt v2, v1, :cond_a

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_9
    iget v1, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->j:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    iget v1, v1, Lorg/antivirus/tuneup/u;->b:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    const/4 v1, 0x1

    :goto_a
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->findViewById(I)Landroid/view/View;

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

    const v1, 0x7f0900e7

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->c:Ljava/lang/String;

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

    const v1, 0x7f0900e2

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->d:Ljava/lang/String;

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

    const v1, 0x7f0900dd

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, ""

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    goto/16 :goto_1

    :cond_5
    const-string v0, ""

    goto/16 :goto_2

    :cond_6
    const-string v0, ""

    goto/16 :goto_3

    :cond_7
    const-string v0, ""

    goto/16 :goto_4

    :cond_8
    const-string v0, ""

    goto/16 :goto_5

    :pswitch_0
    const v0, 0x7f0900e3

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->d:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_1
    const v0, 0x7f0900e4

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->d:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_2
    const v0, 0x7f0900e5

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->d:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_3
    const v0, 0x7f0900e6

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->d:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_4
    const v0, 0x7f0900de

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->e:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_5
    const v0, 0x7f0900df

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->e:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_6
    const v0, 0x7f0900e1

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->e:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_7
    const v0, 0x7f0900e0

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/antivirus/tuneup/u;->e:Ljava/lang/String;

    goto/16 :goto_7

    :cond_9
    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->h:Lorg/antivirus/tuneup/aa;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/aa;->notifyDataSetChanged()V

    goto/16 :goto_8

    :cond_a
    const/16 v1, 0x1e

    if-gt v2, v1, :cond_b

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_9

    :cond_b
    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_9

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lorg/antivirus/tuneup/BatteryStateActivity;)Lorg/antivirus/tuneup/u;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->g:Lorg/antivirus/tuneup/u;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f06003d

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f02000e

    const v3, 0x7f02000f

    const v0, 0x7f0901a3

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/tuneup/BatteryStateActivity;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v2, Lorg/antivirus/tuneup/w;

    invoke-direct {v2, p0, v1}, Lorg/antivirus/tuneup/w;-><init>(Lorg/antivirus/tuneup/BatteryStateActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lorg/antivirus/tuneup/x;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/x;-><init>(Lorg/antivirus/tuneup/BatteryStateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v2, Lorg/antivirus/tuneup/y;

    invoke-direct {v2, p0, v1}, Lorg/antivirus/tuneup/y;-><init>(Lorg/antivirus/tuneup/BatteryStateActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lorg/antivirus/tuneup/z;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/z;-><init>(Lorg/antivirus/tuneup/BatteryStateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/BatteryStateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020054

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->j:I

    new-instance v0, Lorg/antivirus/tuneup/h;

    invoke-direct {v0, v5}, Lorg/antivirus/tuneup/h;-><init>(I)V

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->k:Lorg/antivirus/tuneup/h;

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->l:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/tuneup/v;

    invoke-direct {v0, p0}, Lorg/antivirus/tuneup/v;-><init>(Lorg/antivirus/tuneup/BatteryStateActivity;)V

    iput-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->l:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onPause()V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->k:Lorg/antivirus/tuneup/h;

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/BatteryStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->k:Lorg/antivirus/tuneup/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/h;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->k:Lorg/antivirus/tuneup/h;

    iget-object v1, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/h;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/BatteryStateActivity;->k:Lorg/antivirus/tuneup/h;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
