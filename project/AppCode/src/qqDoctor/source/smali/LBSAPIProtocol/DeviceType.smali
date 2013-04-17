.class public final LLBSAPIProtocol/DeviceType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEVICE_ANDROID:LLBSAPIProtocol/DeviceType; = null

.field public static final DEVICE_BLACKBERRY:LLBSAPIProtocol/DeviceType; = null

.field public static final DEVICE_IPHONE:LLBSAPIProtocol/DeviceType; = null

.field public static final DEVICE_S60_V3:LLBSAPIProtocol/DeviceType; = null

.field public static final DEVICE_S60_V5:LLBSAPIProtocol/DeviceType; = null

.field public static final _DEVICE_ANDROID:I = 0x1

.field public static final _DEVICE_BLACKBERRY:I = 0x5

.field public static final _DEVICE_IPHONE:I = 0x4

.field public static final _DEVICE_S60_V3:I = 0x2

.field public static final _DEVICE_S60_V5:I = 0x3

.field private static __values:[LLBSAPIProtocol/DeviceType;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, LLBSAPIProtocol/DeviceType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/DeviceType;->$assertionsDisabled:Z

    const/4 v0, 0x5

    new-array v0, v0, [LLBSAPIProtocol/DeviceType;

    sput-object v0, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    new-instance v0, LLBSAPIProtocol/DeviceType;

    const-string v3, "DEVICE_ANDROID"

    invoke-direct {v0, v2, v1, v3}, LLBSAPIProtocol/DeviceType;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/DeviceType;->DEVICE_ANDROID:LLBSAPIProtocol/DeviceType;

    new-instance v0, LLBSAPIProtocol/DeviceType;

    const-string v2, "DEVICE_S60_V3"

    invoke-direct {v0, v1, v4, v2}, LLBSAPIProtocol/DeviceType;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/DeviceType;->DEVICE_S60_V3:LLBSAPIProtocol/DeviceType;

    new-instance v0, LLBSAPIProtocol/DeviceType;

    const-string v1, "DEVICE_S60_V5"

    invoke-direct {v0, v4, v5, v1}, LLBSAPIProtocol/DeviceType;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/DeviceType;->DEVICE_S60_V5:LLBSAPIProtocol/DeviceType;

    new-instance v0, LLBSAPIProtocol/DeviceType;

    const-string v1, "DEVICE_IPHONE"

    invoke-direct {v0, v5, v6, v1}, LLBSAPIProtocol/DeviceType;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/DeviceType;->DEVICE_IPHONE:LLBSAPIProtocol/DeviceType;

    new-instance v0, LLBSAPIProtocol/DeviceType;

    const/4 v1, 0x5

    const-string v2, "DEVICE_BLACKBERRY"

    invoke-direct {v0, v6, v1, v2}, LLBSAPIProtocol/DeviceType;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/DeviceType;->DEVICE_BLACKBERRY:LLBSAPIProtocol/DeviceType;

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

    iput-object v0, p0, LLBSAPIProtocol/DeviceType;->__T:Ljava/lang/String;

    iput-object p3, p0, LLBSAPIProtocol/DeviceType;->__T:Ljava/lang/String;

    iput p2, p0, LLBSAPIProtocol/DeviceType;->__value:I

    sget-object v0, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LLBSAPIProtocol/DeviceType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LLBSAPIProtocol/DeviceType;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    sget-object v1, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LLBSAPIProtocol/DeviceType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LLBSAPIProtocol/DeviceType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LLBSAPIProtocol/DeviceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LLBSAPIProtocol/DeviceType;->__values:[LLBSAPIProtocol/DeviceType;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LLBSAPIProtocol/DeviceType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/DeviceType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/DeviceType;->__value:I

    return v0
.end method
