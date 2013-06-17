.class Lcom/avg/tuneup/battery/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/battery/c;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->b(Lcom/avg/tuneup/battery/c;)[I

    move-result-object v0

    long-to-int v1, p4

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->c(Lcom/avg/tuneup/battery/c;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->d(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "power_saving_options"

    const-string v2, "battery_warn_level"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->e(Lcom/avg/tuneup/battery/c;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->f(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "power_saving_options"

    const-string v2, "screen_timeout"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->g(Lcom/avg/tuneup/battery/c;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->h(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "power_saving_options"

    const-string v2, "wifi_hotspot"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->i(Lcom/avg/tuneup/battery/c;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->j(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "power_saving_options"

    const-string v2, "mobile_data"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->k(Lcom/avg/tuneup/battery/c;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->l(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "power_saving_options"

    const-string v2, "ringer"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->m(Lcom/avg/tuneup/battery/c;)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/e;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->n(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "power_saving_options"

    const-string v2, "volume_control"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    nop

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
