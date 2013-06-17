.class public final Lcom/avg/ui/license/qrreader/general/CaptureActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final a:Ljava/util/Collection;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/avg/ui/license/qrreader/a/c;

.field private d:Lcom/avg/ui/license/qrreader/general/d;

.field private e:Lcom/google/zxing/Result;

.field private f:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Lcom/google/zxing/Result;

.field private j:Z

.field private k:Z

.field private l:Lcom/avg/ui/license/qrreader/general/n;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Collection;

.field private p:Ljava/lang/String;

.field private q:Lcom/avg/ui/license/qrreader/general/j;

.field private r:Lcom/avg/ui/license/qrreader/general/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "QR_CODE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a:Ljava/util/Collection;

    const-class v0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    invoke-virtual {v3, v0, v1, v2}, Lcom/avg/ui/license/qrreader/general/d;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    invoke-virtual {v1, v0}, Lcom/avg/ui/license/qrreader/general/d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 3

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->e:Lcom/google/zxing/Result;

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->e:Lcom/google/zxing/Result;

    :cond_1
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->e:Lcom/google/zxing/Result;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->e:Lcom/google/zxing/Result;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    invoke-virtual {v1, v0}, Lcom/avg/ui/license/qrreader/general/d;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->e:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c:Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {v0, p1}, Lcom/avg/ui/license/qrreader/a/c;->a(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avg/ui/license/qrreader/general/d;

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->o:Ljava/util/Collection;

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c:Lcom/avg/ui/license/qrreader/a/c;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/avg/ui/license/qrreader/general/d;-><init>(Lcom/avg/ui/license/qrreader/general/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/avg/ui/license/qrreader/a/c;)V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->e()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->e()V

    goto :goto_0
.end method

.method private a(Lcom/google/zxing/Result;Lcom/avg/ui/license/qrreader/b/a;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0, p3}, Lcom/avg/ui/license/qrreader/general/ViewfinderView;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avg/ui/license/qrreader/b/a;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/avg/ui/license/qrreader/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p2}, Lcom/avg/ui/license/qrreader/b/a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    sget-object v2, Lcom/avg/ui/license/qrreader/general/n;->a:Lcom/avg/ui/license/qrreader/general/n;

    if-ne v0, v2, :cond_6

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    const-string v3, "SCAN_RESULT_BYTES"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v4, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v4, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    invoke-direct {p0, v0, v2}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    sget-object v2, Lcom/avg/ui/license/qrreader/general/n;->b:Lcom/avg/ui/license/qrreader/general/n;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->m:Ljava/lang/String;

    const-string v2, "/scan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avg/ui/license/qrreader/b/a;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&source=zxing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    sget-object v1, Lcom/avg/ui/license/qrreader/general/n;->c:Lcom/avg/ui/license/qrreader/general/n;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/avg/ui/license/qrreader/b/a;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->n:Ljava/lang/String;

    const-string v2, "{CODE}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(ILjava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private b(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x2

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/avg/ui/general/b;->result_image_border:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/avg/ui/general/b;->result_points:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    array-length v4, v1

    if-ne v4, v7, :cond_1

    const/high16 v4, 0x4080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    aget-object v0, v1, v0

    aget-object v1, v1, v8

    invoke-static {v2, v3, v0, v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v4, v5, :cond_3

    :cond_2
    aget-object v0, v1, v0

    aget-object v4, v1, v8

    invoke-static {v2, v3, v0, v4}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    aget-object v0, v1, v7

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v2, v3, v0, v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    :cond_3
    const/high16 v4, 0x4120

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {v2, v6, v5, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private e()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/avg/ui/general/g;->msg_camera_framework_bug:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/avg/ui/general/g;->ok:I

    new-instance v2, Lcom/avg/ui/license/qrreader/general/i;

    invoke-direct {v2, p0}, Lcom/avg/ui/license/qrreader/general/i;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/i;

    invoke-direct {v0, p0}, Lcom/avg/ui/license/qrreader/general/i;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->g:Landroid/widget/TextView;

    sget v1, Lcom/avg/ui/general/g;->msg_default_status:I

    invoke-virtual {p0, v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0, v2}, Lcom/avg/ui/license/qrreader/general/ViewfinderView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->i:Lcom/google/zxing/Result;

    return-void
.end method


# virtual methods
.method a()Lcom/avg/ui/license/qrreader/general/ViewfinderView;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    return-object v0
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/avg/ui/license/qrreader/general/d;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f()V

    return-void
.end method

.method public a(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->q:Lcom/avg/ui/license/qrreader/general/j;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/j;->a()V

    iput-object p1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->i:Lcom/google/zxing/Result;

    invoke-static {p0, p1}, Lcom/avg/ui/license/qrreader/b/c;->a(Lcom/avg/ui/license/qrreader/general/CaptureActivity;Lcom/google/zxing/Result;)Lcom/avg/ui/license/qrreader/b/a;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->r:Lcom/avg/ui/license/qrreader/general/a;

    invoke-virtual {v1}, Lcom/avg/ui/license/qrreader/general/a;->b()V

    invoke-direct {p0, p2, p1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->b(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    sget-object v1, Lcom/avg/ui/license/qrreader/general/c;->a:[I

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    invoke-virtual {v2}, Lcom/avg/ui/license/qrreader/general/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, v0, p2}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Lcom/google/zxing/Result;Lcom/avg/ui/license/qrreader/b/a;Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    return-object v0
.end method

.method c()Lcom/avg/ui/license/qrreader/a/c;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c:Lcom/avg/ui/license/qrreader/a/c;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/ViewfinderView;->a()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget v0, Lcom/avg/ui/general/e;->capture:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->setContentView(I)V

    iput-boolean v2, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->j:Z

    new-instance v0, Lcom/avg/ui/license/qrreader/general/j;

    invoke-direct {v0, p0}, Lcom/avg/ui/license/qrreader/general/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->q:Lcom/avg/ui/license/qrreader/general/j;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/a;

    invoke-direct {v0, p0}, Lcom/avg/ui/license/qrreader/general/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->r:Lcom/avg/ui/license/qrreader/general/a;

    sget v0, Lcom/avg/ui/general/i;->preferences:I

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->q:Lcom/avg/ui/license/qrreader/general/j;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/j;->d()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    sget-object v2, Lcom/avg/ui/license/qrreader/general/n;->a:Lcom/avg/ui/license/qrreader/general/n;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->finish()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    sget-object v2, Lcom/avg/ui/license/qrreader/general/n;->d:Lcom/avg/ui/license/qrreader/general/n;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    sget-object v2, Lcom/avg/ui/license/qrreader/general/n;->c:Lcom/avg/ui/license/qrreader/general/n;

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->i:Lcom/google/zxing/Result;

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(J)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x50

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    :cond_0
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->q:Lcom/avg/ui/license/qrreader/general/j;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/j;->b()V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c:Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/a/c;->a()V

    iget-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->j:Z

    if-nez v0, :cond_1

    sget v0, Lcom/avg/ui/general/d;->preview_view:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/avg/ui/license/qrreader/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c:Lcom/avg/ui/license/qrreader/a/c;

    sget v0, Lcom/avg/ui/general/d;->viewfinder_view:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    iget-object v3, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c:Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {v0, v3}, Lcom/avg/ui/license/qrreader/general/ViewfinderView;->setCameraManager(Lcom/avg/ui/license/qrreader/a/c;)V

    sget v0, Lcom/avg/ui/general/d;->result_view:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->h:Landroid/view/View;

    sget v0, Lcom/avg/ui/general/d;->status_view:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->g:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->d:Lcom/avg/ui/license/qrreader/general/d;

    iput-object v5, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->i:Lcom/google/zxing/Result;

    invoke-direct {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->f()V

    sget v0, Lcom/avg/ui/general/d;->preview_view:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->j:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    :goto_0
    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->r:Lcom/avg/ui/license/qrreader/general/a;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/a;->a()V

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->q:Lcom/avg/ui/license/qrreader/general/j;

    invoke-virtual {v0}, Lcom/avg/ui/license/qrreader/general/j;->c()V

    invoke-virtual {p0}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "preferences_copy_to_clipboard"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_0

    const-string v0, "SAVE_HISTORY"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->k:Z

    sget-object v0, Lcom/avg/ui/license/qrreader/general/n;->d:Lcom/avg/ui/license/qrreader/general/n;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    iput-object v5, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->o:Ljava/util/Collection;

    iput-object v5, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->p:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v0, Lcom/avg/ui/license/qrreader/general/n;->a:Lcom/avg/ui/license/qrreader/general/n;

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->l:Lcom/avg/ui/license/qrreader/general/n;

    invoke-static {v3}, Lcom/avg/ui/license/qrreader/general/f;->a(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->o:Ljava/util/Collection;

    const-string v0, "SCAN_WIDTH"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SCAN_HEIGHT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SCAN_WIDTH"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SCAN_HEIGHT"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c:Lcom/avg/ui/license/qrreader/a/c;

    invoke-virtual {v2, v0, v1}, Lcom/avg/ui/license/qrreader/a/c;->a(II)V

    :cond_1
    const-string v0, "PROMPT_MESSAGE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "CHARACTER_SET"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->p:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-nez p1, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->j:Z

    invoke-direct {p0, p1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->j:Z

    return-void
.end method
