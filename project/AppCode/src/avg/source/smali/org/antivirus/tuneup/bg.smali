.class final Lorg/antivirus/tuneup/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/TrafficMeterActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/TrafficMeterActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bg;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/tuneup/bg;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/tuneup/bg;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v2}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bg;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const-string v1, "data_usage"

    const-string v2, "data_usage_settings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
