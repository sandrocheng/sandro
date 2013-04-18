.class final Lcom/keniu/security/traffic/aq;
.super Landroid/os/AsyncTask;
.source "TrafficFireWallMainActivity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 598
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    check-cast v0, Lcom/keniu/security/traffic/f;

    .line 599
    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Landroid/content/pm/PackageManager;

    .line 600
    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Landroid/view/View;

    .line 601
    iget-boolean v2, v0, Lcom/keniu/security/traffic/f;->i:Z

    if-nez v2, :cond_0

    .line 602
    iget-object v2, v0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    .line 603
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/traffic/f;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, p0

    .line 611
    :goto_0
    return-object v0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    const-string v1, "DroidWall"

    const-string v2, "Error loading icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 620
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/ap;

    .line 622
    invoke-static {p0}, Lcom/keniu/security/traffic/ap;->c(Lcom/keniu/security/traffic/ap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p0}, Lcom/keniu/security/traffic/ap;->f(Lcom/keniu/security/traffic/ap;)Lcom/keniu/security/traffic/f;

    move-result-object v1

    iget-object v1, v1, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    const-string v1, "DroidWall"

    const-string v2, "Error showing icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 594
    invoke-static {p1}, Lcom/keniu/security/traffic/aq;->a([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 594
    check-cast p1, Landroid/view/View;

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/ap;

    invoke-static {p0}, Lcom/keniu/security/traffic/ap;->c(Lcom/keniu/security/traffic/ap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p0}, Lcom/keniu/security/traffic/ap;->f(Lcom/keniu/security/traffic/ap;)Lcom/keniu/security/traffic/f;

    move-result-object v1

    iget-object v1, v1, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DroidWall"

    const-string v2, "Error showing icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
