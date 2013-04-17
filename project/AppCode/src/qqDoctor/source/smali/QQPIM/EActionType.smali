.class public final LQQPIM/EActionType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EAT_Call:LQQPIM/EActionType; = null

.field public static final EAT_NONE:LQQPIM/EActionType; = null

.field public static final EAT_ReadContact:LQQPIM/EActionType; = null

.field public static final EAT_ReadGps:LQQPIM/EActionType; = null

.field public static final EAT_ReadIMEI:LQQPIM/EActionType; = null

.field public static final EAT_ReadIMSI:LQQPIM/EActionType; = null

.field public static final EAT_ReadLog:LQQPIM/EActionType; = null

.field public static final EAT_ReadSMS:LQQPIM/EActionType; = null

.field public static final EAT_RequestRoot:LQQPIM/EActionType; = null

.field public static final EAT_SendSMS:LQQPIM/EActionType; = null

.field public static final EAT_ShowAd:LQQPIM/EActionType; = null

.field public static final _EAT_Call:I = 0x2

.field public static final _EAT_NONE:I = 0x0

.field public static final _EAT_ReadContact:I = 0x4

.field public static final _EAT_ReadGps:I = 0x8

.field public static final _EAT_ReadIMEI:I = 0x6

.field public static final _EAT_ReadIMSI:I = 0x7

.field public static final _EAT_ReadLog:I = 0x5

.field public static final _EAT_ReadSMS:I = 0x3

.field public static final _EAT_RequestRoot:I = 0x9

.field public static final _EAT_SendSMS:I = 0x1

.field public static final _EAT_ShowAd:I = 0xa

.field private static __values:[LQQPIM/EActionType;


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

    const-class v0, LQQPIM/EActionType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EActionType;->$assertionsDisabled:Z

    const/16 v0, 0xb

    new-array v0, v0, [LQQPIM/EActionType;

    sput-object v0, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const-string v3, "EAT_NONE"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_NONE:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const-string v2, "EAT_SendSMS"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_SendSMS:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const-string v1, "EAT_Call"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_Call:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const-string v1, "EAT_ReadSMS"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_ReadSMS:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const-string v1, "EAT_ReadContact"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_ReadContact:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EAT_ReadLog"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_ReadLog:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EAT_ReadIMEI"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_ReadIMEI:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EAT_ReadIMSI"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_ReadIMSI:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EAT_ReadGps"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_ReadGps:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EAT_RequestRoot"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_RequestRoot:LQQPIM/EActionType;

    new-instance v0, LQQPIM/EActionType;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "EAT_ShowAd"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EActionType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EActionType;->EAT_ShowAd:LQQPIM/EActionType;

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

    iput-object v0, p0, LQQPIM/EActionType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EActionType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EActionType;->__value:I

    sget-object v0, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EActionType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EActionType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EActionType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EActionType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EActionType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EActionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EActionType;->__values:[LQQPIM/EActionType;

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

    iget-object v0, p0, LQQPIM/EActionType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EActionType;->__value:I

    return v0
.end method
