.class public final Lcom/ijinshan/software/recommand/n;
.super Landroid/os/AsyncTask;
.source "PicDownload.java"


# instance fields
.field a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 33
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method private varargs a([Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    .line 18
    iget-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/software/recommand/n;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    .line 27
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12
    check-cast p1, [Landroid/widget/ImageView;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/software/recommand/n;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/n;->a:Landroid/widget/ImageView;

    return-void
.end method
