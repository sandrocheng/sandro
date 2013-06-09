.class public Lorg/antivirus/ui/performance/TaskKiller;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field private final a:I

.field private b:J

.field private c:Ljava/util/HashMap;

.field private d:Lorg/antivirus/ui/performance/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->b:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->c:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/performance/TaskKiller;J)J
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/ui/performance/TaskKiller;->b:J

    return-wide p1
.end method

.method static synthetic a(Lorg/antivirus/ui/performance/TaskKiller;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/ui/performance/TaskKiller;)Lorg/antivirus/ui/performance/p;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->d:Lorg/antivirus/ui/performance/p;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/ui/performance/TaskKiller;)J
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->b:J

    return-wide v0
.end method

.method static synthetic c()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/TaskKiller;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseToolActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/TaskKiller;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lorg/antivirus/ui/performance/p;

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/TaskKiller;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/antivirus/ui/performance/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->d:Lorg/antivirus/ui/performance/p;

    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/TaskKiller;->setContentView(I)V

    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/TaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f020020

    const v3, 0x7f020021

    const v0, 0x7f090061

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/ui/performance/TaskKiller;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/TaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/TaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->c:Ljava/util/HashMap;

    const-string v2, "com.android.launcher"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->c:Ljava/util/HashMap;

    const-string v2, "com.android.launcher2"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->c:Ljava/util/HashMap;

    const-string v2, "com.htc.launcher"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->c:Ljava/util/HashMap;

    const-string v2, "com.htc.android.mail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/antivirus/ui/performance/TaskKiller;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/performance/TaskKiller;->d:Lorg/antivirus/ui/performance/p;

    invoke-static {}, Lorg/antivirus/ui/performance/p;->a()J

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/TaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f080102

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/antivirus/ui/performance/j;

    invoke-direct {v3, p0, v1, v0}, Lorg/antivirus/ui/performance/j;-><init>(Lorg/antivirus/ui/performance/TaskKiller;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/performance/TaskKiller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/ui/performance/TaskKiller;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
