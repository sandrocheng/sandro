.class public final Lorg/antivirus/license/qrreader/general/CaptureActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field public static final HISTORY_REQUEST_CODE:I = 0xbacc

.field public static final QR_CODE_TYPES:Ljava/util/Collection; = null

.field public static final REQUEST_CODE:I = 0xc0de

.field private static final RETURN_CODE_PLACEHOLDER:Ljava/lang/String; = "{CODE}"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beepManager:Lorg/antivirus/license/qrreader/general/BeepManager;

.field private cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;

.field private handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lorg/antivirus/license/qrreader/general/InactivityTimer;

.field private lastResult:Lcom/google/zxing/Result;

.field private resultView:Landroid/view/View;

.field private returnUrlTemplate:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lorg/antivirus/license/qrreader/general/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private statusView:Landroid/widget/TextView;

.field private viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "QR_CODE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->QR_CODE_TYPES:Ljava/util/Collection;

    const-class v0, Lorg/antivirus/license/qrreader/general/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    if-nez v0, :cond_0

    iput-object p2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    const v1, 0x7f080003

    iget-object v2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090137

    invoke-virtual {p0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    new-instance v2, Lorg/antivirus/license/qrreader/general/FinishListener;

    invoke-direct {v2, p0}, Lorg/antivirus/license/qrreader/general/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/antivirus/license/qrreader/general/FinishListener;

    invoke-direct {v1, p0}, Lorg/antivirus/license/qrreader/general/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
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

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
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

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001e

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

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    array-length v4, v1

    if-ne v4, v7, :cond_1

    const/high16 v4, 0x4080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    aget-object v0, v1, v0

    aget-object v1, v1, v8

    invoke-static {v2, v3, v0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

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

    invoke-static {v2, v3, v0, v4}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    aget-object v0, v1, v7

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v2, v3, v0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

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

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lorg/antivirus/license/qrreader/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 6

    const v4, 0x7f080004

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0, p3}, Lorg/antivirus/license/qrreader/general/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/antivirus/license/qrreader/result/ResultHandler;->getDisplayTitle()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->copyToClipboard:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/antivirus/license/qrreader/result/ResultHandler;->areContentsSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {p2}, Lorg/antivirus/license/qrreader/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    sget-object v2, Lorg/antivirus/license/qrreader/general/IntentSource;->NATIVE_APP_INTENT:Lorg/antivirus/license/qrreader/general/IntentSource;

    if-ne v0, v2, :cond_6

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getIntent()Landroid/content/Intent;

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

    const-string v5, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    const v0, 0x7f080007

    invoke-direct {p0, v0, v2}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    sget-object v2, Lorg/antivirus/license/qrreader/general/IntentSource;->PRODUCT_SEARCH_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->sourceUrl:Ljava/lang/String;

    const-string v2, "/scan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/antivirus/license/qrreader/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&source=zxing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    sget-object v1, Lorg/antivirus/license/qrreader/general/IntentSource;->ZXING_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/antivirus/license/qrreader/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

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
    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    const-string v2, "{CODE}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {v0, p1}, Lorg/antivirus/license/qrreader/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v3, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;-><init>(Lorg/antivirus/license/qrreader/general/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lorg/antivirus/license/qrreader/camera/CameraManager;)V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private resetStatusView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->resultView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->statusView:Landroid/widget/TextView;

    const v1, 0x7f090138

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0, v2}, Lorg/antivirus/license/qrreader/general/ViewfinderView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    return-void
.end method

.method private sendReplyMessage(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    invoke-virtual {v3, v0, v1, v2}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final drawViewfinder()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method final getCameraManager()Lorg/antivirus/license/qrreader/camera/CameraManager;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    return-object v0
.end method

.method final getViewfinderView()Lorg/antivirus/license/qrreader/general/ViewfinderView;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    return-object v0
.end method

.method public final handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->inactivityTimer:Lorg/antivirus/license/qrreader/general/InactivityTimer;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/InactivityTimer;->onActivity()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-static {p0, p1}, Lorg/antivirus/license/qrreader/result/ResultHandlerFactory;->makeResultHandler(Lorg/antivirus/license/qrreader/general/CaptureActivity;Lcom/google/zxing/Result;)Lorg/antivirus/license/qrreader/result/ResultHandler;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->beepManager:Lorg/antivirus/license/qrreader/general/BeepManager;

    invoke-virtual {v1}, Lorg/antivirus/license/qrreader/general/BeepManager;->playBeepSoundAndVibrate()V

    invoke-direct {p0, p2, p1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    sget-object v1, Lorg/antivirus/license/qrreader/general/CaptureActivity$1;->$SwitchMap$org$antivirus$license$qrreader$general$IntentSource:[I

    iget-object v2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    invoke-virtual {v2}, Lorg/antivirus/license/qrreader/general/IntentSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, v0, p2}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lorg/antivirus/license/qrreader/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->setContentView(I)V

    iput-boolean v2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->hasSurface:Z

    new-instance v0, Lorg/antivirus/license/qrreader/general/InactivityTimer;

    invoke-direct {v0, p0}, Lorg/antivirus/license/qrreader/general/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->inactivityTimer:Lorg/antivirus/license/qrreader/general/InactivityTimer;

    new-instance v0, Lorg/antivirus/license/qrreader/general/BeepManager;

    invoke-direct {v0, p0}, Lorg/antivirus/license/qrreader/general/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->beepManager:Lorg/antivirus/license/qrreader/general/BeepManager;

    const/high16 v0, 0x7f04

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->inactivityTimer:Lorg/antivirus/license/qrreader/general/InactivityTimer;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/InactivityTimer;->shutdown()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    sget-object v2, Lorg/antivirus/license/qrreader/general/IntentSource;->NATIVE_APP_INTENT:Lorg/antivirus/license/qrreader/general/IntentSource;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->setResult(I)V

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->finish()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    sget-object v2, Lorg/antivirus/license/qrreader/general/IntentSource;->NONE:Lorg/antivirus/license/qrreader/general/IntentSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    sget-object v2, Lorg/antivirus/license/qrreader/general/IntentSource;->ZXING_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->restartPreviewAfterDelay(J)V

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

.method protected final onPause()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->inactivityTimer:Lorg/antivirus/license/qrreader/general/InactivityTimer;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/InactivityTimer;->onPause()V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/camera/CameraManager;->closeDriver()V

    iget-boolean v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/antivirus/license/qrreader/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/antivirus/license/qrreader/general/ViewfinderView;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    iget-object v3, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {v0, v3}, Lorg/antivirus/license/qrreader/general/ViewfinderView;->setCameraManager(Lorg/antivirus/license/qrreader/camera/CameraManager;)V

    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->resultView:Landroid/view/View;

    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->statusView:Landroid/widget/TextView;

    iput-object v5, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    iput-object v5, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-direct {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->resetStatusView()V

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-boolean v3, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->hasSurface:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->beepManager:Lorg/antivirus/license/qrreader/general/BeepManager;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/BeepManager;->updatePrefs()V

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->inactivityTimer:Lorg/antivirus/license/qrreader/general/InactivityTimer;

    invoke-virtual {v0}, Lorg/antivirus/license/qrreader/general/InactivityTimer;->onResume()V

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->getIntent()Landroid/content/Intent;

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
    iput-boolean v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->copyToClipboard:Z

    sget-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->NONE:Lorg/antivirus/license/qrreader/general/IntentSource;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    iput-object v5, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iput-object v5, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->characterSet:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->NATIVE_APP_INTENT:Lorg/antivirus/license/qrreader/general/IntentSource;

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->source:Lorg/antivirus/license/qrreader/general/IntentSource;

    invoke-static {v3}, Lorg/antivirus/license/qrreader/general/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->decodeFormats:Ljava/util/Collection;

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

    iget-object v2, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->cameraManager:Lorg/antivirus/license/qrreader/camera/CameraManager;

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/license/qrreader/camera/CameraManager;->setManualFramingRect(II)V

    :cond_1
    const-string v0, "PROMPT_MESSAGE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "CHARACTER_SET"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->characterSet:Ljava/lang/String;

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

.method public final restartPreviewAfterDelay(J)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->handler:Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;

    const v1, 0x7f080006

    invoke-virtual {v0, v1, p1, p2}, Lorg/antivirus/license/qrreader/general/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->resetStatusView()V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->hasSurface:Z

    invoke-direct {p0, p1}, Lorg/antivirus/license/qrreader/general/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/license/qrreader/general/CaptureActivity;->hasSurface:Z

    return-void
.end method
