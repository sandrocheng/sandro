.class final Lorg/antivirus/tuneup/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/TableLayout;

.field final synthetic c:Lorg/antivirus/tuneup/TrafficMeterActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/TrafficMeterActivity;ZLandroid/widget/TableLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    iput-boolean p2, p0, Lorg/antivirus/tuneup/bh;->a:Z

    iput-object p3, p0, Lorg/antivirus/tuneup/bh;->b:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v0

    iget-boolean v1, p0, Lorg/antivirus/tuneup/bh;->a:Z

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/ba;->a(Z)[D

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->c(Lorg/antivirus/tuneup/TrafficMeterActivity;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    new-instance v2, Lorg/antivirus/tuneup/bi;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/tuneup/bi;-><init>(Lorg/antivirus/tuneup/bh;[D)V

    invoke-virtual {v1, v2}, Lorg/antivirus/tuneup/TrafficMeterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
