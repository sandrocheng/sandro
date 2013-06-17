.class public Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;
.super Lcom/avg/tuneup/g;


# instance fields
.field n:Lcom/avg/tuneup/traffic/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;->n:Lcom/avg/tuneup/traffic/a;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/a;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/avg/tuneup/g;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/a/f;->fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;->setContentView(I)V

    const/4 v1, 0x1

    sget v2, Lcom/avg/a/d;->ab_ic_traffic:I

    sget v3, Lcom/avg/a/d;->ab_ic_traffic_p:I

    sget v0, Lcom/avg/a/g;->data_package:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;->a(ZIILjava/lang/String;Z)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/avg/tuneup/traffic/a;

    invoke-direct {v0}, Lcom/avg/tuneup/traffic/a;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;->n:Lcom/avg/tuneup/traffic/a;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;->n:Lcom/avg/tuneup/traffic/a;

    sget v1, Lcom/avg/a/e;->middle_part:I

    const-string v2, "DataPlanSettingsFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/tuneup/traffic/DataPlanSettingsActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
