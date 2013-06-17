.class public final Lcom/avg/ui/license/qrreader/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/avg/ui/license/qrreader/a/b;

.field private d:Landroid/hardware/Camera;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private final l:Lcom/avg/ui/license/qrreader/a/d;

.field private final m:Lcom/avg/ui/license/qrreader/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avg/ui/license/qrreader/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/license/qrreader/a/c;->b:Landroid/content/Context;

    new-instance v0, Lcom/avg/ui/license/qrreader/a/b;

    invoke-direct {v0, p1}, Lcom/avg/ui/license/qrreader/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    new-instance v0, Lcom/avg/ui/license/qrreader/a/d;

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    invoke-direct {v0, v1}, Lcom/avg/ui/license/qrreader/a/d;-><init>(Lcom/avg/ui/license/qrreader/a/b;)V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->l:Lcom/avg/ui/license/qrreader/a/d;

    new-instance v0, Lcom/avg/ui/license/qrreader/a/a;

    invoke-direct {v0}, Lcom/avg/ui/license/qrreader/a/a;-><init>()V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->m:Lcom/avg/ui/license/qrreader/a/a;

    return-void
.end method


# virtual methods
.method public a([BII)Lcom/avg/ui/license/qrreader/general/o;
    .locals 9

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/a/c;->e()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/avg/ui/license/qrreader/general/o;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p0, Lcom/avg/ui/license/qrreader/a/c;->i:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/avg/ui/license/qrreader/general/o;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    iput-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->e:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->f:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5

    iget-boolean v0, p0, Lcom/avg/ui/license/qrreader/a/c;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/a/b;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Point;->x:I

    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    iget p2, v0, Landroid/graphics/Point;->y:I

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, p1

    add-int v4, v0, p2

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/avg/ui/license/qrreader/a/c;->e:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->f:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/avg/ui/license/qrreader/a/c;->j:I

    iput p2, p0, Lcom/avg/ui/license/qrreader/a/c;->k:I

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/avg/ui/license/qrreader/a/c;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->l:Lcom/avg/ui/license/qrreader/a/d;

    invoke-virtual {v1, p1, p2}, Lcom/avg/ui/license/qrreader/a/d;->a(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->l:Lcom/avg/ui/license/qrreader/a/d;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iput-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v1, p0, Lcom/avg/ui/license/qrreader/a/c;->g:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avg/ui/license/qrreader/a/c;->g:Z

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    invoke-virtual {v1, v0}, Lcom/avg/ui/license/qrreader/a/b;->a(Landroid/hardware/Camera;)V

    iget v1, p0, Lcom/avg/ui/license/qrreader/a/c;->j:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/avg/ui/license/qrreader/a/c;->k:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/avg/ui/license/qrreader/a/c;->j:I

    iget v2, p0, Lcom/avg/ui/license/qrreader/a/c;->k:I

    invoke-virtual {p0, v1, v2}, Lcom/avg/ui/license/qrreader/a/c;->a(II)V

    iput v3, p0, Lcom/avg/ui/license/qrreader/a/c;->j:I

    iput v3, p0, Lcom/avg/ui/license/qrreader/a/c;->k:I

    :cond_2
    iget-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    invoke-virtual {v1, v0}, Lcom/avg/ui/license/qrreader/a/b;->b(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_reverse_image"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avg/ui/license/qrreader/a/c;->i:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/avg/ui/license/qrreader/a/c;->h:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/ui/license/qrreader/a/c;->h:Z

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avg/ui/license/qrreader/a/c;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->m:Lcom/avg/ui/license/qrreader/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/avg/ui/license/qrreader/a/a;->a(Landroid/os/Handler;I)V

    :try_start_0
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->m:Lcom/avg/ui/license/qrreader/a/a;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avg/ui/license/qrreader/a/c;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->l:Lcom/avg/ui/license/qrreader/a/d;

    invoke-virtual {v0, v2, v1}, Lcom/avg/ui/license/qrreader/a/d;->a(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->m:Lcom/avg/ui/license/qrreader/a/a;

    invoke-virtual {v0, v2, v1}, Lcom/avg/ui/license/qrreader/a/a;->a(Landroid/os/Handler;I)V

    iput-boolean v1, p0, Lcom/avg/ui/license/qrreader/a/c;->h:Z

    :cond_0
    return-void
.end method

.method public d()Landroid/graphics/Rect;
    .locals 5

    const/16 v0, 0x258

    const/16 v3, 0x190

    const/16 v1, 0xf0

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/a/c;->e:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/a/c;->d:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    invoke-virtual {v2}, Lcom/avg/ui/license/qrreader/a/b;->b()Landroid/graphics/Point;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v2, v1, :cond_3

    move v0, v1

    :cond_1
    :goto_1
    iget v2, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v2, v1, :cond_4

    :goto_2
    iget v2, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v3, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/avg/ui/license/qrreader/a/c;->e:Landroid/graphics/Rect;

    :cond_2
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->e:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    if-gt v2, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_4
    if-le v2, v3, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public e()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/a/c;->d()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/a/b;->a()Landroid/graphics/Point;

    move-result-object v0

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/a/c;->c:Lcom/avg/ui/license/qrreader/a/b;

    invoke-virtual {v2}, Lcom/avg/ui/license/qrreader/a/b;->b()Landroid/graphics/Point;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iput-object v1, p0, Lcom/avg/ui/license/qrreader/a/c;->f:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/a/c;->f:Landroid/graphics/Rect;

    goto :goto_0
.end method
