.class final Lorg/antivirus/ui/performance/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/performance/PerformanceActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/PerformanceActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    iget-object v0, v0, Lorg/antivirus/ui/performance/PerformanceActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/b;

    iget v0, v0, Lorg/antivirus/ui/performance/b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-class v3, Lorg/antivirus/ui/performance/TaskKiller;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-string v1, "performance"

    const-string v2, "task_killer"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-class v3, Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-string v1, "performance"

    const-string v2, "battery_consumption"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-class v3, Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-string v1, "performance"

    const-string v2, "data_usage"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-class v3, Lorg/antivirus/tuneup/StorageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/h;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    const-string v1, "performance"

    const-string v2, "storage_usage"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
