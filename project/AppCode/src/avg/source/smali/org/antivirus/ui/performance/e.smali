.class final Lorg/antivirus/ui/performance/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/performance/PerformanceActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/PerformanceActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/e;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lorg/antivirus/ui/performance/e;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->a(Lorg/antivirus/ui/performance/PerformanceActivity;Landroid/content/Intent;)V

    return-void
.end method
