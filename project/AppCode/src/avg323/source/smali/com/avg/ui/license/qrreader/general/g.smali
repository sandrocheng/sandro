.class final Lcom/avg/ui/license/qrreader/general/g;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

.field private final c:Lcom/google/zxing/MultiFormatReader;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/avg/ui/license/qrreader/general/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avg/ui/license/qrreader/general/g;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/avg/ui/license/qrreader/general/CaptureActivity;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/g;->d:Z

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/avg/ui/license/qrreader/general/g;->c:Lcom/google/zxing/MultiFormatReader;

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/g;->c:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/avg/ui/license/qrreader/general/g;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    return-void
.end method

.method private a([BII)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/g;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    invoke-virtual {v1}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->c()Lcom/avg/ui/license/qrreader/a/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/avg/ui/license/qrreader/a/c;->a([BII)Lcom/avg/ui/license/qrreader/general/o;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    :try_start_0
    iget-object v3, p0, Lcom/avg/ui/license/qrreader/general/g;->c:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v3, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/g;->c:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/g;->b:Lcom/avg/ui/license/qrreader/general/CaptureActivity;

    invoke-virtual {v2}, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->b()Landroid/os/Handler;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "barcode_bitmap"

    invoke-virtual {v1}, Lcom/avg/ui/license/qrreader/general/o;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/avg/ui/license/qrreader/general/g;->c:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avg/ui/license/qrreader/general/g;->c:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0

    :cond_2
    if-eqz v2, :cond_1

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/g;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/avg/ui/license/qrreader/general/g;->a([BII)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/ui/license/qrreader/general/g;->d:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
