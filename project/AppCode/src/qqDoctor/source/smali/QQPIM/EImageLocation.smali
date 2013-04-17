.class public final LQQPIM/EImageLocation;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EILOC_End:LQQPIM/EImageLocation; = null

.field public static final EILOC_None:LQQPIM/EImageLocation; = null

.field public static final EILOC_PB_Android_CloudSms_Top:LQQPIM/EImageLocation; = null

.field public static final EILOC_PB_Android_Sms_Background:LQQPIM/EImageLocation; = null

.field public static final EILOC_PB_Iphone_CloudSms_Top:LQQPIM/EImageLocation; = null

.field public static final EILOC_PB_SymbianV3_CloudSms_Top:LQQPIM/EImageLocation; = null

.field public static final EILOC_PB_SymbianV5_CloudSms_Top:LQQPIM/EImageLocation; = null

.field public static final EILOC_SEC_Android_Ads_Entry_TopRight:LQQPIM/EImageLocation; = null

.field public static final EILOC_SEC_Android_Main:LQQPIM/EImageLocation; = null

.field public static final EILOC_SEC_Iphone_Ads_Top:LQQPIM/EImageLocation; = null

.field public static final _EILOC_End:I = 0x10ce

.field public static final _EILOC_None:I = 0x0

.field public static final _EILOC_PB_Android_CloudSms_Top:I = 0x106a

.field public static final _EILOC_PB_Android_Sms_Background:I = 0x1069

.field public static final _EILOC_PB_Iphone_CloudSms_Top:I = 0x10cd

.field public static final _EILOC_PB_SymbianV3_CloudSms_Top:I = 0x1005

.field public static final _EILOC_PB_SymbianV5_CloudSms_Top:I = 0x1036

.field public static final _EILOC_SEC_Android_Ads_Entry_TopRight:I = 0x4b2

.field public static final _EILOC_SEC_Android_Main:I = 0x4b1

.field public static final _EILOC_SEC_Iphone_Ads_Top:I = 0x515

.field private static __values:[LQQPIM/EImageLocation;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EImageLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EImageLocation;->$assertionsDisabled:Z

    const/16 v0, 0xa

    new-array v0, v0, [LQQPIM/EImageLocation;

    sput-object v0, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const-string v3, "EILOC_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_None:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/16 v2, 0x4b1

    const-string v3, "EILOC_SEC_Android_Main"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_SEC_Android_Main:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/4 v1, 0x2

    const/16 v2, 0x4b2

    const-string v3, "EILOC_SEC_Android_Ads_Entry_TopRight"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_SEC_Android_Ads_Entry_TopRight:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/4 v1, 0x3

    const/16 v2, 0x515

    const-string v3, "EILOC_SEC_Iphone_Ads_Top"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_SEC_Iphone_Ads_Top:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/4 v1, 0x4

    const/16 v2, 0x1005

    const-string v3, "EILOC_PB_SymbianV3_CloudSms_Top"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_PB_SymbianV3_CloudSms_Top:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/4 v1, 0x5

    const/16 v2, 0x1036

    const-string v3, "EILOC_PB_SymbianV5_CloudSms_Top"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_PB_SymbianV5_CloudSms_Top:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/4 v1, 0x6

    const/16 v2, 0x1069

    const-string v3, "EILOC_PB_Android_Sms_Background"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_PB_Android_Sms_Background:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/4 v1, 0x7

    const/16 v2, 0x106a

    const-string v3, "EILOC_PB_Android_CloudSms_Top"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_PB_Android_CloudSms_Top:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/16 v1, 0x8

    const/16 v2, 0x10cd

    const-string v3, "EILOC_PB_Iphone_CloudSms_Top"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_PB_Iphone_CloudSms_Top:LQQPIM/EImageLocation;

    new-instance v0, LQQPIM/EImageLocation;

    const/16 v1, 0x9

    const/16 v2, 0x10ce

    const-string v3, "EILOC_End"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EImageLocation;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EImageLocation;->EILOC_End:LQQPIM/EImageLocation;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/EImageLocation;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EImageLocation;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EImageLocation;->__value:I

    sget-object v0, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EImageLocation;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EImageLocation;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EImageLocation;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EImageLocation;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EImageLocation;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EImageLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EImageLocation;->__values:[LQQPIM/EImageLocation;

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

    iget-object v0, p0, LQQPIM/EImageLocation;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EImageLocation;->__value:I

    return v0
.end method
