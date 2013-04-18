.class final Lcom/keniu/security/traffic/cv;
.super Ljava/lang/Object;
.source "TrafficSoftListActivity2.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 71
    packed-switch p2, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Z)V

    .line 74
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/cz;->a(Ljava/util/Vector;)V

    .line 77
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/traffic/cz;->notifyDataSetChanged()V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->c(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->c(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Z)V

    .line 87
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->c(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/cz;->a(Ljava/util/Vector;)V

    .line 90
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/traffic/cz;->notifyDataSetChanged()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->d(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/cv;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->e(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x7f0803e2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
