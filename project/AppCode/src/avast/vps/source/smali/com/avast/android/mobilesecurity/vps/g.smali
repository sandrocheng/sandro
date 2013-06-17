.class public final Lcom/avast/android/mobilesecurity/vps/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/Map;

.field private static final g:Ljava/util/Map;

.field private static final h:Ljava/util/Map;

.field private static final i:Ljava/util/Map;


# instance fields
.field private A:I

.field private j:I

.field private k:Z

.field private l:[B

.field private m:I

.field private n:[B

.field private o:I

.field private p:[B

.field private q:[B

.field private r:I

.field private s:Ljava/util/zip/ZipFile;

.field private t:Ljava/util/zip/ZipEntry;

.field private u:Ljava/util/Enumeration;

.field private v:Ljava/util/zip/ZipEntry;

.field private w:Ljava/io/InputStream;

.field private x:I

.field private y:Z

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lcom/avast/android/mobilesecurity/vps/g;->a:I

    const/16 v0, 0x4000

    sput v0, Lcom/avast/android/mobilesecurity/vps/g;->b:I

    const/high16 v0, 0x1

    sput v0, Lcom/avast/android/mobilesecurity/vps/g;->c:I

    const/16 v0, 0x80

    sput v0, Lcom/avast/android/mobilesecurity/vps/g;->d:I

    const/16 v0, 0x200

    sput v0, Lcom/avast/android/mobilesecurity/vps/g;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/g;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/g;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/g;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/g;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/avast/android/mobilesecurity/vps/g;->c:I

    sget v1, Lcom/avast/android/mobilesecurity/vps/g;->b:I

    sget v2, Lcom/avast/android/mobilesecurity/vps/g;->e:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0

    :cond_0
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->y:Z

    iput-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->t:Ljava/util/zip/ZipEntry;

    iput v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->j:I

    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->k:Z

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    if-nez v0, :cond_1

    sget v0, Lcom/avast/android/mobilesecurity/vps/g;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    if-nez v0, :cond_2

    sget v0, Lcom/avast/android/mobilesecurity/vps/g;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    if-nez v0, :cond_3

    sget v0, Lcom/avast/android/mobilesecurity/vps/g;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->q:[B

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->q:[B

    if-nez v0, :cond_4

    sget v0, Lcom/avast/android/mobilesecurity/vps/g;->e:I

    sget v1, Lcom/avast/android/mobilesecurity/vps/g;->b:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->q:[B

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->q:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput p1, p0, Lcom/avast/android/mobilesecurity/vps/g;->A:I

    shl-int/lit8 v0, p1, 0x18

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->z:B

    return-void
.end method

.method public static a(I)V
    .locals 2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->h:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->h:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->i:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_3

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/g;->i:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private a(Ljava/util/zip/ZipEntry;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->s:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    :goto_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_5

    iget v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    array-length v4, v4

    if-gt v3, v4, :cond_4

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    iget v6, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sget v3, Lcom/avast/android/mobilesecurity/vps/g;->c:I

    if-ge v2, v3, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    iput-object v9, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->y:Z

    iput v1, p0, Lcom/avast/android/mobilesecurity/vps/g;->r:I

    :cond_0
    move v0, v1

    :cond_1
    :goto_2
    return v0

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->q:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    const/4 v5, 0x0

    iget v6, p0, Lcom/avast/android/mobilesecurity/vps/g;->r:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->r:I

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v2, 0x0

    :try_start_4
    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sget v3, Lcom/avast/android/mobilesecurity/vps/g;->c:I

    if-ge v2, v3, :cond_3

    :try_start_5
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    iput-object v9, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->y:Z

    iput v1, p0, Lcom/avast/android/mobilesecurity/vps/g;->r:I

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :try_start_6
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    iget v6, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    array-length v7, v7

    iget v8, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    array-length v4, v4

    sget v5, Lcom/avast/android/mobilesecurity/vps/g;->e:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/vps/g;->q:[B

    const/4 v6, 0x0

    sget v7, Lcom/avast/android/mobilesecurity/vps/g;->e:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    array-length v4, v4

    iget v5, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/vps/g;->q:[B

    sget v6, Lcom/avast/android/mobilesecurity/vps/g;->e:I

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    array-length v7, v7

    iget v8, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sub-int/2addr v7, v8

    sub-int v7, v2, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    array-length v3, v3

    iget v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    sget v3, Lcom/avast/android/mobilesecurity/vps/g;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->r:I

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    array-length v2, v2

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sget v3, Lcom/avast/android/mobilesecurity/vps/g;->c:I

    if-ge v2, v3, :cond_1

    :try_start_7
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_4
    iput-object v9, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->y:Z

    iput v1, p0, Lcom/avast/android/mobilesecurity/vps/g;->r:I

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    sget v4, Lcom/avast/android/mobilesecurity/vps/g;->c:I

    if-ge v3, v4, :cond_6

    :try_start_8
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_5
    iput-object v9, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->y:Z

    iput v1, p0, Lcom/avast/android/mobilesecurity/vps/g;->r:I

    :cond_6
    throw v2

    :catch_2
    move-exception v3

    goto :goto_5

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :catch_5
    move-exception v2

    goto :goto_4
.end method

.method public static a(Ljava/io/File;I)[B
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget v2, Lcom/avast/android/mobilesecurity/vps/g;->d:I

    new-array v3, v2, [B

    sget v2, Lcom/avast/android/mobilesecurity/vps/g;->b:I

    new-array v2, v2, [B

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_1

    add-int v6, v0, v5

    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_0

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-static {v2, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    add-int/2addr v0, v2

    move v2, v0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v3, p1, 0x18

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_1
    move v2, v0

    goto :goto_1
.end method

.method private h()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->s:Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->v:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    :goto_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->x:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    iget v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->x:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    array-length v3, v3

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    iget v5, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    iget v6, p0, Lcom/avast/android/mobilesecurity/vps/g;->x:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    iget v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->x:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    iput-object v8, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    move v0, v1

    :goto_2
    return v0

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->p:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    iget v5, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    array-length v6, v6

    iget v7, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    sub-int/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    array-length v3, v3

    iget v4, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_3
    iput-object v8, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    iput-object v8, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_5
    iput-object v8, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->k:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->s:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->s:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->u:Ljava/util/Enumeration;

    iget v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->j:I

    sget v3, Lcom/avast/android/mobilesecurity/vps/g;->a:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/vps/g;->k:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->t:Ljava/util/zip/ZipEntry;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/vps/g;->a(Ljava/util/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->y:Z

    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->u:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->u:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->v:Ljava/util/zip/ZipEntry;

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->v:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/vps/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->v:Ljava/util/zip/ZipEntry;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->t:Ljava/util/zip/ZipEntry;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->n:[B

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/io/File;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()[B
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/vps/g;->a(Ljava/util/zip/ZipEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->l:[B

    :cond_0
    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->m:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->o:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->y:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->k:Z

    return v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/g;->w:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
