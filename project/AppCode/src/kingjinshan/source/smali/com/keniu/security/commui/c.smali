.class public Lcom/keniu/security/commui/c;
.super Ljava/lang/Object;
.source "SysWindow.java"


# instance fields
.field protected b:Landroid/view/WindowManager;

.field protected c:Landroid/view/WindowManager$LayoutParams;

.field protected d:Landroid/content/Context;

.field protected e:Landroid/view/View;

.field protected f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/commui/c;->f:Z

    .line 20
    iput-object p1, p0, Lcom/keniu/security/commui/c;->d:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/keniu/security/commui/c;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/keniu/security/commui/c;->b:Landroid/view/WindowManager;

    .line 23
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/commui/c;->c:Landroid/view/WindowManager$LayoutParams;

    .line 24
    iget-object v0, p0, Lcom/keniu/security/commui/c;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 25
    iget-object v0, p0, Lcom/keniu/security/commui/c;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    iget-object v0, p0, Lcom/keniu/security/commui/c;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 27
    iget-object v0, p0, Lcom/keniu/security/commui/c;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 28
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/keniu/security/commui/c;->f:Z

    return v0
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/keniu/security/commui/c;->f:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/keniu/security/commui/c;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/commui/c;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/commui/c;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/keniu/security/commui/c;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/commui/c;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/keniu/security/commui/c;->f:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/keniu/security/commui/c;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/commui/c;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/commui/c;->c:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/commui/c;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/keniu/security/commui/c;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/keniu/security/commui/c;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/commui/c;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
