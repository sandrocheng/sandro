.class final Lorg/antivirus/tuneup/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)[I

    move-result-object v0

    long-to-int v1, p4

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v1, "power_saving_options"

    const-string v2, "battery_warn_level"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v1, "power_saving_options"

    const-string v2, "screen_timeout"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->d(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v1, "power_saving_options"

    const-string v2, "wifi_hotspot"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->e(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v1, "power_saving_options"

    const-string v2, "mobile_data"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->f(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v1, "power_saving_options"

    const-string v2, "ringer"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/j;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v1, "power_saving_options"

    const-string v2, "volume_control"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
