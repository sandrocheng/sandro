.class public final Lcom/keniu/security/protection/u;
.super Lcom/keniu/security/commui/c;
.source "ScreenLockService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ScreenLockService;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/keniu/security/protection/f;

.field private m:Landroid/view/SurfaceView;

.field private n:Landroid/content/Context;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/keniu/security/protection/ScreenLockService;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 115
    iput-object p1, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    .line 116
    invoke-direct {p0, p2}, Lcom/keniu/security/commui/c;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object p2, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/protection/u;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/keniu/security/protection/u;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/keniu/security/protection/u;->c:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/keniu/security/protection/u;->c:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->c(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/protection/u;->h:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/u;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/u;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/u;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->d(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->c(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xb4

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setZOrderOnTop"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/keniu/security/protection/u;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/protection/f;

    iget-object v2, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/keniu/security/protection/f;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/keniu/security/protection/u;->l:Lcom/keniu/security/protection/f;

    .line 119
    :cond_1
    iput v5, p0, Lcom/keniu/security/protection/u;->o:I

    .line 120
    iput v5, p0, Lcom/keniu/security/protection/u;->p:I

    .line 121
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/protection/u;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/protection/u;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;Z)V

    .line 168
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;Z)V

    .line 169
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->a(Lcom/keniu/security/protection/ScreenLockService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->b(Lcom/keniu/security/protection/ScreenLockService;)Lcom/keniu/security/protection/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->b(Lcom/keniu/security/protection/ScreenLockService;)Lcom/keniu/security/protection/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/protection/a;->b()V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/protection/u;->c()V

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/protection/u;->c()V

    .line 177
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-virtual {v0}, Lcom/keniu/security/protection/ScreenLockService;->stopSelf()V

    goto :goto_0
.end method

.method private a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 269
    new-instance v0, Lcom/keniu/security/commui/b;

    iget-object v1, p0, Lcom/keniu/security/protection/u;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/keniu/security/commui/b;-><init>(Landroid/content/Context;)V

    .line 270
    iget-object v1, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v4, 0x7f0b03ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/keniu/security/commui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Lcom/keniu/security/commui/b;->b()V

    .line 273
    new-instance v1, Lcom/keniu/security/protection/w;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/protection/w;-><init>(Lcom/keniu/security/protection/u;Lcom/keniu/security/commui/b;)V

    invoke-virtual {v0, v1, v5}, Lcom/keniu/security/commui/b;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-virtual {v0}, Lcom/keniu/security/commui/b;->d()V

    .line 282
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 182
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/keniu/security/protection/u;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 184
    iget-object v0, p0, Lcom/keniu/security/protection/u;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 185
    iget-object v0, p0, Lcom/keniu/security/protection/u;->c:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 186
    iget-object v0, p0, Lcom/keniu/security/protection/u;->c:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 188
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->g:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->h:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->i:Landroid/widget/EditText;

    .line 193
    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->j:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    .line 195
    iget-object v0, p0, Lcom/keniu/security/protection/u;->e:Landroid/view/View;

    const v1, 0x7f080225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/u;->k:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->c(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/keniu/security/protection/u;->h:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/keniu/security/protection/u;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/keniu/security/protection/u;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/keniu/security/protection/u;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->d(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->c(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xb4

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    iget-object v1, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setZOrderOnTop"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/protection/u;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->m:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/keniu/security/protection/f;

    iget-object v2, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/keniu/security/protection/f;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/keniu/security/protection/u;->l:Lcom/keniu/security/protection/f;

    .line 225
    :cond_1
    return-void

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/protection/u;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/keniu/security/protection/u;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v1, 0x7f0b0763

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    new-instance v1, Lcom/keniu/security/commui/b;

    iget-object v2, p0, Lcom/keniu/security/protection/u;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/keniu/security/commui/b;-><init>(Landroid/content/Context;)V

    .line 244
    iget-object v2, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v3, 0x7f0b0219

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v4, 0x7f0b03ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v5, v3}, Lcom/keniu/security/commui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Lcom/keniu/security/commui/b;->b()V

    .line 247
    new-instance v0, Lcom/keniu/security/protection/v;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/protection/v;-><init>(Lcom/keniu/security/protection/u;Lcom/keniu/security/commui/b;)V

    invoke-virtual {v1, v0, v5}, Lcom/keniu/security/commui/b;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {v1}, Lcom/keniu/security/commui/b;->d()V

    .line 256
    return-void

    .line 235
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v1, 0x7f0b0764

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    const v2, 0x7f0b07f9

    invoke-virtual {v0, v2}, Lcom/keniu/security/protection/ScreenLockService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 259
    const v0, 0x7f0b07fb

    const v1, 0x7f0b0614

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/protection/u;->a(II)V

    .line 261
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 264
    const v0, 0x7f0b0219

    const v1, 0x7f0b07fc

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/protection/u;->a(II)V

    .line 266
    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->c(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->d(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b0219

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 127
    iget-object v0, p0, Lcom/keniu/security/protection/u;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/keniu/security/protection/u;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/keniu/security/protection/u;->a()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Lcom/keniu/security/protection/u;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/protection/u;->o:I

    .line 135
    const v0, 0x7f0b07fb

    const v1, 0x7f0b0614

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/protection/u;->a(II)V

    .line 136
    iget v0, p0, Lcom/keniu/security/protection/u;->o:I

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->c(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    invoke-static {v0}, Lcom/keniu/security/protection/ScreenLockService;->d(Lcom/keniu/security/protection/ScreenLockService;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_1
    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/keniu/security/protection/u;->l:Lcom/keniu/security/protection/f;

    invoke-virtual {v0}, Lcom/keniu/security/protection/f;->c()V

    .line 138
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const-string v1, "pto"

    const-string v2, "12"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v4

    .line 136
    goto :goto_1

    .line 144
    :cond_3
    iget v0, p0, Lcom/keniu/security/protection/u;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/protection/u;->p:I

    .line 145
    iget v0, p0, Lcom/keniu/security/protection/u;->p:I

    if-lt v0, v3, :cond_0

    .line 146
    const v0, 0x7f0b07fc

    invoke-direct {p0, v6, v0}, Lcom/keniu/security/protection/u;->a(II)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/protection/u;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 150
    invoke-direct {p0}, Lcom/keniu/security/protection/u;->a()V

    goto :goto_0

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/protection/u;->j:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v1, 0x7f0b0763

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/keniu/security/commui/b;

    iget-object v2, p0, Lcom/keniu/security/protection/u;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/keniu/security/commui/b;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v4, 0x7f0b03ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v7, v3}, Lcom/keniu/security/commui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keniu/security/commui/b;->b()V

    new-instance v0, Lcom/keniu/security/protection/v;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/protection/v;-><init>(Lcom/keniu/security/protection/u;Lcom/keniu/security/commui/b;)V

    invoke-virtual {v1, v0, v7}, Lcom/keniu/security/commui/b;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/keniu/security/commui/b;->d()V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/keniu/security/protection/u;->n:Landroid/content/Context;

    const v1, 0x7f0b0764

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/keniu/security/protection/u;->a:Lcom/keniu/security/protection/ScreenLockService;

    const v2, 0x7f0b07f9

    invoke-virtual {v0, v2}, Lcom/keniu/security/protection/ScreenLockService;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/keniu/security/protection/u;->c()V

    .line 159
    const/4 v0, 0x1

    return v0
.end method
