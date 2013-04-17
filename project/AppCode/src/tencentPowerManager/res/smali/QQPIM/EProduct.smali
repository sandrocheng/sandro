.class public final LQQPIM/EProduct;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EP_AppAssistant:LQQPIM/EProduct;

.field public static final EP_BenchMark:LQQPIM/EProduct;

.field public static final EP_END:LQQPIM/EProduct;

.field public static final EP_KingRoot:LQQPIM/EProduct;

.field public static final EP_KingUser:LQQPIM/EProduct;

.field public static final EP_King_SuperUser:LQQPIM/EProduct;

.field public static final EP_MobileQQ_Secure:LQQPIM/EProduct;

.field public static final EP_None:LQQPIM/EProduct;

.field public static final EP_Phonebook:LQQPIM/EProduct;

.field public static final EP_PhonebookPro:LQQPIM/EProduct;

.field public static final EP_Phonebook_Eng:LQQPIM/EProduct;

.field public static final EP_Pim:LQQPIM/EProduct;

.field public static final EP_Pim_Eng:LQQPIM/EProduct;

.field public static final EP_Pim_Jailbreak:LQQPIM/EProduct;

.field public static final EP_Pim_Pro:LQQPIM/EProduct;

.field public static final EP_PowerManager:LQQPIM/EProduct;

.field public static final EP_QQBrowse_Secure:LQQPIM/EProduct;

.field public static final EP_QQPhonebook:LQQPIM/EProduct;

.field public static final EP_QZone:LQQPIM/EProduct;

.field public static final EP_SMS_Fraud_Killer:LQQPIM/EProduct;

.field public static final EP_Secure:LQQPIM/EProduct;

.field public static final EP_SecurePro_Enhance:LQQPIM/EProduct;

.field public static final EP_Secure_Eng:LQQPIM/EProduct;

.field public static final EP_Secure_Jailbreak:LQQPIM/EProduct;

.field public static final EP_Secure_SDK:LQQPIM/EProduct;

.field public static final EP_Secure_SDK_Ign:LQQPIM/EProduct;

.field public static final EP_Secure_SDK_Pay:LQQPIM/EProduct;

.field public static final EP_Tracker:LQQPIM/EProduct;

.field public static final EP_WBlog:LQQPIM/EProduct;

.field public static final EP_XiaoYou:LQQPIM/EProduct;

.field private static __values:[LQQPIM/EProduct;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EProduct;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EProduct;->$assertionsDisabled:Z

    const/16 v0, 0x1e

    new-array v0, v0, [LQQPIM/EProduct;

    sput-object v0, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const-string v3, "EP_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_None:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const-string v2, "EP_Secure"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Secure:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const-string v1, "EP_Phonebook"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Phonebook:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const-string v1, "EP_Pim"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Pim:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const-string v1, "EP_QQPhonebook"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_QQPhonebook:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EP_QZone"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_QZone:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EP_MobileQQ_Secure"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_MobileQQ_Secure:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EP_QQBrowse_Secure"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_QQBrowse_Secure:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EP_XiaoYou"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_XiaoYou:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EP_Secure_Eng"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Secure_Eng:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "EP_WBlog"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_WBlog:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "EP_Phonebook_Eng"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Phonebook_Eng:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "EP_AppAssistant"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_AppAssistant:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0xd

    const/16 v2, 0xd

    const-string v3, "EP_Secure_SDK"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Secure_SDK:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0xe

    const/16 v2, 0xe

    const-string v3, "EP_KingRoot"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_KingRoot:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0xf

    const/16 v2, 0xf

    const-string v3, "EP_Secure_SDK_Pay"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Secure_SDK_Pay:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const-string v3, "EP_Secure_Jailbreak"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Secure_Jailbreak:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x11

    const/16 v2, 0x11

    const-string v3, "EP_KingUser"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_KingUser:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x12

    const/16 v2, 0x12

    const-string v3, "EP_Pim_Pro"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Pim_Pro:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x13

    const/16 v2, 0x13

    const-string v3, "EP_Pim_Jailbreak"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Pim_Jailbreak:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-string v3, "EP_PhonebookPro"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_PhonebookPro:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x15

    const/16 v2, 0x15

    const-string v3, "EP_PowerManager"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_PowerManager:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "EP_BenchMark"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_BenchMark:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "EP_SecurePro_Enhance"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_SecurePro_Enhance:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "EP_Pim_Eng"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Pim_Eng:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "EP_SMS_Fraud_Killer"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_SMS_Fraud_Killer:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "EP_King_SuperUser"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_King_SuperUser:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "EP_Secure_SDK_Ign"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Secure_SDK_Ign:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "EP_Tracker"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_Tracker:LQQPIM/EProduct;

    new-instance v0, LQQPIM/EProduct;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    const-string v3, "EP_END"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EProduct;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EProduct;->EP_END:LQQPIM/EProduct;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/EProduct;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EProduct;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EProduct;->__value:I

    sget-object v0, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EProduct;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EProduct;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EProduct;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LQQPIM/EProduct;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EProduct;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EProduct;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EProduct;->__values:[LQQPIM/EProduct;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/EProduct;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EProduct;->__value:I

    return v0
.end method
