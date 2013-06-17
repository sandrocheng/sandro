.class public Lcom/antivirus/ui/performance/AvPerformanceActivity;
.super Lcom/avg/tuneup/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/antivirus/ui/performance/a;

    invoke-direct {v0}, Lcom/antivirus/ui/performance/a;-><init>()V

    const v1, 0x7f0800d1

    const-string v2, "Performance"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/performance/AvPerformanceActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    invoke-super {p0}, Lcom/avg/tuneup/a/b;->i()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/performance/AvPerformanceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected j()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/AVService;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/avg/tuneup/a/b;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    const v2, 0x7f02002c

    const v3, 0x7f02002d

    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/performance/AvPerformanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/performance/AvPerformanceActivity;->a(ZIILjava/lang/String;Z)V

    return-void
.end method
