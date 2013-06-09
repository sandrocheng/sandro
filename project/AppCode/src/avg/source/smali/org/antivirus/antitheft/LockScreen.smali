.class public Lorg/antivirus/antitheft/LockScreen;
.super Landroid/app/Activity;


# static fields
.field static b:Ljava/lang/Integer;

.field static c:Ljava/util/Timer;

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/EditText;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/antivirus/antitheft/LockScreen;->d:Z

    sput-boolean v0, Lorg/antivirus/antitheft/LockScreen;->e:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    const-string v0, "null"

    sput-object v0, Lorg/antivirus/antitheft/LockScreen;->f:Ljava/lang/String;

    const-string v0, "null"

    sput-object v0, Lorg/antivirus/antitheft/LockScreen;->g:Ljava/lang/String;

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->c()Ljava/util/Timer;

    move-result-object v0

    sput-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lorg/antivirus/antitheft/w;

    invoke-direct {v0, p0}, Lorg/antivirus/antitheft/w;-><init>(Lorg/antivirus/antitheft/LockScreen;)V

    iput-object v0, p0, Lorg/antivirus/antitheft/LockScreen;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/antitheft/LockScreen;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/antitheft/LockScreen;->d()V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    sget-object v1, Lorg/antivirus/antitheft/LockScreen;->g:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lorg/antivirus/antitheft/LockScreen;->e:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 2

    sget-object v1, Lorg/antivirus/antitheft/LockScreen;->f:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lorg/antivirus/antitheft/LockScreen;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Z)V
    .locals 2

    sget-object v1, Lorg/antivirus/antitheft/LockScreen;->f:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lorg/antivirus/antitheft/LockScreen;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Z
    .locals 2

    sget-object v1, Lorg/antivirus/antitheft/LockScreen;->g:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lorg/antivirus/antitheft/LockScreen;->e:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()Ljava/util/Timer;
    .locals 2

    sget-object v1, Lorg/antivirus/antitheft/LockScreen;->f:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antivirus/antitheft/LockScreen;->a(Z)V

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 10

    const/16 v9, 0x14

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {v7}, Lorg/antivirus/antitheft/LockScreen;->a(Z)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v4, 0x7f020061

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v4, 0x7f030004

    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f080034

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080038

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080037

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08000e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setMinimumWidth(I)V

    const v0, 0x7f080036

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lorg/antivirus/AVSettings;->getLostMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "\\|"

    const-string v5, "\n"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080039

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lorg/antivirus/antitheft/LockScreen;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09015c

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0, v9, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    new-instance v1, Lorg/antivirus/antitheft/x;

    invoke-direct {v1, p0, v2, v0}, Lorg/antivirus/antitheft/x;-><init>(Lorg/antivirus/antitheft/LockScreen;Landroid/os/Handler;Landroid/widget/Toast;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v1, 0x400

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lorg/antivirus/antitheft/LockScreen;->setContentView(I)V

    invoke-static {v4}, Lorg/antivirus/antitheft/LockScreen;->b(Z)V

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lorg/antivirus/antitheft/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lorg/antivirus/AVSettings;->getLostMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "\\|"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lorg/antivirus/antitheft/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lorg/antivirus/antitheft/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lorg/antivirus/antitheft/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lorg/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    const v1, 0x7f09015c

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/antivirus/antitheft/LockScreen;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/antivirus/antitheft/LockScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/antivirus/antitheft/LockScreen;->d()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/antivirus/antitheft/LockScreen;->b(Z)V

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->c()Ljava/util/Timer;

    move-result-object v0

    sput-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/antivirus/antitheft/LockScreen;->d()V

    :cond_0
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lorg/antivirus/antitheft/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antivirus/antitheft/LockScreen;->b(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
