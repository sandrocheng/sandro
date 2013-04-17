.class final Lari$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field private c:I

.field private synthetic d:Lari;


# direct methods
.method public constructor <init>(Lari;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lari$a;->d:Lari;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lari$a;->a:Z

    iput-object p2, p0, Lari$a;->b:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lari$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lari$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 14

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v0, -0x5

    iput v0, p0, Lari$a;->c:I

    new-instance v10, Le;

    invoke-direct {v10}, Le;-><init>()V

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->g(Lari;)[B

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->h(Lari;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->h(Lari;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->i(Lari;)[I

    move-result-object v0

    const-class v3, Lcom/tencent/faceverify/util/ImageSize;

    const-class v4, Lcom/tencent/faceverify/util/FaceLoc;

    const-class v5, Lcom/tencent/faceverify/util/EyeInfo;

    invoke-static/range {v0 .. v5}, Lcom/tencent/faceverify/util/FaceLib;->faceImgCut([IIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    invoke-direct {p0}, Lari$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lari$a;->b:Landroid/os/Handler;

    iget v2, p0, Lari$a;->c:I

    invoke-virtual {v1, v0, v2, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lari$a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lari$a;->d:Lari;

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->h(Lari;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->i(Lari;)[I

    move-result-object v5

    sget v7, Lcom/tencent/faceverify/util/ImageSize;->width:I

    sget v8, Lcom/tencent/faceverify/util/ImageSize;->height:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    neg-int v0, v7

    move v1, v9

    :goto_1
    if-ge v1, v8, :cond_3

    add-int v2, v0, v7

    move v0, v9

    :goto_2
    if-ge v0, v7, :cond_2

    add-int v12, v2, v0

    shl-int/lit8 v13, v12, 0x1

    aget v13, v5, v13

    shl-int/lit8 v12, v12, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v12, v5, v12

    invoke-virtual {v4, v13, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v11, v0, v1, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {v11, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v3, v0}, Lari;->a(Lari;[B)[B

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->g(Lari;)[B

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->j(Lari;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->g(Lari;)[B

    move-result-object v0

    array-length v7, v0

    new-instance v0, Lcom/tencent/faceverify/util/ImageInfo;

    sget v1, Lcom/tencent/faceverify/util/FaceLoc;->left:I

    sget v2, Lcom/tencent/faceverify/util/FaceLoc;->top:I

    sget v3, Lcom/tencent/faceverify/util/FaceLoc;->width:I

    sget v4, Lcom/tencent/faceverify/util/FaceLoc;->height:I

    sget v5, Lcom/tencent/faceverify/util/ImageSize;->width:I

    sget v6, Lcom/tencent/faceverify/util/ImageSize;->height:I

    iget-object v8, p0, Lari$a;->d:Lari;

    invoke-static {v8}, Lari;->g(Lari;)[B

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/tencent/faceverify/util/ImageInfo;-><init>(IIIIIII[B)V

    iget-object v1, p0, Lari$a;->d:Lari;

    invoke-static {v1}, Lari;->j(Lari;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lari$a;->d:Lari;

    invoke-static {v0}, Lari;->k(Lari;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lari$a;->d:Lari;

    invoke-static {v1}, Lari;->j(Lari;)Ljava/util/List;

    move-result-object v1

    iput-object v0, v10, Le;->a:Ljava/lang/String;

    iput-object v1, v10, Le;->b:Ljava/util/List;

    invoke-virtual {v10}, Le;->b()I

    move-result v0

    iput v0, p0, Lari$a;->c:I

    iget v0, p0, Lari$a;->c:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ret = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lari$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x2

    goto/16 :goto_0
.end method
