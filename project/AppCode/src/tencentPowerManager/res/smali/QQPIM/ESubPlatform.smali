.class public final LQQPIM/ESubPlatform;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ESP_Android_General:LQQPIM/ESubPlatform;

.field public static final ESP_Android_HD:LQQPIM/ESubPlatform;

.field public static final ESP_Android_Pad:LQQPIM/ESubPlatform;

.field public static final ESP_BB_General:LQQPIM/ESubPlatform;

.field public static final ESP_END:LQQPIM/ESubPlatform;

.field public static final ESP_Ipad:LQQPIM/ESubPlatform;

.field public static final ESP_Iphone_General:LQQPIM/ESubPlatform;

.field public static final ESP_Ipod:LQQPIM/ESubPlatform;

.field public static final ESP_Kjava_General:LQQPIM/ESubPlatform;

.field public static final ESP_MTK_General:LQQPIM/ESubPlatform;

.field public static final ESP_NK_Kjava_General:LQQPIM/ESubPlatform;

.field public static final ESP_NONE:LQQPIM/ESubPlatform;

.field public static final ESP_PC_WindowsGeneral:LQQPIM/ESubPlatform;

.field public static final ESP_Server_General:LQQPIM/ESubPlatform;

.field public static final ESP_Symbian_3:LQQPIM/ESubPlatform;

.field public static final ESP_Symbian_V2:LQQPIM/ESubPlatform;

.field public static final ESP_Symbian_V3:LQQPIM/ESubPlatform;

.field public static final ESP_Symbian_V5:LQQPIM/ESubPlatform;

.field public static final ESP_WinPhone_General:LQQPIM/ESubPlatform;

.field public static final ESP_WinPhone_Tablet:LQQPIM/ESubPlatform;

.field private static __values:[LQQPIM/ESubPlatform;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/ESubPlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ESubPlatform;->$assertionsDisabled:Z

    const/16 v0, 0x14

    new-array v0, v0, [LQQPIM/ESubPlatform;

    sput-object v0, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const-string v3, "ESP_NONE"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_NONE:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v2, 0x65

    const-string v3, "ESP_Symbian_V3"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Symbian_V3:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x2

    const/16 v2, 0x66

    const-string v3, "ESP_Symbian_V5"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Symbian_V5:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x3

    const/16 v2, 0x67

    const-string v3, "ESP_Symbian_V2"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Symbian_V2:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x4

    const/16 v2, 0x68

    const-string v3, "ESP_Symbian_3"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Symbian_3:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x5

    const/16 v2, 0xc9

    const-string v3, "ESP_Android_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Android_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x6

    const/16 v2, 0xca

    const-string v3, "ESP_Android_Pad"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Android_Pad:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/4 v1, 0x7

    const/16 v2, 0xcb

    const-string v3, "ESP_Android_HD"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Android_HD:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0x8

    const/16 v2, 0x12d

    const-string v3, "ESP_Iphone_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Iphone_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0x9

    const/16 v2, 0x12e

    const-string v3, "ESP_Ipad"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Ipad:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0xa

    const/16 v2, 0x12f

    const-string v3, "ESP_Ipod"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Ipod:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0xb

    const/16 v2, 0x191

    const-string v3, "ESP_Kjava_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Kjava_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0xc

    const/16 v2, 0x192

    const-string v3, "ESP_NK_Kjava_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_NK_Kjava_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0xd

    const/16 v2, 0x1f5

    const-string v3, "ESP_Server_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_Server_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0xe

    const/16 v2, 0x259

    const-string v3, "ESP_WinPhone_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_WinPhone_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0xf

    const/16 v2, 0x25a

    const-string v3, "ESP_WinPhone_Tablet"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_WinPhone_Tablet:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0x10

    const/16 v2, 0x2bd

    const-string v3, "ESP_MTK_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_MTK_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0x11

    const/16 v2, 0x321

    const-string v3, "ESP_BB_General"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_BB_General:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0x12

    const/16 v2, 0x385

    const-string v3, "ESP_PC_WindowsGeneral"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_PC_WindowsGeneral:LQQPIM/ESubPlatform;

    new-instance v0, LQQPIM/ESubPlatform;

    const/16 v1, 0x13

    const/16 v2, 0x386

    const-string v3, "ESP_END"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESubPlatform;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESubPlatform;->ESP_END:LQQPIM/ESubPlatform;

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

    iput-object v0, p0, LQQPIM/ESubPlatform;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ESubPlatform;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ESubPlatform;->__value:I

    sget-object v0, LQQPIM/ESubPlatform;->__values:[LQQPIM/ESubPlatform;

    aput-object p0, v0, p1

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ESubPlatform;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ESubPlatform;->__value:I

    return v0
.end method
