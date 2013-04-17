.class public Lcom/tencent/faceverify/util/Utils;
.super Ljava/lang/Object;


# static fields
.field public static final DIR_STORAGE:Ljava/lang/String;

.field public static frontCameraFlag:Z

.field public static isSpecialPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/faceverify/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/faceverify/util/Utils;->DIR_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeYUV420SP([I[BII)V
    .locals 11

    mul-int v10, p2, p3

    const/4 v0, 0x0

    const/4 v4, 0x0

    move v9, v0

    :goto_0
    if-lt v9, p3, :cond_0

    return-void

    :cond_0
    shr-int/lit8 v0, v9, 0x1

    mul-int/2addr v0, p2

    add-int v2, v10, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v7, v0

    move v8, v4

    move v0, v3

    :goto_1
    if-lt v7, p2, :cond_1

    add-int/lit8 v0, v9, 0x1

    move v4, v8

    move v9, v0

    goto :goto_0

    :cond_1
    aget-byte v3, p1, v8

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x10

    if-gez v3, :cond_9

    const/4 v3, 0x0

    move v6, v3

    :goto_2
    and-int/lit8 v3, v7, 0x1

    if-nez v3, :cond_8

    add-int/lit8 v1, v2, 0x1

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x80

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    move v3, v0

    move v4, v1

    move v5, v2

    :goto_3
    mul-int/lit16 v0, v6, 0x4a8

    mul-int/lit16 v1, v3, 0x662

    add-int v2, v0, v1

    mul-int/lit16 v1, v3, 0x341

    sub-int v1, v0, v1

    mul-int/lit16 v6, v4, 0x190

    sub-int/2addr v1, v6

    mul-int/lit16 v6, v4, 0x812

    add-int/2addr v0, v6

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :cond_2
    :goto_4
    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_3
    :goto_5
    if-gez v0, :cond_7

    const/4 v0, 0x0

    :cond_4
    :goto_6
    shl-int/lit8 v2, v2, 0xe

    const/high16 v6, -0x100

    and-int/2addr v2, v6

    shl-int/lit8 v1, v1, 0x6

    const/high16 v6, 0xff

    and-int/2addr v1, v6

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x2

    const v2, 0xff00

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    aput v0, p0, v8

    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v1, v8, 0x1

    move v7, v0

    move v2, v5

    move v8, v1

    move v0, v3

    move v1, v4

    goto :goto_1

    :cond_5
    const v6, 0x3ffff

    if-le v2, v6, :cond_2

    const v2, 0x3ffff

    goto :goto_4

    :cond_6
    const v6, 0x3ffff

    if-le v1, v6, :cond_3

    const v1, 0x3ffff

    goto :goto_5

    :cond_7
    const v6, 0x3ffff

    if-le v0, v6, :cond_4

    const v0, 0x3ffff

    goto :goto_6

    :cond_8
    move v3, v0

    move v4, v1

    move v5, v2

    goto :goto_3

    :cond_9
    move v6, v3

    goto :goto_2
.end method

.method public static detectNetwork(Landroid/app/Activity;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCameraInfoFacingFrontConst()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getImageInfo(Landroid/graphics/Bitmap;[B)Lcom/tencent/faceverify/util/ImageInfo;
    .locals 12

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    mul-int v0, v3, v7

    new-array v11, v0, [B

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_0
    array-length v0, v1

    if-lt v2, v0, :cond_1

    const/4 v0, 0x0

    const-class v8, Lcom/tencent/faceverify/util/FaceLoc;

    const-class v9, Lcom/tencent/faceverify/util/EyeInfo;

    const/4 v10, 0x1

    move-object v5, v11

    move v6, v3

    invoke-static/range {v5 .. v10}, Lcom/tencent/faceverify/util/FaceLib;->faceDetect([BIILjava/lang/Class;Ljava/lang/Class;Z)I

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lcom/tencent/faceverify/util/FaceLoc;->width:I

    sget v1, Lcom/tencent/faceverify/util/FaceLoc;->height:I

    mul-int v7, v0, v1

    new-instance v0, Lcom/tencent/faceverify/util/ImageInfo;

    sget v1, Lcom/tencent/faceverify/util/EyeInfo;->xLeft:I

    sget v2, Lcom/tencent/faceverify/util/EyeInfo;->yLeft:I

    sget v3, Lcom/tencent/faceverify/util/EyeInfo;->xRight:I

    sget v4, Lcom/tencent/faceverify/util/EyeInfo;->yRight:I

    sget v5, Lcom/tencent/faceverify/util/FaceLoc;->width:I

    sget v6, Lcom/tencent/faceverify/util/FaceLoc;->height:I

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/tencent/faceverify/util/ImageInfo;-><init>(IIIIIII[B)V

    :cond_0
    return-object v0

    :cond_1
    aget v0, v1, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x26

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4b

    add-int/2addr v4, v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    add-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getRecogData([BZ[BII)V
    .locals 7

    const/4 v1, 0x0

    mul-int v2, p3, p4

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    sget-boolean v0, Lcom/tencent/faceverify/util/Utils;->isSpecialPhone:Z

    if-eqz v0, :cond_2

    :cond_0
    return-void

    :cond_1
    div-int v3, v0, p4

    rem-int v4, v0, p4

    mul-int/2addr v4, p3

    add-int/2addr v4, p3

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, p0, v0

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_0

    move v0, v1

    :goto_2
    div-int/lit8 v3, p4, 0x2

    if-lt v0, v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    mul-int v3, v0, p3

    add-int/2addr v3, v2

    sub-int v4, p4, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, p3

    add-int/2addr v4, v2

    aget-byte v5, p2, v3

    aget-byte v6, p2, v4

    aput-byte v6, p2, v3

    aput-byte v5, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static hasFrontCamera()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v5, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static rawYuvArray2Bitmap([BII)Landroid/graphics/Bitmap;
    .locals 2

    mul-int v0, p1, p2

    new-array v0, v0, [I

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/faceverify/util/Utils;->decodeYUV420SP([I[BII)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rawYuvArray2BitmapNew([BII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rawYuvArray2GrayJpegByteArray([BII)[B
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/tencent/faceverify/util/Utils;->rawYuvData2GrayBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v2, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static rawYuvData2GrayBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    return-object v3

    :cond_0
    move v0, v1

    :goto_1
    if-lt v0, p1, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    mul-int v4, v2, p1

    add-int/2addr v4, v0

    aget-byte v4, p0, v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static saveBaosToFile(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveByte2Image([BIIILjava/lang/String;)V
    .locals 8

    const/high16 v7, -0x100

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move v3, v1

    :goto_0
    if-lt v3, p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v4, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_0
    move v2, v1

    :goto_2
    if-lt v2, p1, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    mul-int v0, v3, p1

    add-int/2addr v0, v2

    const/4 v5, 0x1

    if-ne p3, v5, :cond_2

    aget-byte v0, p0, v0

    shl-int/lit8 v5, v0, 0x10

    shl-int/lit8 v6, v0, 0x8

    or-int/2addr v5, v6

    or-int/2addr v0, v5

    or-int/2addr v0, v7

    :goto_3
    invoke-virtual {v4, v2, v3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    if-ne p3, v5, :cond_3

    mul-int/lit8 v0, v0, 0x3

    aget-byte v5, p0, v0

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, p0, v0

    or-int/2addr v0, v5

    or-int/2addr v0, v7

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public static saveByte2ImageNew([BIIILjava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move v3, v2

    move v0, v2

    :goto_0
    if-lt v3, p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v4, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_0
    move v1, v2

    :goto_2
    if-lt v1, p1, :cond_1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    mul-int v5, v3, p1

    add-int/2addr v5, v1

    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    aget-byte v5, p0, v5

    const/high16 v6, -0x100

    and-int/2addr v0, v6

    shl-int/lit8 v6, v5, 0x10

    or-int/2addr v0, v6

    shl-int/lit8 v6, v5, 0x8

    or-int/2addr v0, v6

    or-int/2addr v0, v5

    :cond_2
    :goto_3
    invoke-virtual {v4, v1, v3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x3

    if-ne p3, v6, :cond_2

    mul-int/lit8 v0, v5, 0x3

    aget-byte v5, p0, v0

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, p0, v0

    or-int/2addr v0, v5

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saveRgbBitmapToGrayImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v5, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    const/high16 v7, -0x100

    and-int/2addr v7, v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x26

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x4b

    add-int/2addr v8, v9

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xf

    add-int/2addr v6, v8

    shr-int/lit8 v6, v6, 0x7

    shl-int/lit8 v8, v6, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v6, 0x8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    invoke-virtual {v5, v0, v2, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method public static saveRgbBitmapToImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p0, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static saveYCbCrArray2ImageFile([BIILjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v6

    goto :goto_0
.end method

.method public static saveYuvData2GrayBitmapFile([BIILjava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/tencent/faceverify/util/Utils;->rawYuvData2GrayBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v2, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static setSpecial(Z)V
    .locals 0

    return-void
.end method
