.class public final Lcom/tencent/tmsecure/common/TMSBootReceiver$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/common/TMSBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tmsecure/common/TMSBootReceiver$a;->a:[S

    return-void

    :array_0
    .array-data 0x2
        0x40t 0x0t
        0x4bt 0x0t
        0x48t 0x0t
        0x8t 0x0t
        0x56t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x45t 0x0t
        0x44t 0x0t
        0x1ft 0x0t
        0x1bt 0x0t
        0x1et 0x0t
        0x1t 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x50t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x50t 0x0t
        0x45t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x5ct 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/TMSBootReceiver$a;-><init>()V

    return-void
.end method

.method private static a([S)[S
    .locals 4

    array-length v0, p0

    new-array v2, v0, [S

    const/16 v1, 0x23

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    aget-short v3, p0, v0

    xor-int/2addr v3, v1

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/tmsecure/common/TMSBootReceiver$a;->a:[S

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSBootReceiver$a;->a([S)[S

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_1
    return v1

    :cond_1
    aget-short v4, v3, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
