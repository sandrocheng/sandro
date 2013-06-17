.class public Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;
.super Lcom/avg/tuneup/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/g;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avg/tuneup/battery/BatteryStateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/avg/tuneup/g;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/a/f;->fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;->setContentView(I)V

    const/4 v1, 0x1

    sget v2, Lcom/avg/a/d;->ab_ic_battery_save:I

    sget v3, Lcom/avg/a/d;->ab_ic_battery_save_p:I

    sget v0, Lcom/avg/a/g;->battery_save_settings:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;->a(ZIILjava/lang/String;Z)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/avg/tuneup/battery/c;

    invoke-direct {v0}, Lcom/avg/tuneup/battery/c;-><init>()V

    sget v1, Lcom/avg/a/e;->middle_part:I

    const-string v2, "BatterySaveSettingsFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
