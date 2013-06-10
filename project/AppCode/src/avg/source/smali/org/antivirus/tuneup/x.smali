.class final Lorg/antivirus/tuneup/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatteryStateActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatteryStateActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/x;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/tuneup/x;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/tuneup/x;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-virtual {v2}, Lorg/antivirus/tuneup/BatteryStateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/x;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    const-string v1, "battery_consumption"

    const-string v2, "power_saving_options"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
