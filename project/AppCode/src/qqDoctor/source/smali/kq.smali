.class public final Lkq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkq$a;
    }
.end annotation


# static fields
.field private static l:[Ljava/lang/String;

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/Key;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lko;

.field private b:[B

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:[B

.field private h:Ljava/io/File;

.field private i:Ljava/io/RandomAccessFile;

.field private j:Ljava/lang/String;

.field private k:Lkq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "057B2AEB22007A41B73E64C50F2D50F78EB07D355BE68B1F14F83E6D9F2393184C5FB75DD5729BB5E08A2351814392EE7F098CF06D87EA8C879DE799A9D40C8AC57E0C27D00D37ADB89E57F96F5D8B7ED45C1A986D05F55A2EEAA04AD5F86D07BB160EEDA80615EBD66426BB4A9E81A96AA7277C8971CC9AA4489E8EDBE163E3F88B2000496F882D8797AC177A9A6CE2A51B6D8D03DF56863DC6D14A9D6E2443E3E133F94F607215BB9A7BF8BFD99582"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "AEAEF116F43581B8720F799E8A1325BC68EFB37F5D800606F59F75427D660E7BAF542150D2333BFF860789BD02D0DAD54A49A5FF7D87491DFC8B35A86492722AC92C69AD3EC8A9A162837C6209215A089092365DFF900E656B639618F03E5324707E4868C7B137AF2A83AB5306BAB4CA61B16B90EC3E1B2DD1DDA41394F81023EE339364B7BD9F9B67B5F042639291BBA5C3D6303F8C15A81954F0D3A4309B526D6FB8B31572ED8BD786AD03A3C591A7"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "D64342264C9D08FBABD9A937B4D4F13F5A56725C0ECA389F890CF71C12FD442464C122F66F84958D36B446634460AC4DF0BED210F5FCDA537B9829547C05FD4C6B69E91FE964AE4885D8593C50712BB06427BDCBAE060CF2BFC35B55A1087B51373A85EEAF0EC3C91C9B1041F0C4790890603361157A0005C0A67E51103FA2A61A34D87B9CCC81F5AE346A7D27647330832DBBE8E09022302A0302F5"

    aput-object v3, v0, v2

    sput-object v0, Lkq;->l:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkq;->m:Ljava/util/HashMap;

    sget-object v2, Lkq;->l:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-static {v4}, Lks;->a(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lkq;->m:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lkq;->b:[B

    iput-object v1, p0, Lkq;->c:[B

    iput v0, p0, Lkq;->d:I

    iput v0, p0, Lkq;->e:I

    iput v0, p0, Lkq;->f:I

    iput-object v1, p0, Lkq;->g:[B

    return-void
.end method

.method private a(I)I
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/16 v1, -0x64

    iget-object v2, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x38

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v6, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    const/16 v2, 0x38

    new-array v4, v2, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lkq;->h:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    array-length v5, v4

    if-eq v3, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "File read failed:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    invoke-static {v4}, Lkq$a;->a([B)Lkq$a;

    move-result-object v1

    iget v2, v1, Lkq$a;->a:I

    const v3, 0x1330685

    if-ne v2, v3, :cond_5

    iget-object v1, v1, Lkq$a;->b:Ljava/lang/String;

    const-string v2, "TMFS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, -0x7

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_4
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_6
    throw v0

    :cond_5
    iget-object v1, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_0

    const/4 v0, -0x8

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method private a(Ljava/lang/String;I)I
    .locals 10

    const-wide/16 v8, 0x38

    const/16 v7, 0x400

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkq;->h:Ljava/io/File;

    iget-object v0, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encrypt input file not exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-direct {p0, v0}, Lkq;->b(Ljava/lang/String;)I

    iget v0, p0, Lkq;->f:I

    invoke-direct {p0, v0}, Lkq;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkq;->a:Lko;

    invoke-virtual {v0}, Lko;->a()I

    move-result v0

    invoke-static {}, Lks;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lks;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lkq;->a(Ljava/lang/String;[B)I

    new-instance v2, Lkq$a;

    invoke-direct {v2}, Lkq$a;-><init>()V

    iput-object v2, p0, Lkq;->k:Lkq$a;

    iget-object v2, p0, Lkq;->k:Lkq$a;

    const v3, 0x1330685

    iput v3, v2, Lkq$a;->a:I

    iget-object v2, p0, Lkq;->k:Lkq$a;

    const-string v3, "TMFS"

    iput-object v3, v2, Lkq$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iget v3, p0, Lkq;->f:I

    iput v3, v2, Lkq$a;->f:I

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iput-byte v6, v2, Lkq$a;->c:B

    iget-object v2, p0, Lkq;->k:Lkq$a;

    int-to-short v3, p2

    iput-short v3, v2, Lkq$a;->e:S

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iget-object v3, p0, Lkq;->g:[B

    iput-object v3, v2, Lkq$a;->g:[B

    iget-object v2, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iput-byte v6, v2, Lkq$a;->d:B

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iput-wide v8, v2, Lkq$a;->h:J

    iget-object v2, p0, Lkq;->k:Lkq$a;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lkq$a;->i:J

    iget-object v2, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lkq;->d:I

    iget v2, p0, Lkq;->d:I

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    iput v0, p0, Lkq;->e:I

    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lkq;->h:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget v0, p0, Lkq;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lkq;->b:[B

    iget-object v0, p0, Lkq;->k:Lkq$a;

    iget-byte v0, v0, Lkq$a;->d:B

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lkq;->b:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lkq;->b:[B

    array-length v4, v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    :goto_2
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lkq;->a:Lko;

    iget-object v2, p0, Lkq;->b:[B

    invoke-virtual {v0, v2}, Lko;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lkq;->c:[B

    iget-object v0, p0, Lkq;->c:[B

    if-nez v0, :cond_4

    const/16 v0, -0xa

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lkq;->k:Lkq$a;

    iput-byte v1, v2, Lkq$a;->d:B

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iput-wide v8, v2, Lkq$a;->h:J

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iget-object v3, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lkq$a;->i:J

    iput v7, p0, Lkq;->d:I

    iget v2, p0, Lkq;->d:I

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    iput v0, p0, Lkq;->e:I

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lkq;->b:[B

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/16 v0, -0xc

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;[B)I
    .locals 3

    iget-object v0, p0, Lkq;->a:Lko;

    invoke-virtual {v0}, Lko;->a()I

    move-result v0

    iget v1, p0, Lkq;->f:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x4

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lkq;->a:Lko;

    invoke-virtual {v0, p1, p2}, Lko;->a(Ljava/lang/String;[B)V

    invoke-static {p1}, La;->i(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lkq;->g:[B

    iget-object v0, p0, Lkq;->g:[B

    if-nez v0, :cond_2

    const/16 v0, -0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B[B)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    array-length v3, p1

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private b(I)I
    .locals 7

    const/4 v0, -0x6

    const/16 v1, -0x64

    iget-object v2, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x38

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    const/16 v2, 0x38

    new-array v4, v2, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lkq;->h:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    array-length v5, v4

    if-eq v3, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File read failed:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    invoke-static {v4}, Lkq$a;->a([B)Lkq$a;

    move-result-object v1

    iput-object v1, p0, Lkq;->k:Lkq$a;

    iget-object v1, p0, Lkq;->k:Lkq$a;

    iget v1, v1, Lkq$a;->a:I

    const v2, 0x1330685

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkq;->k:Lkq$a;

    iget-object v1, v1, Lkq$a;->b:Ljava/lang/String;

    const-string v2, "TMFS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkq;->k:Lkq$a;

    iget v1, v1, Lkq$a;->f:I

    if-ne v1, p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v2, v3

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    throw v0

    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transformation unmatch:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iget v2, v2, Lkq$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v4

    const-string v6, "DES"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aget-object v6, v5, v1

    const-string v7, "ECB"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit16 v0, v0, 0x100

    :goto_1
    aget-object v6, v5, v2

    const-string v7, "NoPadding"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v5, 0x1

    or-int/2addr v0, v5

    :goto_2
    iput v0, p0, Lkq;->f:I

    iget v0, p0, Lkq;->f:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lkq;->f:I

    :goto_3
    return v0

    :cond_0
    aget-object v0, v5, v4

    const-string v6, "AES"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Algorithm unknown: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v3

    goto :goto_2

    :cond_2
    aget-object v6, v5, v1

    const-string v7, "CBC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "BlockMode unknown: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v3

    goto :goto_2

    :cond_4
    aget-object v6, v5, v2

    const-string v7, "PKCS5Padding"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v5, 0x2

    or-int/2addr v0, v5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "PaddingMode unknown: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v3

    goto :goto_2

    :cond_6
    iget v0, p0, Lkq;->f:I

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_8

    new-instance v0, Lkp;

    invoke-direct {v0, p1}, Lkp;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkq;->a:Lko;

    :cond_7
    :goto_4
    move v0, v4

    goto :goto_3

    :cond_8
    iget v0, p0, Lkq;->f:I

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_7

    new-instance v0, Lkn;

    invoke-direct {v0, p1}, Lkn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkq;->a:Lko;

    goto :goto_4
.end method

.method private c()I
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/16 v1, -0xd

    const/4 v6, 0x0

    iget-object v2, p0, Lkq;->k:Lkq$a;

    invoke-virtual {v2}, Lkq$a;->a()[B

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lkq;->h:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v2, p0, Lkq;->k:Lkq$a;

    iget-byte v2, v2, Lkq$a;->d:B

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->c:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    :goto_0
    iget-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->c:[B

    const/4 v4, 0x0

    const/16 v5, 0x3c8

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->k:Lkq$a;

    iget-wide v3, v3, Lkq$a;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->c:[B

    const/16 v4, 0x3c8

    iget v5, p0, Lkq;->e:I

    add-int/lit16 v5, v5, -0x3c8

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    :try_start_1
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lkq;->b:[B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lkq;->k:Lkq$a;

    iget-byte v0, v0, Lkq$a;->d:B

    if-ne v0, v7, :cond_3

    iget v0, p0, Lkq;->d:I

    int-to-long v2, v0

    :goto_2
    invoke-virtual {v4, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_3
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    iput-object v6, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lkq;->k:Lkq$a;

    iget-wide v2, v0, Lkq$a;->i:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_5
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_5

    :try_start_6
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    iput-object v6, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    :cond_5
    const/16 v0, -0xf

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    :goto_7
    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_7

    :try_start_8
    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    iput-object v6, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    :cond_7
    throw v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_4
.end method

.method private d()I
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->h:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lkq;->k:Lkq$a;

    iget-byte v1, v1, Lkq$a;->d:B

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->b:[B

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    :try_start_1
    iget v3, p0, Lkq;->d:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    iget-object v3, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :goto_2
    iput-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    :cond_1
    :goto_3
    return v0

    :cond_2
    :try_start_4
    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->b:[B

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->k:Lkq$a;

    iget-wide v3, v3, Lkq$a;->i:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v1

    :try_start_5
    iget-object v3, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_5
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_4

    :try_start_7
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_6
    iput-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    :cond_4
    const/16 v0, -0xd

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_8
    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_6

    :try_start_9
    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    iput-object v2, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    :cond_6
    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v0, v2

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lkq;->h:Ljava/io/File;

    iput v2, p0, Lkq;->f:I

    iget-object v1, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decrypt input file not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-direct {p0, v1}, Lkq;->b(Ljava/lang/String;)I

    iget v1, p0, Lkq;->f:I

    invoke-direct {p0, v1}, Lkq;->b(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lkq;->a:Lko;

    invoke-virtual {v1}, Lko;->a()I

    move-result v1

    invoke-static {}, Lks;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lks;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lkq;->a(Ljava/lang/String;[B)I

    iget-object v3, p0, Lkq;->g:[B

    iget-object v4, p0, Lkq;->k:Lkq$a;

    iget-object v4, v4, Lkq$a;->g:[B

    invoke-static {v3, v4}, Lkq;->a([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lkq;->k:Lkq$a;

    iget-byte v3, v3, Lkq$a;->d:B

    if-ne v3, v7, :cond_6

    iget-object v1, p0, Lkq;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v1, p0, Lkq;->k:Lkq$a;

    iget-wide v5, v1, Lkq$a;->h:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, p0, Lkq;->e:I

    iput v0, p0, Lkq;->d:I

    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lkq;->h:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lkq;->k:Lkq$a;

    iget-wide v3, v1, Lkq$a;->h:J

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v0, p0, Lkq;->e:I

    new-array v0, v0, [B

    iput-object v0, p0, Lkq;->c:[B

    iget-object v0, p0, Lkq;->k:Lkq$a;

    iget-byte v0, v0, Lkq$a;->d:B

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lkq;->c:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lkq;->c:[B

    array-length v4, v4

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    :goto_2
    iget-object v0, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lkq;->a:Lko;

    iget-object v1, p0, Lkq;->c:[B

    invoke-virtual {v0, v1}, Lko;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lkq;->b:[B

    iget-object v0, p0, Lkq;->b:[B

    if-nez v0, :cond_8

    sget-object v0, Lkq;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lkq;->a:Lko;

    invoke-virtual {v1}, Lko;->b()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkq;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lkq;->a:Lko;

    invoke-virtual {v1}, Lko;->b()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lkq;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lkq;->a:Lko;

    invoke-virtual {v1}, Lko;->b()Ljava/security/Key;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lkq;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v4, p0, Lkq;->a:Lko;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    invoke-virtual {v4, v0}, Lko;->a(Ljava/security/Key;)V

    iget-object v0, p0, Lkq;->a:Lko;

    iget-object v1, p0, Lkq;->c:[B

    invoke-virtual {v0, v1}, Lko;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lkq;->b:[B

    iget-object v0, p0, Lkq;->b:[B

    if-eqz v0, :cond_4

    :cond_5
    iget-object v0, p0, Lkq;->b:[B

    if-nez v0, :cond_8

    const/16 v0, -0xb

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x400

    iput v0, p0, Lkq;->d:I

    iget v0, p0, Lkq;->d:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    iput v0, p0, Lkq;->e:I

    goto/16 :goto_1

    :cond_7
    :try_start_1
    iget-object v0, p0, Lkq;->k:Lkq$a;

    iget-wide v0, v0, Lkq$a;->h:J

    long-to-int v0, v0

    rsub-int v0, v0, 0x400

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->c:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->k:Lkq$a;

    iget-wide v3, v3, Lkq$a;->i:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lkq;->i:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkq;->c:[B

    iget v4, p0, Lkq;->e:I

    sub-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lkq;->b:[B

    array-length v0, v0

    iput v0, p0, Lkq;->d:I

    move v0, v2

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lkq;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lkq;->d()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lkq;->j:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lkq;->h:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lkq;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lk;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v0, ""

    iput-object v0, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lkq;->c()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v0, ""

    iput-object v0, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    const/16 v0, -0xe

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v0, ""

    iput-object v0, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    const/16 v0, -0x64

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v1, ""

    iput-object v1, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3}, Lkq;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x7

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkq;->c()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p2, p0, Lkq;->j:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lkq;->h:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lkq;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lk;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v0, ""

    iput-object v0, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lkq;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v0, ""

    iput-object v0, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    const/16 v0, -0xe

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v0, ""

    iput-object v0, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    const/16 v0, -0x64

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lkq;->k:Lkq$a;

    const-string v1, ""

    iput-object v1, p0, Lkq;->j:Ljava/lang/String;

    iput-object v3, p0, Lkq;->h:Ljava/io/File;

    throw v0
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lkq;->b:[B

    return-object v0
.end method

.method public final b()Lkq$a;
    .locals 1

    iget-object v0, p0, Lkq;->k:Lkq$a;

    return-object v0
.end method
