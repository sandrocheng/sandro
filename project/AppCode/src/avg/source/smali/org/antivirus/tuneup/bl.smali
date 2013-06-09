.class final Lorg/antivirus/tuneup/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/bk;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/bk;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bl;->a:Lorg/antivirus/tuneup/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/bl;->a:Lorg/antivirus/tuneup/bk;

    iget-object v0, v0, Lorg/antivirus/tuneup/bk;->b:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->g(Lorg/antivirus/tuneup/TrafficMeterActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/bl;->a:Lorg/antivirus/tuneup/bk;

    iget-object v0, v0, Lorg/antivirus/tuneup/bk;->b:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->g(Lorg/antivirus/tuneup/TrafficMeterActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
