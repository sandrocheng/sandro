.class Lcom/avg/tuneup/traffic/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/avg/tuneup/traffic/y;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/y;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/ac;->b:Lcom/avg/tuneup/traffic/y;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/ac;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/avg/tuneup/j;->a(Z)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ac;->a:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ac;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->c(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/s;->h()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ac;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->d(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ac;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->e(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/TrafficMeterActivity;->l()V

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/ac;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->f(Lcom/avg/tuneup/traffic/y;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ac;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->g(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/avg/tuneup/traffic/widget/TrafficWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ac;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->h(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "data_usage"

    const-string v2, "usage_count"

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
