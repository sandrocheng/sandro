.class public final Lcu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/ui/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/ui/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/SettingsActivity;->a(Lcom/tencent/powermanager/ui/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg;

    iget-boolean v0, v0, Lbg;->e:Z

    packed-switch p3, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/SettingsActivity;->d(Lcom/tencent/powermanager/ui/SettingsActivity;)V

    :goto_1
    return-void

    :pswitch_0
    if-nez v0, :cond_0

    invoke-static {}, Lgl;->a()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Laj;->c()V

    :cond_0
    iget-object v3, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v3}, Lcom/tencent/powermanager/ui/SettingsActivity;->b(Lcom/tencent/powermanager/ui/SettingsActivity;)Lr;

    move-result-object v3

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lr;->g(Z)V

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    iget-object v0, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    const v1, 0x7f060047

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    const v1, 0x7f060048

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v3}, Lcom/tencent/powermanager/ui/SettingsActivity;->b(Lcom/tencent/powermanager/ui/SettingsActivity;)Lr;

    move-result-object v3

    if-nez v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Lr;->i(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_3

    :pswitch_2
    iget-object v3, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v3}, Lcom/tencent/powermanager/ui/SettingsActivity;->b(Lcom/tencent/powermanager/ui/SettingsActivity;)Lr;

    move-result-object v3

    if-nez v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lr;->h(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_4

    :pswitch_3
    iget-object v3, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v3}, Lcom/tencent/powermanager/ui/SettingsActivity;->b(Lcom/tencent/powermanager/ui/SettingsActivity;)Lr;

    move-result-object v3

    if-nez v0, :cond_6

    :goto_5
    invoke-virtual {v3, v1}, Lr;->f(Z)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_5

    :pswitch_4
    iget-object v3, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v3}, Lcom/tencent/powermanager/ui/SettingsActivity;->b(Lcom/tencent/powermanager/ui/SettingsActivity;)Lr;

    move-result-object v3

    if-nez v0, :cond_9

    :goto_6
    invoke-virtual {v3, v1}, Lr;->e(Z)V

    if-nez v0, :cond_a

    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_7

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_7
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_8

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_8
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Laf;->a(Lbx;)V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_b

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_b
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    sget-object v0, Lby;->a:Lby;

    if-nez v0, :cond_c

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    :cond_c
    sget-object v0, Lby;->a:Lby;

    invoke-static {v0}, Laf;->b(Lbx;)Z

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v0

    invoke-virtual {v0}, Lbo;->c()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/SettingsActivity;->c(Lcom/tencent/powermanager/ui/SettingsActivity;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/tencent/powermanager/ui/SettingsActivity;->a()V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lax;

    iget-object v3, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-direct {v0, v3, v1, v2}, Lax;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lax;->g()V

    invoke-virtual {v0}, Lax;->c()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcu;->a:Lcom/tencent/powermanager/ui/SettingsActivity;

    const-class v3, Lcom/tencent/powermanager/ui/AboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
