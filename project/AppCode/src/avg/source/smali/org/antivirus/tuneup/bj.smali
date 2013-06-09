.class final Lorg/antivirus/tuneup/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/TrafficMeterActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/TrafficMeterActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->f(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    new-instance v1, Lorg/antivirus/tuneup/b;

    iget-object v2, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v4}, Lorg/antivirus/tuneup/TrafficMeterActivity;->e(Lorg/antivirus/tuneup/TrafficMeterActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/antivirus/tuneup/b;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-static {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->a(Lorg/antivirus/tuneup/TrafficMeterActivity;Lorg/antivirus/tuneup/b;)Lorg/antivirus/tuneup/b;

    iget-object v0, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->f(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->g(Lorg/antivirus/tuneup/TrafficMeterActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->g(Lorg/antivirus/tuneup/TrafficMeterActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->g(Lorg/antivirus/tuneup/TrafficMeterActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/bj;->a:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->e(Lorg/antivirus/tuneup/TrafficMeterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/b;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
