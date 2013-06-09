.class final Lorg/antivirus/ui/performance/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/performance/PerformanceActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/PerformanceActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->b(Lorg/antivirus/ui/performance/PerformanceActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->c(Lorg/antivirus/ui/performance/PerformanceActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0901ae

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/antivirus/ui/performance/PerformanceActivity;->a(Lorg/antivirus/ui/performance/PerformanceActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0901af

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-static {v4, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->a(Lorg/antivirus/ui/performance/PerformanceActivity;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/ui/performance/f;->a:Lorg/antivirus/ui/performance/PerformanceActivity;

    new-instance v1, Lorg/antivirus/ui/performance/g;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/performance/g;-><init>(Lorg/antivirus/ui/performance/f;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/performance/PerformanceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
