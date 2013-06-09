.class final Lorg/antivirus/tuneup/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;

.field final synthetic b:Lorg/antivirus/tuneup/TrafficMeterActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/TrafficMeterActivity;Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bk;->b:Lorg/antivirus/tuneup/TrafficMeterActivity;

    iput-object p2, p0, Lorg/antivirus/tuneup/bk;->a:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/tuneup/bk;->b:Lorg/antivirus/tuneup/TrafficMeterActivity;

    iget-object v1, p0, Lorg/antivirus/tuneup/bk;->a:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lorg/antivirus/tuneup/bk;->b:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/TrafficMeterActivity;->e(Lorg/antivirus/tuneup/TrafficMeterActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/antivirus/tuneup/TrafficMeterActivity;->a(Lorg/antivirus/tuneup/TrafficMeterActivity;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bk;->b:Lorg/antivirus/tuneup/TrafficMeterActivity;

    new-instance v1, Lorg/antivirus/tuneup/bl;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/bl;-><init>(Lorg/antivirus/tuneup/bk;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
