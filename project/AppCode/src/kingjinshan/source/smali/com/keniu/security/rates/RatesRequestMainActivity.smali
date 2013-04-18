.class public Lcom/keniu/security/rates/RatesRequestMainActivity;
.super Lcom/ijinshan/kpref/PreferenceActivity;
.source "RatesRequestMainActivity.java"


# static fields
.field public static c:I

.field public static e:Landroid/os/Handler;

.field private static f:Lcom/keniu/security/rates/c;

.field private static g:Landroid/content/Context;

.field private static h:Landroid/widget/Button;

.field private static k:Landroid/widget/TextView;

.field private static l:Landroid/widget/TextView;

.field private static m:Landroid/widget/TextView;

.field private static n:Landroid/widget/TextView;

.field private static o:Landroid/widget/ImageView;

.field private static p:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field public a:Z

.field public b:Z

.field public d:Lcn/com/wali/zft/plugin;

.field private i:Lcom/keniu/security/util/aq;

.field private j:Landroid/widget/LinearLayout;

.field private q:Ljava/lang/Thread;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->c:I

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    .line 77
    new-instance v0, Lcom/keniu/security/rates/d;

    invoke-direct {v0}, Lcom/keniu/security/rates/d;-><init>()V

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->a:Z

    .line 60
    iput-boolean v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->b:Z

    .line 75
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->d:Lcn/com/wali/zft/plugin;

    .line 489
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    .line 322
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zifeitong.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x0

    .line 326
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v2

    .line 334
    :goto_0
    if-eqz v0, :cond_0

    .line 335
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 336
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    :cond_0
    :goto_1
    return-void

    .line 329
    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 329
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0376

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0377

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0836

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0835

    new-instance v2, Lcom/keniu/security/rates/h;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/rates/h;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 299
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 301
    const v1, 0x7f0b0376

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 302
    const v1, 0x7f0b0377

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 303
    const v1, 0x7f0b0836

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 304
    const v1, 0x7f0b0835

    new-instance v2, Lcom/keniu/security/rates/h;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/rates/h;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 316
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 318
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/rates/RatesRequestMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->n()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 371
    .line 374
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 384
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 385
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 387
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 388
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 390
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 392
    :try_start_2
    sget-object v3, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keniu/security/rates/c;->f:J

    .line 393
    sget-object v3, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    sget-object v4, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    const v5, 0x7f0b036c

    invoke-virtual {v3, v4, v5}, Lcom/keniu/security/rates/c;->a(Landroid/content/Context;I)V

    .line 395
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zifeitong.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v2, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 397
    :cond_0
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 398
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->b:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v2

    .line 405
    :goto_3
    return-object v0

    .line 375
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v6

    goto :goto_0

    .line 395
    :catch_1
    move-exception v3

    move-object v4, v6

    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 401
    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_5

    .line 395
    :catch_5
    move-exception v3

    goto :goto_4
.end method

.method static synthetic b(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->b:Z

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 5

    .prologue
    .line 219
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    iget-object v0, v0, Lcom/keniu/security/rates/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0b0378

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b0373

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    iget-object v2, v2, Lcom/keniu/security/rates/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    invoke-virtual {v0}, Lcom/keniu/security/rates/c;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u6237\u4f59\u989d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 227
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#EE7600"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    iget-boolean v1, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->b:Z

    if-eqz v1, :cond_0

    .line 414
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    .line 415
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->b:Z

    .line 420
    :cond_0
    return-void
.end method

.method public static d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 236
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b036f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 239
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    const v1, 0x7f0b0375

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b036f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 249
    return-void
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->m()V

    return-void
.end method

.method static synthetic g()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method static synthetic h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const-wide/high16 v5, 0x3ff8

    const/4 v4, 0x0

    .line 115
    const v0, 0x7f08032c

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b036f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 119
    const v0, 0x7f08032e

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->n:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f08032f

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f08032d

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->j:Landroid/widget/LinearLayout;

    .line 122
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0b0370

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->l()V

    .line 161
    :cond_0
    :goto_0
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/keniu/security/rates/e;

    invoke-direct {v1, p0}, Lcom/keniu/security/rates/e;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v0, 0x7f080329

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->k:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f08032a

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->l:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f08032b

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 180
    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/rates/f;

    invoke-direct {v1, p0}, Lcom/keniu/security/rates/f;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->c()V

    .line 215
    return-void

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    iget-wide v2, v2, Lcom/keniu/security/rates/c;->f:J

    sub-long/2addr v0, v2

    .line 132
    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->l()V

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 136
    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v7, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 139
    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zifeitong.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    .line 141
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->m()V

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 146
    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v7, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zifeitong.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    .line 156
    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->m()V

    goto/16 :goto_0
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 253
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 257
    iget-object v1, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    .line 275
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b02cb

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 276
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b02d5

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 277
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0303

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/rates/g;

    invoke-direct {v2, p0}, Lcom/keniu/security/rates/g;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 291
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b036e

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 293
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 295
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 350
    const-string v1, "----"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/16 v2, 0x20

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    const-string v0, "http://wap.wali.com/wapsrc/images/kingsoft30760.png"

    .line 358
    :goto_0
    new-instance v1, Lcom/keniu/security/rates/i;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/rates/i;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->q:Ljava/lang/Thread;

    .line 365
    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 366
    return-void

    .line 355
    :cond_0
    const-string v0, "http://wap.wali.com/wapsrc/images/kingsoft46090.png"

    goto :goto_0
.end method

.method private static m()V
    .locals 2

    .prologue
    .line 424
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    sget-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 434
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 437
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->r:I

    .line 442
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static o()V
    .locals 2

    .prologue
    .line 523
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 525
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 527
    return-void
.end method

.method private p()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 531
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->a()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Context;)Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    .line 533
    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->a(Lcom/ijinshan/kpref/PreferenceScreen;)V

    .line 536
    new-instance v1, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v1, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 537
    const-string v2, "\u8fd0\u8425\u5546\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/CharSequence;)V

    .line 538
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 541
    iget-object v3, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    :cond_0
    const-string v2, ""

    .line 559
    :goto_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 560
    const-string v2, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 563
    :goto_1
    const v2, 0x7f030034

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 565
    new-instance v2, Lcom/keniu/security/rates/j;

    invoke-direct {v2, p0}, Lcom/keniu/security/rates/j;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 579
    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 581
    return-void

    .line 547
    :cond_1
    iget-object v3, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 554
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 562
    :cond_3
    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x20

    const-wide/high16 v5, 0x3ff8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0, v3}, Lcom/keniu/security/rates/RatesRequestMainActivity;->requestWindowFeature(I)Z

    .line 97
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/rates/c;->a(Landroid/content/Context;)Lcom/keniu/security/rates/c;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    .line 102
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_0
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->a:Z

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b02cb

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b02d5

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0303

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/rates/g;

    invoke-direct {v2, p0}, Lcom/keniu/security/rates/g;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    const v1, 0x7f0b036e

    invoke-virtual {p0, v1}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->i:Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 104
    iput-boolean v3, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->a:Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 109
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    const v0, 0x7f08032c

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b036f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    const v0, 0x7f08032e

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f08032f

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f08032d

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->j:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0b0370

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->r:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->l()V

    :cond_1
    :goto_1
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/keniu/security/rates/e;

    invoke-direct {v1, p0}, Lcom/keniu/security/rates/e;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080329

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f08032a

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f08032b

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/rates/f;

    invoke-direct {v1, p0}, Lcom/keniu/security/rates/f;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->c()V

    .line 112
    return-void

    :cond_2
    move v0, v3

    .line 102
    goto/16 :goto_0

    .line 111
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/keniu/security/rates/RatesRequestMainActivity;->f:Lcom/keniu/security/rates/c;

    iget-wide v2, v2, Lcom/keniu/security/rates/c;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-direct {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->l()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v7, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zifeitong.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->m()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v7, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zifeitong.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v1, Lcom/keniu/security/rates/RatesRequestMainActivity;->p:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/keniu/security/rates/RatesRequestMainActivity;->m()V

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 457
    invoke-super {p0}, Lcom/ijinshan/kpref/PreferenceActivity;->onStart()V

    .line 459
    invoke-virtual {p0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->a()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Context;)Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->a(Lcom/ijinshan/kpref/PreferenceScreen;)V

    new-instance v1, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v1, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8fd0\u8425\u5546\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    iget-object v3, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v2, ""

    :goto_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    :goto_1
    const v2, 0x7f030034

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->c(I)V

    new-instance v2, Lcom/keniu/security/rates/j;

    invoke-direct {v2, p0}, Lcom/keniu/security/rates/j;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 461
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 465
    iget-boolean v1, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/rates/RatesRequestMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 472
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 474
    const v0, 0x7f0b02d0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 486
    :cond_1
    :goto_2
    return-void

    .line 459
    :cond_2
    iget-object v3, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 480
    :cond_5
    sget-object v0, Lcom/keniu/security/rates/RatesRequestMainActivity;->g:Landroid/content/Context;

    new-instance v1, Lcom/keniu/security/rates/k;

    const-string v2, "Rates"

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/rates/k;-><init>(Lcom/keniu/security/rates/RatesRequestMainActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/rates/RatesRequestMainActivity;->a:Z

    goto/16 :goto_2
.end method
