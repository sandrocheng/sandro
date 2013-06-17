.class public Lcom/avg/tuneup/taskkiller/d;
.super Lcom/avg/tuneup/h;


# static fields
.field protected static a:I

.field protected static b:Ljava/lang/String;


# instance fields
.field protected c:Z

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/View;

.field private f:Lcom/avg/tuneup/taskkiller/o;

.field private g:Z

.field private final h:Ljava/lang/Object;

.field private i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/avg/tuneup/taskkiller/d;->a:I

    const-string v0, "RAM: %.2fMB CPU: %s \n%s"

    sput-object v0, Lcom/avg/tuneup/taskkiller/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/h;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/tuneup/taskkiller/d;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->i:Ljava/util/ArrayList;

    return-void
.end method

.method private I()V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {p0}, Lcom/avg/tuneup/taskkiller/d;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->d(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/avg/tuneup/taskkiller/d;

    invoke-direct {v1}, Lcom/avg/tuneup/taskkiller/d;-><init>()V

    sget v2, Lcom/avg/a/e;->fragment_content:I

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/d;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/avg/tuneup/taskkiller/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/d;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/view/LayoutInflater;Z)V
    .locals 7

    sget v0, Lcom/avg/a/e;->installed_apps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/avg/a/e;->apps:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sget v0, Lcom/avg/a/e;->btn_close_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/avg/tuneup/taskkiller/e;

    invoke-direct {v1, p0, v0, v3, p1}, Lcom/avg/tuneup/taskkiller/e;-><init>(Lcom/avg/tuneup/taskkiller/d;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/avg/tuneup/taskkiller/h;

    move-object v1, p0

    move v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/avg/tuneup/taskkiller/h;-><init>(Lcom/avg/tuneup/taskkiller/d;ZLandroid/widget/LinearLayout;Landroid/view/View;Landroid/view/LayoutInflater;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/app/ActivityManager;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/avg/tuneup/taskkiller/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/avg/tuneup/taskkiller/m;-><init>(Lcom/avg/tuneup/taskkiller/d;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/b;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/b;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/taskkiller/d;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/app/ActivityManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/avg/tuneup/taskkiller/d;->a(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/app/ActivityManager;)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/taskkiller/d;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/avg/tuneup/taskkiller/d;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/avg/tuneup/taskkiller/d;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/avg/tuneup/taskkiller/d;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/avg/tuneup/taskkiller/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/taskkiller/d;->I()V

    return-void
.end method

.method static synthetic d(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/tuneup/taskkiller/o;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->f:Lcom/avg/tuneup/taskkiller/o;

    return-object v0
.end method

.method static synthetic f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/avg/tuneup/taskkiller/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/avg/tuneup/taskkiller/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/tuneup/taskkiller/d;->g:Z

    return v0
.end method

.method static synthetic i(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method protected F()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected G()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/d;->d:Landroid/view/LayoutInflater;

    sget v0, Lcom/avg/a/f;->task_killer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->remove_apps_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->install_apps_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->new_apps_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->ll_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/avg/tuneup/taskkiller/o;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avg/tuneup/taskkiller/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->f:Lcom/avg/tuneup/taskkiller/o;

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->d:Landroid/view/LayoutInflater;

    invoke-direct {p0, v0, v1, v3}, Lcom/avg/tuneup/taskkiller/d;->a(Landroid/view/View;Landroid/view/LayoutInflater;Z)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->title_task_killer_preference:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/avg/tuneup/taskkiller/d;->a(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/avg/tuneup/taskkiller/d;->d(Z)V

    :goto_1
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/e;->header:I

    invoke-virtual {p0}, Lcom/avg/tuneup/taskkiller/d;->H()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->a(IZ)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/d;->btn_sorting_actionbar:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->c(I)V

    goto :goto_1
.end method

.method protected a(Lcom/avg/tuneup/taskkiller/b;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/avg/tuneup/taskkiller/d;->b:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/avg/tuneup/taskkiller/b;->b:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/avg/tuneup/taskkiller/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/avg/tuneup/taskkiller/b;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v3, 0x0

    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->by_ram:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast p1, Landroid/view/Menu;

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->by_name:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "task_killer"

    const-string v2, "menu_opened"

    invoke-static {v0, v1, v2, v6, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6

    :cond_1
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->by_ram:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v5, v3, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    check-cast p1, Lcom/avg/ui/general/c/f;

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->by_name:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v3, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/taskkiller/d;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/view/Menu;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a_(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/taskkiller/d;->e(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a_(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->remove_apps_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->install_apps_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->new_apps_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/d;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->d:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avg/tuneup/taskkiller/d;->a(Landroid/view/View;Landroid/view/LayoutInflater;Z)V

    return v3

    :pswitch_1
    const/4 v0, 0x2

    sput v0, Lcom/avg/tuneup/taskkiller/d;->a:I

    goto :goto_0

    :pswitch_2
    sput v3, Lcom/avg/tuneup/taskkiller/d;->a:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 2

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/d;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/avg/tuneup/taskkiller/d;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/avg/tuneup/h;->t()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
