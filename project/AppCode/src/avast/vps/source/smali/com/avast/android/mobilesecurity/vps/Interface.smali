.class public Lcom/avast/android/mobilesecurity/vps/Interface;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Ljava/util/HashSet;

.field private static final c:Ljava/lang/String;

.field private static final d:Z

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/util/Date;

.field private static final s:I


# instance fields
.field private final t:Ljava/lang/Object;

.field private final u:Ljava/util/concurrent/Semaphore;

.field private v:Lcom/avast/android/mobilesecurity/vps/d;

.field private w:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v3, 0x9

    const/4 v2, 0x4

    const-string v0, "i-2"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/vps/Interface;->d:Z

    const-string v0, "avast!"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->e:Ljava/lang/String;

    const-string v0, "stmp"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->h:Ljava/lang/String;

    const-string v0, "dtmp"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->f:Ljava/lang/String;

    const-string v0, "atmp"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->g:Ljava/lang/String;

    const-string v0, "db_dex.dat"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->i:Ljava/lang/String;

    const-string v0, "db_dex.nam"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->j:Ljava/lang/String;

    const-string v0, "db_elfa.dat"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->k:Ljava/lang/String;

    const-string v0, "db_elfa.nam"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->l:Ljava/lang/String;

    sput v2, Lcom/avast/android/mobilesecurity/vps/Interface;->m:I

    const/16 v0, 0x3e8

    sput v0, Lcom/avast/android/mobilesecurity/vps/Interface;->n:I

    const/16 v0, 0x114b

    sput v0, Lcom/avast/android/mobilesecurity/vps/Interface;->o:I

    const/16 v0, 0x69

    sput v0, Lcom/avast/android/mobilesecurity/vps/Interface;->p:I

    const-string v0, "130509-00"

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->q:Ljava/lang/String;

    const-string v0, "GMT+1"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x7dd

    const/4 v5, 0x2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->r:Ljava/util/Date;

    const/high16 v0, 0x80

    sput v0, Lcom/avast/android/mobilesecurity/vps/Interface;->s:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->a:Ljava/util/HashSet;

    const-string v1, "ADS:"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->b:Ljava/util/HashSet;

    const-string v1, "Android:"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->b:Ljava/util/HashSet;

    const-string v1, "Elf:"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "storage"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->w:Ljava/util/zip/ZipFile;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/util/zip/ZipFile;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/util/zip/ZipFile;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->t:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v6, v7}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->u:Ljava/util/concurrent/Semaphore;

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_3
    move-exception v0

    :try_start_7
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_4
    move-exception v0

    :try_start_9
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :try_start_a
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    :catch_5
    move-exception v0

    :try_start_b
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_6
    :try_start_c
    new-instance v1, Lcom/avast/android/mobilesecurity/vps/d;

    invoke-direct {v1, v2}, Lcom/avast/android/mobilesecurity/vps/d;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->v:Lcom/avast/android/mobilesecurity/vps/d;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/a;->a(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_6

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->t:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->u:Ljava/util/concurrent/Semaphore;

    return-void

    :catch_6
    move-exception v0

    :try_start_d
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method private static a(Ljava/util/zip/ZipFile;)Ljava/security/cert/X509Certificate;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    move-object v0, v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "META-INF/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".RSA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "X509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->w:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->w:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->w:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v3, 0x400

    :try_start_1
    new-array v3, v3, [B

    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;ZZ)[B
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/avast/android/mobilesecurity/vps/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_1

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :goto_0
    if-eqz p1, :cond_2

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->b:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-static {p0, v0, v1, p1}, Lcom/avast/android/mobilesecurity/vps/e;->a(Ljava/util/List;Ljava/util/HashSet;Ljava/util/HashSet;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/e;->a(Ljava/util/List;)[B

    move-result-object v0

    goto :goto_2
.end method

.method private getData(S)[B
    .locals 2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c;->e:[I

    invoke-static {p1}, Lcom/avast/android/mobilesecurity/vps/b/g;->a(S)Lcom/avast/android/mobilesecurity/vps/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/b/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public native acquireScanContextJni()I
.end method

.method public acquireVpsContext(Ljava/util/Map;)[B
    .locals 5

    const/4 v4, -0x1

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/Integer;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/d;->d:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/vps/Interface;->acquireScanContextJni()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->u:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/vps/Interface;->acquireScanContextJni()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "avc error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/avast/android/mobilesecurity/vps/Interface;->d:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->e:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public checkUrl(Ljava/util/Map;)[B
    .locals 3

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/m;->a:Lcom/avast/android/mobilesecurity/vps/b/m;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/m;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/c;->d:[I

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/vps/Interface;->preCheckUrlJni()I

    move-result v2

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/vps/d/a;->a(I)Lcom/avast/android/mobilesecurity/vps/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/d/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/d;->b:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/vps/Interface;->checkUrlJni(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/v;->a:Lcom/avast/android/mobilesecurity/vps/b/v;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/w;->d:Lcom/avast/android/mobilesecurity/vps/b/w;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/b/w;->a()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/b/b;->a(Ljava/util/Map;)[B

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public native checkUrlJni(Ljava/lang/String;I)[B
.end method

.method public containsLibrary(Ljava/util/Map;)[B
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/avast/android/mobilesecurity/vps/Interface;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v4, Lcom/avast/android/mobilesecurity/vps/b/p;->a:Lcom/avast/android/mobilesecurity/vps/b/p;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/vps/b/p;->a()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public getAdvertisementCampaignInfo(Ljava/util/Map;)[B
    .locals 7

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/d;->c:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/d;->d:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/d;->b:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/c;->a:Lcom/avast/android/mobilesecurity/vps/b/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/b/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/c;->b:Lcom/avast/android/mobilesecurity/vps/b/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/avast/android/mobilesecurity/vps/b/c;->c:Lcom/avast/android/mobilesecurity/vps/b/c;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/vps/b/c;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/avast/android/mobilesecurity/vps/b/c;->d:Lcom/avast/android/mobilesecurity/vps/b/c;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/vps/b/c;->a()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/avast/android/mobilesecurity/vps/b/c;->e:Lcom/avast/android/mobilesecurity/vps/b/c;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/vps/b/c;->a()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    sget-object v6, Lcom/avast/android/mobilesecurity/vps/b/c;->f:Lcom/avast/android/mobilesecurity/vps/b/c;

    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/vps/b/c;->a()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v0, v2, v3, v4}, Lcom/avast/android/mobilesecurity/vps/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDetectionPrefixes(Ljava/util/Map;)[B
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/f;->a:Lcom/avast/android/mobilesecurity/vps/b/f;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/f;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->a:Ljava/util/HashSet;

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "malware"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->b:Ljava/util/HashSet;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v5, v0, [[B

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v6, v0

    add-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v6, -0x4

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/avast/android/mobilesecurity/vps/b/q;->a:Lcom/avast/android/mobilesecurity/vps/b/q;

    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/vps/b/q;->a()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v2

    move v1, v2

    :goto_3
    array-length v3, v5

    if-ge v0, v3, :cond_3

    aget-object v3, v5, v0

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    new-array v3, v1, [B

    move v0, v2

    move v1, v2

    :goto_4
    array-length v4, v5

    if-ge v0, v4, :cond_4

    aget-object v4, v5, v0

    aget-object v6, v5, v0

    array-length v6, v6

    invoke-static {v4, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v5, v0

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move-object v0, v3

    goto/16 :goto_1

    :cond_5
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public getVersion(Ljava/util/Map;)[B
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getVpsInformation(Ljava/util/Map;)[B
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->g:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget v2, Lcom/avast/android/mobilesecurity/vps/Interface;->o:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->h:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget v2, Lcom/avast/android/mobilesecurity/vps/Interface;->p:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->a:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->b:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->r:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->c:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->r:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->d:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->r:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->e:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->r:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/x;->f:Lcom/avast/android/mobilesecurity/vps/b/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/Interface;->r:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/b/b;->a(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public optionOverride(Ljava/util/Map;)[B
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/d;->a:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v1, Lcom/avast/android/mobilesecurity/vps/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/b/i;->a(S)Lcom/avast/android/mobilesecurity/vps/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/i;->ordinal()I

    goto :goto_0
.end method

.method public native preCheckUrlJni()I
.end method

.method public native preScanJni(I[BI)I
.end method

.method public native releaseScanContextJni(I)V
.end method

.method public releaseVpsContext(Ljava/util/Map;)[B
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/d;->d:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/vps/Interface;->releaseScanContextJni(I)V

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/vps/Interface;->u:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/g;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public scan(Ljava/util/Map;)[B
    .locals 24

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/d;->d:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/Integer;

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/d;->b:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    if-nez v10, :cond_2

    :cond_0
    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/d;->c:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/content/Context;

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/l;->a:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/io/File;

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/l;->d:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/l;->b:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/l;->e:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-object v4, Lcom/avast/android/mobilesecurity/vps/b/l;->i:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/Boolean;

    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x20

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x40

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v6, v14, v16

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    :cond_3
    move/from16 v18, v6

    move/from16 v19, v4

    if-eqz v12, :cond_27

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v12, v3}, Lcom/avast/android/mobilesecurity/vps/g;->a(Ljava/io/File;I)[B

    move-result-object v3

    move-object v4, v3

    :goto_3
    if-nez v4, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/avast/android/mobilesecurity/vps/Interface;->scanJni(I[BILjava/lang/String;I)[B

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    sget-object v6, Lcom/avast/android/mobilesecurity/vps/c;->c:[I

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    array-length v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v14}, Lcom/avast/android/mobilesecurity/vps/Interface;->preScanJni(I[BI)I

    move-result v4

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/vps/d/b;->a(I)Lcom/avast/android/mobilesecurity/vps/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/vps/d/b;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_0

    move-object/from16 v17, v3

    :goto_4
    if-eqz v7, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    const-string v8, "androidmanifest.xml"

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_9
    if-eqz v5, :cond_15

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->d:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :pswitch_0
    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :pswitch_1
    if-eqz v5, :cond_a

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    array-length v6, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/avast/android/mobilesecurity/vps/Interface;->scanJni(I[BILjava/lang/String;I)[B

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    sget-object v4, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    new-instance v14, Lcom/avast/android/mobilesecurity/vps/d/c;

    invoke-direct {v14}, Lcom/avast/android/mobilesecurity/vps/d/c;-><init>()V

    sget-object v4, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    iput-object v4, v14, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    new-instance v16, Lcom/avast/android/mobilesecurity/vps/g;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/avast/android/mobilesecurity/vps/g;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/avast/android/mobilesecurity/vps/g;->b(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/avast/android/mobilesecurity/vps/g;->g()V

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->d:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    move-object v14, v4

    move v3, v15

    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/avast/android/mobilesecurity/vps/g;->e()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/avast/android/mobilesecurity/vps/g;->b()[B

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/avast/android/mobilesecurity/vps/g;->c()I

    move-result v6

    add-int v4, v3, v6

    sget v8, Lcom/avast/android/mobilesecurity/vps/Interface;->s:I

    if-le v4, v8, :cond_d

    sget v4, Lcom/avast/android/mobilesecurity/vps/Interface;->s:I

    sub-int v6, v4, v3

    :cond_d
    add-int v15, v3, v6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/avast/android/mobilesecurity/vps/Interface;->scanJni(I[BILjava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a([B)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_11

    const/4 v3, 0x0

    move v5, v3

    move-object v4, v14

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_12

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avast/android/mobilesecurity/vps/d/c;

    if-eqz v3, :cond_e

    iget-object v8, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    if-eqz v8, :cond_e

    sget-object v8, Lcom/avast/android/mobilesecurity/vps/c;->b:[I

    iget-object v14, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-virtual {v14}, Lcom/avast/android/mobilesecurity/vps/b/u;->ordinal()I

    move-result v14

    aget v8, v8, v14

    packed-switch v8, :pswitch_data_1

    :cond_e
    move-object v3, v4

    :goto_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    goto :goto_6

    :pswitch_2
    iget-object v4, v4, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    iget-object v8, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v4, v8}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;Lcom/avast/android/mobilesecurity/vps/b/u;)I

    move-result v4

    if-gez v4, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    :cond_f
    iget-object v4, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->c:[B

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v3

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :pswitch_3
    :try_start_2
    iget-object v4, v4, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    iget-object v8, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v4, v8}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;Lcom/avast/android/mobilesecurity/vps/b/u;)I

    move-result v4

    if-gez v4, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    :cond_10
    iget-object v4, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->c:[B

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    move-object v4, v14

    :cond_12
    sget v3, Lcom/avast/android/mobilesecurity/vps/Interface;->s:I

    if-lt v15, v3, :cond_b

    :cond_13
    invoke-virtual/range {v16 .. v16}, Lcom/avast/android/mobilesecurity/vps/g;->g()V

    if-eqz v19, :cond_14

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/Interface;->q:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v11, v12, v0, v1, v3}, Lcom/avast/android/mobilesecurity/vps/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/util/List;ZZ)[B
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto/16 :goto_0

    :pswitch_4
    const-string v3, ""

    :pswitch_5
    if-nez v3, :cond_26

    const-string v3, "dex"

    move-object/from16 v17, v3

    goto/16 :goto_4

    :catch_1
    move-exception v3

    const/4 v3, 0x1

    goto/16 :goto_5

    :catch_2
    move-exception v3

    const/4 v3, 0x1

    goto/16 :goto_5

    :catch_3
    move-exception v3

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_15
    :try_start_3
    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    new-instance v4, Lcom/avast/android/mobilesecurity/vps/d/c;

    invoke-direct {v4}, Lcom/avast/android/mobilesecurity/vps/d/c;-><init>()V

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    iput-object v3, v4, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Lcom/avast/android/mobilesecurity/vps/g;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/avast/android/mobilesecurity/vps/g;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/avast/android/mobilesecurity/vps/g;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->g()V

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->d:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v3

    goto/16 :goto_0

    :catch_4
    move-exception v3

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->g()V

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/vps/g;->a(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->f()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->g()V

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->b:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x0

    move/from16 v23, v3

    move-object v3, v4

    move/from16 v4, v23

    :goto_8
    if-eqz v5, :cond_1f

    add-int/lit8 v16, v4, 0x1

    sget v4, Lcom/avast/android/mobilesecurity/vps/Interface;->n:I

    rem-int v4, v16, v4

    if-nez v4, :cond_18

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_18
    sget-object v4, Lcom/avast/android/mobilesecurity/vps/c;->c:[I

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->d()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/avast/android/mobilesecurity/vps/Interface;->preScanJni(I[BI)I

    move-result v5

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/vps/d/b;->a(I)Lcom/avast/android/mobilesecurity/vps/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/vps/d/b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    :cond_19
    :goto_9
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/vps/g;->a(Ljava/lang/String;)[B

    move-result-object v4

    move-object v5, v4

    move/from16 v4, v16

    goto :goto_8

    :pswitch_6
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/vps/g;->a(Ljava/lang/String;)[B

    move-result-object v4

    move-object v5, v4

    move/from16 v4, v16

    goto :goto_8

    :pswitch_7
    const/4 v4, 0x0

    move-object v14, v3

    move v3, v4

    :goto_a
    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->e()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->a()[B

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->c()I

    move-result v6

    add-int v4, v3, v6

    sget v8, Lcom/avast/android/mobilesecurity/vps/Interface;->s:I

    if-le v4, v8, :cond_1a

    sget v4, Lcom/avast/android/mobilesecurity/vps/Interface;->s:I

    sub-int v6, v4, v3

    :cond_1a
    add-int v15, v3, v6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/avast/android/mobilesecurity/vps/Interface;->scanJni(I[BILjava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a([B)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_24

    const/4 v3, 0x0

    move v5, v3

    move-object v4, v14

    :goto_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_1e

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avast/android/mobilesecurity/vps/d/c;

    if-eqz v3, :cond_1b

    iget-object v8, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    if-eqz v8, :cond_1b

    sget-object v8, Lcom/avast/android/mobilesecurity/vps/c;->b:[I

    iget-object v14, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-virtual {v14}, Lcom/avast/android/mobilesecurity/vps/b/u;->ordinal()I

    move-result v14

    aget v8, v8, v14

    packed-switch v8, :pswitch_data_3

    :cond_1b
    move-object v3, v4

    :goto_c
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    goto :goto_b

    :pswitch_8
    iget-object v4, v4, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    iget-object v8, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v4, v8}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;Lcom/avast/android/mobilesecurity/vps/b/u;)I

    move-result v4

    if-gez v4, :cond_1c

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    :cond_1c
    iget-object v4, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->c:[B

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_c

    :catch_5
    move-exception v3

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/u;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;)[B

    move-result-object v3

    goto/16 :goto_0

    :pswitch_9
    :try_start_6
    iget-object v4, v4, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    iget-object v8, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-static {v4, v8}, Lcom/avast/android/mobilesecurity/vps/e;->a(Lcom/avast/android/mobilesecurity/vps/b/u;Lcom/avast/android/mobilesecurity/vps/b/u;)I

    move-result v4

    if-gez v4, :cond_1d

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    :cond_1d
    iget-object v4, v3, Lcom/avast/android/mobilesecurity/vps/d/c;->c:[B

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1e
    move-object v3, v4

    :goto_d
    sget v4, Lcom/avast/android/mobilesecurity/vps/Interface;->s:I

    if-ge v15, v4, :cond_19

    move-object v14, v3

    move v3, v15

    goto/16 :goto_a

    :cond_1f
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->g()V

    if-eqz v19, :cond_20

    if-eqz v13, :cond_20

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/Interface;->q:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v11, v12, v0, v1, v3}, Lcom/avast/android/mobilesecurity/vps/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    :cond_20
    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/util/List;ZZ)[B

    move-result-object v3

    goto/16 :goto_0

    :cond_21
    invoke-virtual/range {v22 .. v22}, Lcom/avast/android/mobilesecurity/vps/g;->g()V

    if-eqz v19, :cond_22

    if-eqz v13, :cond_22

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/Interface;->q:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v11, v12, v0, v1, v3}, Lcom/avast/android/mobilesecurity/vps/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/vps/Interface;->a(Ljava/util/List;ZZ)[B
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v3

    goto/16 :goto_0

    :cond_23
    move-object v3, v14

    goto/16 :goto_9

    :cond_24
    move-object v3, v14

    goto :goto_d

    :cond_25
    move v3, v4

    goto/16 :goto_5

    :cond_26
    move-object/from16 v17, v3

    goto/16 :goto_4

    :cond_27
    move-object v4, v5

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public native scanJni(I[BILjava/lang/String;I)[B
.end method

.method public scanMessage(Ljava/util/Map;)[B
    .locals 3

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/d;->d:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/d;->b:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/r;->a:Lcom/avast/android/mobilesecurity/vps/b/r;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/s;->a:Lcom/avast/android/mobilesecurity/vps/b/s;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/b/s;->a()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/b/b;->a(Ljava/util/Map;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->a:Lcom/avast/android/mobilesecurity/vps/b/k;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/k;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/h;->a:Lcom/avast/android/mobilesecurity/vps/b/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/b/h;->a(S)Lcom/avast/android/mobilesecurity/vps/b/h;

    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->b:Lcom/avast/android/mobilesecurity/vps/b/k;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/k;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->c:Lcom/avast/android/mobilesecurity/vps/b/k;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/k;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->d:Lcom/avast/android/mobilesecurity/vps/b/k;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/k;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/k;->e:Lcom/avast/android/mobilesecurity/vps/b/k;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/k;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/r;->a:Lcom/avast/android/mobilesecurity/vps/b/r;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/s;->g:Lcom/avast/android/mobilesecurity/vps/b/s;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/b/s;->a()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/b/b;->a(Ljava/util/Map;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public unloadVps(Ljava/util/Map;)[B
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/d;->c:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateActionOnInfectedFile(Ljava/util/Map;)[B
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/d;->c:Lcom/avast/android/mobilesecurity/vps/b/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/d;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/e;->c:Lcom/avast/android/mobilesecurity/vps/b/e;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/b/e;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/e;->a:Lcom/avast/android/mobilesecurity/vps/b/e;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/b/e;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/b/e;->b:Lcom/avast/android/mobilesecurity/vps/b/e;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/vps/b/e;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/vps/b/a;->a(S)Lcom/avast/android/mobilesecurity/vps/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v2, v3, v1}, Lcom/avast/android/mobilesecurity/vps/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/vps/b/a;)V

    goto :goto_0
.end method
