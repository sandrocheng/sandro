.class final Lorg/antivirus/ui/performance/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/performance/f;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/f;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/g;->a:Lorg/antivirus/ui/performance/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/g;->a:Lorg/antivirus/ui/performance/f;

    iget-object v0, v0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->d(Lorg/antivirus/ui/performance/PerformanceActivity;)Lorg/antivirus/ui/performance/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/performance/i;->notifyDataSetChanged()V

    return-void
.end method
