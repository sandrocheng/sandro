.class public final Lrv;
.super Labu;


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EncryedFileThumbnailLoaderService"

    sput-object v0, Lrv;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Labu;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lrv;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lmp;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lli;

    const/4 v0, 0x0

    iget-object v1, p1, Lli;->a:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lgz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ce

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    iput-object v0, p1, Lli;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lrv;->e:Landroid/os/Handler;

    new-instance v1, Lrw;

    invoke-direct {v1, p1}, Lrw;-><init>(Lli;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    invoke-super {p0}, Labu;->b()V

    sget-object v0, Lrv;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
