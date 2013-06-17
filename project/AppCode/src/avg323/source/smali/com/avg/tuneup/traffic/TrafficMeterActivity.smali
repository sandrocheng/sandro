.class public Lcom/avg/tuneup/traffic/TrafficMeterActivity;
.super Lcom/avg/tuneup/g;


# instance fields
.field private n:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/TrafficMeterActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->n:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected b(I)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->finish()V

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->finish()V

    :try_start_0
    invoke-static {}, Lcom/avg/tuneup/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x2442

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Unable to find top performance class"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected k()Lcom/avg/tuneup/traffic/y;
    .locals 1

    new-instance v0, Lcom/avg/tuneup/traffic/y;

    invoke-direct {v0}, Lcom/avg/tuneup/traffic/y;-><init>()V

    return-object v0
.end method

.method public l()V
    .locals 4

    const/16 v2, 0x8

    sget v0, Lcom/avg/a/e;->buttons:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/avg/tuneup/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v1, Lcom/avg/a/e;->options:I

    invoke-virtual {p0, v1}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->n:Landroid/widget/Button;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/Button;

    const/4 v2, 0x0

    sget v3, Lcom/avg/a/h;->ImageButtonHolo:I

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->n:Landroid/widget/Button;

    sget v2, Lcom/avg/a/d;->ab_btn_settings:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->n:Landroid/widget/Button;

    new-instance v2, Lcom/avg/tuneup/traffic/w;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/w;-><init>(Lcom/avg/tuneup/traffic/TrafficMeterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->n:Landroid/widget/Button;

    new-instance v2, Lcom/avg/tuneup/traffic/x;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/x;-><init>(Lcom/avg/tuneup/traffic/TrafficMeterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected m()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/avg/tuneup/g;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/a/f;->fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->setContentView(I)V

    const/4 v1, 0x1

    sget v2, Lcom/avg/a/d;->ab_ic_traffic:I

    sget v3, Lcom/avg/a/d;->ab_ic_traffic_p:I

    sget v0, Lcom/avg/a/g;->traffic:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/avg/a/e;->header:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->a(ZIILjava/lang/String;ZI)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->k()Lcom/avg/tuneup/traffic/y;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->middle_part:I

    const-string v2, "TrafficMeterFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/avg/tuneup/g;->onResume()V

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->l()V

    return-void
.end method
