.class public Lcom/tencent/tmsecure/module/aresengine/MmsPart;
.super Lcom/tencent/tmsecure/common/BaseEntity;


# instance fields
.field public charset:I

.field public contentDispositon:[B

.field public contentId:[B

.field public contentLocation:[B

.field public contentType:[B

.field public data:[B

.field public dataPath:Ljava/lang/String;

.field public fileName:[B

.field public name:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentType:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->name:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->charset:I

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentDispositon:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->fileName:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentId:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentLocation:[B

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->data:[B

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentType:[B

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentType:[B

    invoke-static {v2}, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mmsparts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentLocation:[B

    invoke-static {v3}, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->data:[B

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->data:[B

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    iput-object v4, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->data:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_6
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_5

    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_8

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    iput-object v4, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    move-object v1, v2

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_9

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    :goto_5
    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_6
    if-eqz v1, :cond_a

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_b
    :goto_8
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_4
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method final a()Lcom/google/android/mms/pdu/PduPart;
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->charset:I

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentDispositon:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentDispositon:[B

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentId:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentId:[B

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentLocation:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentLocation:[B

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentType:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentType:[B

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->fileName:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->fileName:[B

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->name:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->name:[B

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->data:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->data:[B

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    :cond_6
    :goto_0
    return-object v4

    :cond_7
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    :goto_4
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v2, :cond_a

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_b
    :goto_7
    throw v0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method
