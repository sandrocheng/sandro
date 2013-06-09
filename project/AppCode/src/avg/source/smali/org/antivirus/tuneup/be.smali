.class final Lorg/antivirus/tuneup/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/TrafficMeterActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/TrafficMeterActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lorg/antivirus/AVSettings;->isTrafficCounterOn()Z

    move-result v0

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/antivirus/AVSettings;->isTrafficCounterOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/antivirus/AVSettings;->setTrafficCounterOn(Z)V

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->g()V

    iget-object v0, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->a(Lorg/antivirus/tuneup/TrafficMeterActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->b(Lorg/antivirus/tuneup/TrafficMeterActivity;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/widget/a/k;->b(Landroid/os/Bundle;)Z

    iget-object v0, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const-string v1, "data_usage"

    const-string v2, "usage_count"

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {v3}, Lorg/antivirus/AVSettings;->setTrafficCounterOn(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "new_activation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/be;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const-string v1, "data_usage"

    const-string v2, "usage_count"

    const-string v3, "on"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
