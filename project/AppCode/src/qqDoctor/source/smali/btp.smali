.class public final Lbtp;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtp$a;
    }
.end annotation


# static fields
.field private static final f:[C


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

.field private c:Lbtt;

.field private d:Lcom/tencent/lbsapi/QLBSService;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lbtp;->f:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbtp;->e:Landroid/os/Handler;

    return-void
.end method

.method private static a(C)B
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lbtp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbtp;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;Lbtp$a;)Lbtp$a;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    iput v10, p2, Lbtp$a;->b:I

    iput-boolean v11, p2, Lbtp$a;->c:Z

    const-string v0, "QSAT#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    add-int/lit8 v0, v0, 0x5

    const-string v2, "[tencent]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    new-array v0, v1, [B

    :goto_2
    invoke-static {}, Lbtp;->d()[B

    move-result-object v4

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    const/16 v6, 0x10

    new-array v6, v6, [B

    array-length v7, v6

    invoke-virtual {v0, v6, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    iput-wide v7, p2, Lbtp$a;->d:J

    iget-object v0, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lbtp;->c:Lbtt;

    iget-object v7, v7, Lbtt;->a:Lbtl;

    const-string v8, "qq_num"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    if-ne v2, v3, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmp-long v0, v4, v7

    if-eqz v0, :cond_7

    :cond_3
    iput v10, p2, Lbtp$a;->b:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    move v0, v1

    :goto_4
    array-length v5, v2

    if-lt v0, v5, :cond_6

    move-object v0, v2

    goto :goto_2

    :cond_6
    shl-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5}, Lbtp;->a(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-static {v6}, Lbtp;->a(C)B

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_3

    :cond_7
    iput v10, p2, Lbtp$a;->b:I

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iput v1, p2, Lbtp$a;->b:I

    goto/16 :goto_0

    :pswitch_2
    iput v1, p2, Lbtp$a;->b:I

    goto/16 :goto_0

    :pswitch_3
    iput v11, p2, Lbtp$a;->b:I

    goto/16 :goto_0

    :pswitch_4
    const/4 v0, 0x2

    iput v0, p2, Lbtp$a;->b:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a([B)Ljava/lang/StringBuilder;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    aget-byte v3, p0, v0

    const/4 v4, 0x2

    new-array v4, v4, [C

    const/4 v5, 0x1

    sget-object v6, Lbtp;->f:[C

    and-int/lit8 v7, v3, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    ushr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    sget-object v5, Lbtp;->f:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v4, v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lbtp$a;SDD)V
    .locals 8

    const/4 v2, 0x0

    iget v0, p1, Lbtp$a;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbtp;->a(Lbtp$a;SSDD)Z

    return-void

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lbtp;Lbtp$a;)V
    .locals 8

    const/4 v7, 0x1

    const-wide/16 v3, 0x0

    iget-boolean v0, p1, Lbtp$a;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4Locating()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    invoke-direct {p0}, Lbtp;->c()Z

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v7}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    :cond_0
    new-instance v0, Lcom/tencent/lbsapi/QLBSService;

    iget-object v1, p0, Lbtp;->a:Landroid/content/Context;

    new-instance v2, Lbts;

    invoke-direct {v2, p0, p1}, Lbts;-><init>(Lbtp;Lbtp$a;)V

    const-string v3, "B1_msecure_android"

    const-string v4, "C7tLv_Yaf"

    const-string v5, "msecure_sdk_1.1"

    invoke-direct/range {v0 .. v5}, Lcom/tencent/lbsapi/QLBSService;-><init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lbtp;->d:Lcom/tencent/lbsapi/QLBSService;

    iget-object v0, p0, Lbtp;->d:Lcom/tencent/lbsapi/QLBSService;

    invoke-virtual {v0, v7}, Lcom/tencent/lbsapi/QLBSService;->setGpsEnabled(Z)V

    iget-object v0, p0, Lbtp;->d:Lcom/tencent/lbsapi/QLBSService;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/QLBSService;->startLocation()V

    return-void

    :cond_1
    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lbtp;->a(Lbtp$a;SDD)V

    goto :goto_0
.end method

.method static synthetic a(Lbtp;Lbtp$a;SDD)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lbtp;->a(Lbtp$a;SDD)V

    return-void
.end method

.method private a(Lbtp$a;SSDD)Z
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QSAT#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x34

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lbtp;->c:Lbtt;

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v4, "qq_num"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move v0, v1

    :goto_0
    array-length v6, v4

    if-lt v0, v6, :cond_1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v0, p1, Lbtp$a;->d:J

    invoke-virtual {v3, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p4, p5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p6, p7}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-static {}, Lbtp;->d()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v3, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lbtp;->a([B)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    iget-object v1, p1, Lbtp$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-le v0, v6, :cond_2

    aput-byte v1, v4, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-byte v6, v5, v0

    aput-byte v6, v4, v0

    goto :goto_1
.end method

.method static synthetic b(Lbtp;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;
    .locals 1

    iget-object v0, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    return-object v0
.end method

.method static synthetic c(Lbtp;)Lcom/tencent/lbsapi/QLBSService;
    .locals 1

    iget-object v0, p0, Lbtp;->d:Lcom/tencent/lbsapi/QLBSService;

    return-object v0
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lbtp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "custom:3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lbtp;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lbtp;)V
    .locals 1

    iget-object v0, p0, Lbtp;->d:Lcom/tencent/lbsapi/QLBSService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtp;->d:Lcom/tencent/lbsapi/QLBSService;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/QLBSService;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbtp;->d:Lcom/tencent/lbsapi/QLBSService;

    :cond_0
    return-void
.end method

.method private static d()[B
    .locals 3

    const/16 v0, 0xd

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "%#!*^().,ljhd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lbtt;
    .locals 1

    iget-object v0, p0, Lbtp;->c:Lbtt;

    return-object v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbtp;->c:Lbtt;

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v1, "qq_num"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v7

    :goto_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez v1, :cond_2

    iget-object v0, p0, Lbtp;->c:Lbtt;

    invoke-virtual {v0, v7}, Lbtt;->a(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtp;->c:Lbtt;

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v6, "helper"

    invoke-virtual {v0, v6, v8}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    iget-object v0, p0, Lbtp;->c:Lbtt;

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v6, "server_num"

    const-string v9, ""

    invoke-virtual {v0, v6, v9}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    :goto_2
    new-instance v6, Lbtp$a;

    invoke-direct {v6, p2}, Lbtp$a;-><init>(Ljava/lang/String;)V

    iput-boolean v2, v6, Lbtp$a;->c:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-direct {p0, v9, v6}, Lbtp;->a(Ljava/lang/StringBuilder;Lbtp$a;)Lbtp$a;

    move-result-object v1

    move-object v6, v1

    move v1, v5

    :goto_3
    iget v10, v6, Lbtp$a;->b:I

    if-ne v10, v5, :cond_8

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_0

    iget v0, v1, Lbtp$a;->b:I

    if-eq v0, v5, :cond_0

    iget v0, v1, Lbtp$a;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_5
    move v2, v7

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    const-string v1, "#"

    invoke-virtual {v9, v1, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_10

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v10, "#qqdeleteall#"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v1, 0xd

    invoke-virtual {v9, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_6
    iput v1, v6, Lbtp$a;->b:I

    goto :goto_3

    :cond_5
    const-string v10, "#qqlocate#"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v1, 0xa

    invoke-virtual {v9, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    goto :goto_6

    :cond_6
    const-string v10, "#qqlock#"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v1, 0x8

    invoke-virtual {v9, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v1, v7

    goto :goto_6

    :cond_7
    const-string v10, "#qqpin#"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x7

    invoke-virtual {v9, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    goto :goto_6

    :cond_8
    const/4 v10, 0x3

    if-ne v1, v10, :cond_a

    iget-object v0, p0, Lbtp;->c:Lbtt;

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v1, "helper"

    invoke-virtual {v0, v1, v8}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v1, v8

    goto :goto_4

    :cond_9
    const/4 v0, 0x5

    iput v0, v6, Lbtp$a;->b:I

    move-object v1, v6

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    move-object v1, v6

    goto :goto_4

    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbtp;->c:Lbtt;

    invoke-virtual {v1, v7}, Lbtt;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbtp;->c:Lbtt;

    invoke-virtual {v1, v2}, Lbtt;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move-object v1, v6

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x4

    iput v0, v6, Lbtp$a;->b:I

    move-object v1, v6

    goto/16 :goto_4

    :pswitch_0
    iget-boolean v0, v1, Lbtp$a;->c:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lbtp$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v2}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4DeletingData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lbtr;

    invoke-direct {v2, p0, v1}, Lbtr;-><init>(Lbtp;Lbtp$a;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x2

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lbtp;->a(Lbtp$a;SDD)V

    goto :goto_7

    :pswitch_1
    iget-object v0, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->getLockPhoneIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x1000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lbtp;->a:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-boolean v0, v1, Lbtp$a;->c:Z

    if-nez v0, :cond_f

    iget-object v0, v1, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LockPhoneSuccess()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_f
    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lbtp;->a(Lbtp$a;SDD)V

    goto/16 :goto_5

    :pswitch_2
    iget v0, v1, Lbtp$a;->b:I

    iget-object v2, p0, Lbtp;->e:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbtp;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, v1, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4GetPasswordSuccess()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, v1, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4PasswordError()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, v1, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbtp;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4GetPasswordFailed()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbtp;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_10
    move v1, v5

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final b()V
    .locals 8

    const-wide/16 v4, 0x0

    new-instance v1, Lbtp$a;

    iget-object v0, p0, Lbtp;->c:Lbtt;

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v2, "server_num"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbtp$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lbtp;->a(Lbtp$a;SSDD)Z

    return-void
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lbtp;->a:Landroid/content/Context;

    new-instance v0, Lbtt;

    invoke-direct {v0}, Lbtt;-><init>()V

    iput-object v0, p0, Lbtp;->c:Lbtt;

    new-instance v0, Lbtq;

    invoke-direct {v0, p0}, Lbtq;-><init>(Lbtp;)V

    iput-object v0, p0, Lbtp;->e:Landroid/os/Handler;

    return-void
.end method
