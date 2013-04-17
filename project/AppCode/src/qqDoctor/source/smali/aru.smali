.class public final Laru;
.super Landroid/os/HandlerThread;


# instance fields
.field private final a:Larn;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Larn;)V
    .locals 3

    const-string v0, "DetectThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Laru;->a:Larn;

    invoke-virtual {p0}, Laru;->start()V

    new-instance v0, Lart;

    iget-object v1, p0, Laru;->a:Larn;

    invoke-virtual {p0}, Laru;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lart;-><init>(Larn;Landroid/os/Looper;)V

    iput-object v0, p0, Laru;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laru;->b:Landroid/os/Handler;

    return-object v0
.end method
