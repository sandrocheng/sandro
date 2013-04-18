.class final Lcom/keniu/security/service/b;
.super Lcom/keniu/security/commui/c;
.source "ProcessService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/service/ProcessService;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/keniu/security/service/ProcessService;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/keniu/security/service/b;->a:Lcom/keniu/security/service/ProcessService;

    .line 306
    invoke-direct {p0, p2}, Lcom/keniu/security/commui/c;-><init>(Landroid/content/Context;)V

    .line 307
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/keniu/security/service/b;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 309
    iget-object v1, p0, Lcom/keniu/security/service/b;->c:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x4220

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 311
    iget-object v0, p0, Lcom/keniu/security/service/b;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 312
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/service/b;->e:Landroid/view/View;

    .line 314
    iget-object v0, p0, Lcom/keniu/security/service/b;->e:Landroid/view/View;

    const v1, 0x7f08040a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/service/b;->g:Landroid/widget/Button;

    .line 316
    iget-object v0, p0, Lcom/keniu/security/service/b;->e:Landroid/view/View;

    const v1, 0x7f08040b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/service/b;->h:Landroid/widget/Button;

    .line 318
    iget-object v0, p0, Lcom/keniu/security/service/b;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/keniu/security/service/b;->a(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 324
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 329
    check-cast p1, Landroid/widget/LinearLayout;

    .line 331
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/keniu/security/service/b;->a(Landroid/view/View;)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 343
    iget-object v0, p0, Lcom/keniu/security/service/b;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 345
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/service/b;->a:Lcom/keniu/security/service/ProcessService;

    const-class v2, Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 348
    iget-object v1, p0, Lcom/keniu/security/service/b;->a:Lcom/keniu/security/service/ProcessService;

    invoke-virtual {v1, v0}, Lcom/keniu/security/service/ProcessService;->startActivity(Landroid/content/Intent;)V

    .line 349
    invoke-virtual {p0}, Lcom/keniu/security/service/b;->c()V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/service/b;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/keniu/security/service/b;->c()V

    goto :goto_0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/keniu/security/service/b;->c()V

    .line 361
    const/4 v0, 0x1

    return v0
.end method
